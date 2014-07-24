function widget:GetInfo()
	return {
		name		= "unit preview spawner",
		desc		= "spawns units going through a list.",
		author		= "Smoth",
		date		= "7/12/2014",
		license		= "PD",
		layer		= 5,
		enabled		= true  -- loaded by default?
	}
end

-- because pako gets pissed about this. That is right,
-- I am writing that part JUST because it annoys you pako
local spGetViewGeometry	= Spring.GetViewGeometry
local spSendLuaRulesMsg	= Spring.SendLuaRulesMsg

-- mad yet pako?
local screenSizeX, screenSizeY	= spGetViewGeometry()
local Chili
local black	= {0.1, 0.1, 0.1, 1.0}
local grey	= {0.5, 0.5, 0.5, 1.0}
local white	= {1.0, 1.0, 1.0, 1.0}
local red	= {0.8, 0.0, 0.0, 1.0}

-- chili object names
local spawnerWindow, spawnerScroll

-- table to store all the unit buttons
local unitSpawnButtons = {}

local currentUnitDefId	= 1
local lastUnitDefId		= "priming run"
local recentlySelected	= false
-- handles current and last unit defid
local function NextUnit(unitDef)
	if lastUnitDefId ~= currentUnitDefId then
		unitSpawnButtons[currentUnitDefId].children[1].color = white
		unitSpawnButtons[currentUnitDefId].children[1]:Invalidate()
		if lastUnitDefId ~= "priming run" then
			unitSpawnButtons[lastUnitDefId].children[1].color = grey
			unitSpawnButtons[lastUnitDefId].children[1]:Invalidate()
		end
		lastUnitDefId		= currentUnitDefId
		recentlySelected	= true
	end
end

local function CreateWindows()
	spawnerWindow	= Chili.Window:New{
		parent		= Chili.Screen0;
		name		= "unit cheat list parent";
		right		= 0;
		y			= "25%";
		width		= "25%";
		height		= "70%";
		dockable	= false;
		draggable	= false;
		resizable	= false;
		padding		= {2,2,2,2};
		children	= {
			Chili.Label:New{
				caption	= "Choose your unit to spawn";
				y		= "2%";
				x		= "7.5%";
				fontsize = math.floor(screenSizeX/75);
			},
		},
	}
	
	spawnerScroll	= Chili.ScrollPanel:New{
		parent		= spawnerWindow;
		name		= "unit cheat list scroll panel";
		padding 	= {10,10,10,10};
		x			= "2.5%";
		y			= "16%";
		width		= "95%";
		height		= "83%";
		dockable	= false;
		draggable	= false;
		resizable	= false;
	}
end

local function BuildUnitButtons()
	local colorCollumns	= 100
	local colCount		= 0
	local counterY		= 0
	local counterX		= 0
	local basesize		= screenSizeX/22
	local textSize		= math.floor(screenSizeX/120)
	
	for unitDefId,unitDef in pairs(UnitDefs) do
		local gridXPos		=	screenSizeX/ 19 * counterX
		local gridYPos		=	screenSizeX/ 19 * counterY
		unitSpawnButtons[unitDefId]	= Chili.Button:New{
				parent				= spawnerScroll;	
				tooltip				= unitDef.humanName or "";
				caption				= unitDef.name or "";
				x					= gridXPos;
				y					= gridYPos;
				width				= basesize;
				height				= basesize;
				fontsize			= textSize;
				OnMouseUp = { 
					function()
						currentUnitDefId	= unitDefId
						spSendLuaRulesMsg('selectspawerunit' .. unitDefId)
						NextUnit(unitDef)
					end
				};
				children = {
					Chili.Image:New{
						file	= ":cl:UnitPics/" .. unitDef.buildpicname;
						color	= grey;
						x		= 0;
						y		= 0;
						width	= "100%";  
						height	= "100%";
					}
				};
			}
		counterX = counterX + 1
		if(math.floor(counterX/4) == 1) then
			counterY = counterY + 1
			counterX = 0
		end	
	end
	
end

function widget:MousePress(mouseX, mouseY, mButton)
	if recentlySelected	== true then
		local _, location = Spring.TraceScreenRay(mouseX, mouseY)
		if location ~= nil and type(location) == "table" then
			locationString = table.concat(location,",")

			spSendLuaRulesMsg('createunitlocation' .. locationString)

			recentlySelected	= false
			
			unitSpawnButtons[lastUnitDefId].children[1].color = grey
			unitSpawnButtons[lastUnitDefId].children[1]:Invalidate()
			lastUnitDefId		= "priming run"
		end
	end
end


function widget:Initialize()
	Chili = WG.Chili
	
	if (not Chili) then
		widgetHandler:RemoveWidget()
		return
	end
	
	CreateWindows()
	BuildUnitButtons()
end	
