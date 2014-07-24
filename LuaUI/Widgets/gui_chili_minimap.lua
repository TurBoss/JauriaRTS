function widget:GetInfo()
  return {
    name      = "BAR's Minimap",
    desc      = "Chili Minimap",
    author    = "Licho, CarRepairer, Funkencool",
    date      = "@2010",
    license   = "GNU GPL, v2 or later",
    layer     = 1,
    enabled   = false,
  }
end


local minimap
local Chili
local glDrawMiniMap = gl.DrawMiniMap
local glResetState = gl.ResetState
local glResetMatrices = gl.ResetMatrices


local tabbedMode = false

local function MakeMinimapWindow()
   
   if (minimap) then
      minimap:Dispose()
   end

   local aspect = Game.mapX/Game.mapY
   local h = Chili.Screen0.height * 0.3
   local w = h * aspect
   
   if (aspect > 1) then
      w = h * aspect^0.5
      h = w / aspect
   end
   
   minimap = Chili.Window:New{
      name    = "Minimap",
      parent  = Chili.Screen0,
      resizable = false,
      width   = w,
      height  = h,
      x       = 10,
      top     = 0,
      padding = {5,5,5,5},
      margin  = {0,0,0,0},
   }
   
end

function widget:KeyRelease(key, mods, label, unicode)
   if key == 0x009 then --// "0x009" is equal to "tab". Reference: uikeys.txt
      local mode = Spring.GetCameraState()["mode"]
      if mode == 7 and not tabbedMode then
         minimap:Hide()
         tabbedMode = true
      end
      if mode ~= 7 and tabbedMode then
         minimap:Show()
         tabbedMode = false
      end
   end
end

function widget:ViewResize(vsx, vsy)
   MakeMinimapWindow()
end

function widget:Initialize()
   
   if (Spring.GetMiniMapDualScreen()) then
      Spring.Echo("ChiliMinimap: auto disabled (DualScreen is enabled).")
      widgetHandler:RemoveWidget()
      return
   end

   if (not WG.Chili) then
      widgetHandler:RemoveWidget()
      return
   end
   
   Chili = WG.Chili
   
   MakeMinimapWindow()
   
   gl.SlaveMiniMap(true)
end

function widget:Shutdown()
   --// reset engine default minimap rendering
   gl.SlaveMiniMap(false)
   Spring.SendCommands("minimap geo " .. Spring.GetConfigString("MiniMapGeometry"))

   --// free the chili window
   if (minimap) then
      minimap:Dispose()
   end
end


local lx, ly, lw, lh

function widget:DrawScreen()
   
   if (minimap.hidden) then
      gl.ConfigMiniMap(0,0,0,0) --// a phantom map still clickable if this is not present.
      return
   else
      local vsx,vsy = gl.GetViewSizes()
      local cx,cy,cw,ch = Chili.unpack4(minimap.clientArea)
      cx,cy = minimap:LocalToScreen(cx,cy)
      gl.ConfigMiniMap(cx,vsy-ch-cy,cw,ch)      
   end


   gl.PushAttrib(GL.ALL_ATTRIB_BITS)
   gl.MatrixMode(GL.PROJECTION)
   gl.PushMatrix()
   gl.MatrixMode(GL.MODELVIEW)
   gl.PushMatrix()
   
   glDrawMiniMap()
   
   gl.MatrixMode(GL.PROJECTION)
   gl.PopMatrix()
   gl.MatrixMode(GL.MODELVIEW)
   gl.PopMatrix()
   gl.PopAttrib()
end 
