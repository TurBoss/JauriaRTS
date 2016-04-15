--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
function widget:GetInfo()
  return {
    name      = "Map Edge Extension",
    version   = "v0.5",
    desc      = "Draws a mirrored map next to the edges of the real map",
    author    = "Pako",
    date      = "2010.10.27 - 2011.10.29", --YYYY.MM.DD, created - updated
    license   = "GPL",
    layer     = 0,
    enabled   = true,
    --detailsDefault = 3
  }
end
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
local spGetGroundHeight = Spring.GetGroundHeight
local spTraceScreenRay = Spring.TraceScreenRay
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
local realTex = '$grass'

local dList
local mirrorShader

local umirrorX
local umirrorZ
local ulengthX
local ulengthZ
local uup
local uleft
local ugrid
local ubrightness

local island = nil -- Later it will be checked and set to true of false
local drawingEnabled = true

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------

local USE_SHADER = true
local GRID_SIZE = 32
local TEXTURE_BRIGHTNESS = 0.5
local CURVATURE = false

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------

local shaderTable
local function SetupShaderTable()
  shaderTable = {
	  uniform = {
		mirrorX = 0,
		mirrorZ = 0,
		lengthX = 0,
		lengthZ = 0,
		tex0 = 0,
		up = 0,
		left = 0,
		grid = 0,
		brightness = 1.0,
	  },
	  vertex = (CURVATURE and "#define curvature \n" or '')
		.. [[
		// Application to vertex shader
		uniform float mirrorX;
		uniform float mirrorZ;
		uniform float lengthX;
	  uniform float lengthZ;
		uniform float left;
		uniform float up;
		uniform float brightness;

		varying vec4 vertex;
		varying vec4 color;
  
		void main()
		{
		gl_TexCoord[0]= gl_TextureMatrix[0]*gl_MultiTexCoord0;
		gl_Vertex.x = abs(mirrorX-gl_Vertex.x);
		gl_Vertex.z = abs(mirrorZ-gl_Vertex.z);
		
		float alpha = 1.0;
		#ifdef curvature
		  if(mirrorX)gl_Vertex.y -= pow(abs(gl_Vertex.x-left*mirrorX)/150.0, 2.0);
		  if(mirrorZ)gl_Vertex.y -= pow(abs(gl_Vertex.z-up*mirrorZ)/150.0, 2.0);
		  alpha = 0.0;
			if(mirrorX) alpha -= pow(abs(gl_Vertex.x-left*mirrorX)/lengthX, 2.0);
			if(mirrorZ) alpha -= pow(abs(gl_Vertex.z-up*mirrorZ)/lengthZ, 2.0);
			alpha = 1.0 + (6.0 * (alpha + 0.18));
		#endif
  
		float ff = 20000.0;
		if((mirrorZ && mirrorX))
		  ff=ff/(pow(abs(gl_Vertex.z-up*mirrorZ)/150.0, 2.0)+pow(abs(gl_Vertex.x-left*mirrorX)/150.0, 2.0)+2.0);
		else if(mirrorX)
		  ff=ff/(pow(abs(gl_Vertex.x-left*mirrorX)/150.0, 2.0)+2.0);
		else if(mirrorZ)
		  ff=ff/(pow(abs(gl_Vertex.z-up*mirrorZ)/150.0, 2.0)+2.0);
  
		gl_Position  = gl_ModelViewProjectionMatrix*gl_Vertex;
		//gl_Position.z+ff;
		
		#ifdef edgeFog
		  gl_FogFragCoord = length((gl_ModelViewMatrix * gl_Vertex).xyz)+ff; //see how Spring shaders do the fog and copy from there to fix this
		#endif
		
		gl_FrontColor = vec4(brightness * gl_Color.rgb, alpha);

		color = gl_FrontColor;
		vertex = gl_Vertex;
		}
	  ]],
	 --  fragment = [[
	 --  uniform float mirrorX;
	 --  uniform float mirrorZ;
	 --  uniform float lengthX;
	 --  uniform float lengthZ;
		-- uniform float left;
		-- uniform float up;
		-- uniform int grid;
		-- uniform sampler2D tex0;

		-- varying vec4 vertex;
		-- varying vec4 color;

		-- void main()
		-- {
		-- 	float alpha = 0.0;
		-- 	if(mirrorX) alpha -= pow(abs(vertex.x-left*mirrorX)/lengthX, 2);
		-- 	if(mirrorZ) alpha -= pow(abs(vertex.z-up*mirrorZ)/lengthZ, 2);
		-- 	alpha = 1.0 + (4.0 * (alpha + 0.28));
		-- 	gl_FragColor = vec4(mix(gl_Fog.color, color.rgb, clamp((gl_Fog.end - gl_FogFragCoord) * gl_Fog.scale, 0.0, 1.0)), clamp(alpha, 0.0, 1.0)) * texture2D(tex0, gl_TexCoord[0].xy);
		-- }
	 --  ]],
  }
end


local function GetGroundHeight(x, z)
	return spGetGroundHeight(x,z)
end

local function IsIsland()
	local sampleDist = 512
	for i=1,Game.mapSizeX,sampleDist do
		-- top edge
		if GetGroundHeight(i, 0) > 0 then
			return false
		end
		-- bottom edge
		if GetGroundHeight(i, Game.mapSizeZ) > 0 then
			return false
		end
	end
	for i=1,Game.mapSizeZ,sampleDist do
		-- left edge
		if GetGroundHeight(0, i) > 0 then
			return false
		end
		-- right edge
		if GetGroundHeight(Game.mapSizeX, i) > 0 then
			return false
		end	
	end
	return true
end

local function DrawMapVertices(useMirrorShader)

	local floor = math.floor
	local ceil = math.ceil
	local abs = math.abs

	gl.Color(1,1,1,1)

	local function doMap(dx,dz,sx,sz)
		local Scale = GRID_SIZE
		local sggh = Spring.GetGroundHeight
		local Vertex = gl.Vertex
		local glColor = gl.Color
		local TexCoord = gl.TexCoord
		local Normal = gl.Normal
		local GetGroundNormal = Spring.GetGroundNormal
		local mapSizeX, mapSizeZ = Game.mapSizeX, Game.mapSizeZ
	
		local sten = {0, floor(Game.mapSizeZ/Scale)*Scale, 0}--do every other strip reverse
		local xm0, xm1 = 0, 0
		local xv0, xv1 = 0,math.abs(dx)+sx
		local ind = 0
		local zv
		local h

		if not useMirrorShader then
		gl.TexCoord(0, sten[2]/Game.mapSizeZ)
		Vertex(xv1, sggh(0,sten[2]),abs(dz+sten[2])+sz)--start and end with a double vertex
		end
	
		for x=0,Game.mapSizeX-Scale,Scale do
			xv0, xv1 = xv1, abs(dx+x+Scale)+sx
			xm0, xm1 = xm1, xm1+Scale
			ind = (ind+1)%2
			for z=sten[ind+1], sten[ind+2], (1+(-ind*2))*Scale do
				zv = abs(dz+z)+sz
				TexCoord(xm0/mapSizeX, z/mapSizeZ)
       -- Normal(GetGroundNormal(xm0,z))
        h = sggh(xm0,z)
				Vertex(xv0,h,zv)
				TexCoord(xm1/mapSizeX, z/mapSizeZ)
        --Normal(GetGroundNormal(xm1,z))
				h = sggh(xm1,z)
				Vertex(xv1,h,zv)
			end
		end
		if not useMirrorShader then
			Vertex(xv1,h,zv)
		end
	end

	if useMirrorShader then
		doMap(0,0,0,0)
	else
		doMap(-Game.mapSizeX,-Game.mapSizeZ,-Game.mapSizeX,-Game.mapSizeZ)
		doMap(0,-Game.mapSizeZ,0,-Game.mapSizeZ)
		doMap(-Game.mapSizeX,-Game.mapSizeZ,Game.mapSizeX,-Game.mapSizeZ)
	
		doMap(-Game.mapSizeX,0,-Game.mapSizeX,0)
		doMap(-Game.mapSizeX,0,Game.mapSizeX,0)
	
		doMap(-Game.mapSizeX,-Game.mapSizeZ,-Game.mapSizeX,Game.mapSizeZ)
		doMap(0,-Game.mapSizeZ,0,Game.mapSizeZ)
		doMap(-Game.mapSizeX,-Game.mapSizeZ,Game.mapSizeX,Game.mapSizeZ)
	end
end

local function DrawOMap(useMirrorShader)
	gl.Blending(GL.SRC_ALPHA,GL.ONE_MINUS_SRC_ALPHA)
	gl.DepthTest(GL.LEQUAL) 
		gl.Texture(realTex)
	gl.BeginEnd(GL.TRIANGLE_STRIP,DrawMapVertices, useMirrorShader)
	gl.DepthTest(false)
	gl.Color(1,1,1,1)
	gl.Blending(GL.SRC_ALPHA,GL.ONE_MINUS_SRC_ALPHA)
	
	----draw map compass text
	gl.PushAttrib(GL.ALL_ATTRIB_BITS)
	gl.Texture(false)
	gl.DepthMask(false)
	gl.DepthTest(false)
	gl.Color(1,1,1,1)
	gl.PopAttrib()
	----	
end

function widget:Initialize()
	
	if not drawingEnabled then
		return
	end
	
	--Spring.SendCommands("mapborder 0")
	
	if island == nil then
		island = IsIsland()
	end

	SetupShaderTable()
	Spring.SendCommands("luaui disablewidget External VR Grid")
	if gl.CreateShader and USE_SHADER then
		mirrorShader = gl.CreateShader(shaderTable)
		if (mirrorShader == nil) then
			Spring.Log(widget:GetInfo().name, LOG.ERROR, "Map Edge Extension widget: mirror shader error: "..gl.GetShaderLog())
		end
	end
	if not mirrorShader then
		widget.DrawWorldPreUnit = function()
			gl.DepthMask(true)
			--gl.Texture(tex)
			gl.CallList(dList)
			gl.Texture(false)
		end
	else
		umirrorX = gl.GetUniformLocation(mirrorShader,"mirrorX")
		umirrorZ = gl.GetUniformLocation(mirrorShader,"mirrorZ")
		ulengthX = gl.GetUniformLocation(mirrorShader,"lengthX")
		ulengthZ = gl.GetUniformLocation(mirrorShader,"lengthZ")
		uup = gl.GetUniformLocation(mirrorShader,"up")
		uleft = gl.GetUniformLocation(mirrorShader,"left")
		ugrid = gl.GetUniformLocation(mirrorShader,"grid")
		ubrightness = gl.GetUniformLocation(mirrorShader,"brightness")
	end
	dList = gl.CreateList(DrawOMap, mirrorShader)
	--Spring.SetDrawGround(false)
end

function widget:Shutdown()
	--Spring.SetDrawGround(true)
	gl.DeleteList(dList)
	if mirrorShader then
		gl.DeleteShader(mirrorShader)
	end
end

local function DrawWorldFunc() --is overwritten when not using the shader

	local glTranslate = gl.Translate
	local glUniform = gl.Uniform
	local GamemapSizeZ, GamemapSizeX = Game.mapSizeZ,Game.mapSizeX
	
	gl.Fog(true)
	gl.FogCoord(1)
	gl.UseShader(mirrorShader)
	gl.PushMatrix()
	gl.DepthMask(true)
		gl.Texture(realTex)
		glUniform(ubrightness, TEXTURE_BRIGHTNESS)
		glUniform(ugrid, 0)
	if wiremap then
		gl.PolygonMode(GL.FRONT_AND_BACK, GL.LINE)
	end
	glUniform(umirrorX, GamemapSizeX)
	glUniform(umirrorZ, GamemapSizeZ)
	glUniform(ulengthX, GamemapSizeX)
	glUniform(ulengthZ, GamemapSizeZ)
	glUniform(uleft, 1)
	glUniform(uup, 1)
	glTranslate(-GamemapSizeX,0,-GamemapSizeZ)
	gl.CallList(dList)
	glUniform(uleft , 0)
	glTranslate(GamemapSizeX*2,0,0)
	gl.CallList(dList)
	gl.Uniform(uup, 0)
	glTranslate(0,0,GamemapSizeZ*2)
	gl.CallList(dList)
	glUniform(uleft, 1)
	glTranslate(-GamemapSizeX*2,0,0)
	gl.CallList(dList)
	
	glUniform(umirrorX, 0)
	glTranslate(GamemapSizeX,0,0)
	gl.CallList(dList)
	glUniform(uleft, 0)
	glUniform(uup, 1)
	glTranslate(0,0,-GamemapSizeZ*2)
	gl.CallList(dList)
	
	glUniform(uup, 0)
	glUniform(umirrorZ, 0)
	glUniform(umirrorX, GamemapSizeX)
	glTranslate(GamemapSizeX,0,GamemapSizeZ)
	gl.CallList(dList)
	glUniform(uleft, 1)
	glTranslate(-GamemapSizeX*2,0,0)
	gl.CallList(dList)
	if wiremap then
		gl.PolygonMode(GL.FRONT_AND_BACK, GL.FILL)
	end
	gl.DepthMask(false)
	gl.Texture(false)
	gl.PopMatrix()
	gl.UseShader(0)
	
	gl.Fog(false)
end

function widget:DrawWorldPreUnit()
	if drawingEnabled then
		DrawWorldFunc()
	end
end
function widget:DrawWorldRefraction()
	if drawingEnabled then
		DrawWorldFunc()
	end
end

function widget:MousePress(x, y, button)
	local _, mpos = spTraceScreenRay(x, y, true) --//convert UI coordinate into ground coordinate.
	if mpos==nil then --//activate epic menu if mouse position is outside the map
		local _, _, meta, _ = Spring.GetModKeyState()
		if meta then  --//show epicMenu when user also press the Spacebar
			WG.crude.OpenPath(options_path) --click + space will shortcut to option-menu
			WG.crude.ShowMenu() --make epic Chili menu appear.
			return false
		end
	end
end
