function widget:GetInfo()
	return {
		name		= "command list window",
		desc		= "ChiliUi window that contains all the commands a unit has",
		author		= "Sunspot",
		date		= "2011-06-15",
		license		= "GNU GPL v2",
		layer		= math.huge,
		enabled		= true,
		handler		= true,
	}
end
-- INCLUDES
VFS.Include("LuaRules/Gadgets/Includes/utilities.lua")

-- CONSTANTS

local DEBUG = false

local MAXBUTTONSONROW = 3
local MAXBUTTONSONROWBUILD = 4

local COMMANDSTOEXCLUDE = {"timewait","deathwait","squadwait","gatherwait","loadonto","nextmenu","prevmenu"}

local Chili

-- MEMBERS

local screenWidth,screenHeight = Spring.GetWindowGeometry()

local x
local y

local imageDir = 'LuaUI/Images/commands/'

local commandWindow
local stateCommandWindow
local buildCommandWindow


local updateRequired = true

-- CONTROLS
local spGetActiveCommand	= Spring.GetActiveCommand
local spGetActiveCmdDesc	= Spring.GetActiveCmdDesc
local spGetSelectedUnits	= Spring.GetSelectedUnits
local spSendCommands		= Spring.SendCommands


-- SCRIPT FUNCTIONS

local function UpdateFactoryBuildQueue(id,cmdid) 
	local buildQueue = Spring.GetFullBuildQueue(id)
	local buildQueueUnsorted = {}
	local count = ''
	for i=1, #buildQueue do
		for udid, count in pairs(buildQueue[i]) do
			buildQueueUnsorted[udid] = (buildQueueUnsorted[udid] or 0) + count
			if udid == -cmdid then
				count = buildQueueUnsorted[udid]
				return count
			end
		end
	end
	count = ''
	return count
end

function LayoutHandler(xIcons, yIcons, cmdCount, commands)
	widgetHandler.commands   = commands
	widgetHandler.commands.n = cmdCount
	widgetHandler:CommandsChanged()
	local reParamsCmds = {}
	local customCmds = {}

	return "", xIcons, yIcons, {}, customCmds, {}, {}, {}, {}, reParamsCmds, {[1337]=9001}
end

function ClickFunc(chiliButton, x, y, button, mods) 
	local index = Spring.GetCmdDescIndex(chiliButton.cmdid)
	if (index) then
		local left, right = (button == 1), (button == 3)
		local alt, ctrl, meta, shift = mods.alt, mods.ctrl, mods.meta, mods.shift

		if DEBUG then Spring.Echo("active command set to ", chiliButton.cmdid) end
		Spring.SetActiveCommand(index, button, left, right, alt, ctrl, meta, shift)
	end
end

-- Returns the caption, parent container and commandtype of the button	
function findButtonData(cmd)
	local isState = (cmd.type == CMDTYPE.ICON_MODE and #cmd.params > 1)
	local isBuild = (cmd.id < 0)
	local buttontext = ""
	local container
	local texture = nil
	if not isState and not isBuild then
		buttontext = cmd.name
		container = commandWindow
	elseif isState then
		local indexChoice = cmd.params[1] + 2
		buttontext = cmd.params[indexChoice]
		container = stateCommandWindow
	else
		container = buildCommandWindow
		texture = '#'..-cmd.id
	end
	return buttontext, container, isState, isBuild, texture	
end

function createMyButton(cmd, buildid)
	if(type(cmd) == 'table')then
		buttontext, container, isState, isBuild, texture = findButtonData(cmd)
		buildings, isFactory = filterFactory(buildid)
		--Spring.Echo(buildings[1],isFactory)
		if not isBuild then
			local result = container.xstep % MAXBUTTONSONROW
			container.xstep = container.xstep + 1
			local increaseRow = false
			if(result==0)then
				result = MAXBUTTONSONROW
				increaseRow = true
			end
			
			
			local color = {0,0,0,1}
			local button = Chili.Button:New {
				parent = container,
				x = 80 * (result-1),
				y = 45 * (container.ystep-1),
				padding = {5, 5, 5, 5},
				margin = {5, 5, 5, 5},
				minWidth = 70,
				minHeight = 40,
				caption = buttontext,
				isDisabled = false,
				cmdid = cmd.id,
				OnClick = {ClickFunc},
			}
			
			if texture then
				if DEBUG then Spring.Echo("texture",texture) end
				button:Resize(96,96)
				image= Chili.Image:New {
					width="100%";
					height="90%";
					y="6%";
					keepAspect = true,	--isState;
					file = texture;
					parent = button;
				}		
			end
			
			if(increaseRow)then
				container.ystep = container.ystep+1
			end
		
		elseif isBuild then
			
			local tooltip = "Build Unit: " .. UnitDefs[-cmd.id].humanName .. " - " .. UnitDefs[-cmd.id].tooltip .. "\n"
			--Spring.Echo(tooltip)
			local countText = ''
			if isFactory then
				countText = UpdateFactoryBuildQueue(buildings[1],cmd.id)
			end
			
			local result = container.xstep % MAXBUTTONSONROWBUILD
			container.xstep = container.xstep + 1
			local increaseRow = false
			if(result==0)then
				result = MAXBUTTONSONROWBUILD
				increaseRow = true
			end
			
			
			local color = {0,0,0,1}
			local button = Chili.Button:New {
				name = UnitDefs[-cmd.id],
				tooltip = tooltip,
				parent = container,
				x = 96 * (result-1),
				y = 96 * (container.ystep-1),
				padding = {5, 5, 5, 5},
				margin = {0, 0, 0, 0},
				minWidth = 40,
				minHeight = 40,
				caption = buttontext,
				isDisabled = false,
				cmdid = cmd.id,
				OnClick = {ClickFunc},
			}
			--countText = tostring(buildQueueUnsorted[-cmd.id])
			if(countText == 'nil') then countText = '' end
			local label = Chili.Label:New{
				parent = button,
				right = 0;
				y = 5;
				x = 5;
				bottom = 3;
				autosize=false;
				align="right";
				valign="bottom";
				caption = string.format("%s ", countText);
				fontSize = 18;
				fontShadow = true;
			}
			
			local nameLabel = Chili.Label:New {
				parent = button,
				right = 0;
				y = 5;
				x = 5;
				bottom = 3;
				autosize=false;
				align="left";
				valign="top";
				caption = string.format("%s ", UnitDefs[-cmd.id].humanName);
				fontSize = 18;
				fontShadow = true;
			}
			local costLabel = Chili.Label:New {
				parent = button,
				right = 0;
				y = 2;
				x = 5;
				bottom = 3;
				autosize=false;
				align="left";
				valign="bottom";
				caption = string.format("%d m", UnitDefs[-cmd.id].metalCost);
				fontSize = 14;
				fontShadow = true;
			}
			if texture then
				if DEBUG then Spring.Echo("texture",texture) end
				button:Resize(96,96)
				image= Chili.Image:New {
					width="100%";
					height="90%";
					y="6%";
					keepAspect = true,	--isState;
					file = texture;
					parent = button;
				}		
			end
			
			if(increaseRow)then
				container.ystep = container.ystep+1
			end
		end
	end
end

function filterUnwanted(commands)
	local uniqueList = {}
	if DEBUG then Spring.Echo("Total commands ", #commands) end
	if not(#commands == 0)then
		j = 1
		for _, cmd in ipairs(commands) do
			if DEBUG then Spring.Echo("Adding command ", cmd.action) end
			if not table.contains(COMMANDSTOEXCLUDE,cmd.action) then
				uniqueList[j] = cmd
				j = j + 1
			end
		end
	end
	return uniqueList
end

function filterFactory(selection)
	local selectedFac = {}
	if DEBUG then Spring.Echo("Total selection ", #selection) end
	for i=1,#selection do
		local buildid = selection[i]
		if UnitDefs[Spring.GetUnitDefID(buildid)].isFactory then
			selectedFac[i] = buildid
			return selectedFac ,true
		else
			return selectedFac ,false
		end
	end
end

function resetWindow(container)
	container:ClearChildren()
	container.xstep = 1
	container.ystep = 1
end

function loadPanel()
	resetWindow(commandWindow)
	resetWindow(stateCommandWindow)
	resetWindow(buildCommandWindow)
	
	--Spring.Echo("Seleccion")
	
	--Queue Management
	local newSelection = Spring.GetSelectedUnits()
	--
	
	local commands = Spring.GetActiveCmdDescs()
	commands = filterUnwanted(commands)
	table.sort(commands,function(x,y) return x.action < y.action end)
	for cmdid, cmd in pairs(commands) do
		rowcount = createMyButton(commands[cmdid], newSelection) 
	end
end


-- WIDGET CODE
function widget:Initialize()
	widgetHandler:ConfigLayoutHandler(LayoutHandler)
	Spring.ForceLayoutUpdate()
	Spring.SetDrawSelectionInfo( false ) --disables springs default display of selected units count
	spSendCommands({"tooltip 0"})
	
	if (not WG.Chili) then
		widgetHandler:RemoveWidget()
		return
	end
	
	Chili = WG.Chili
	local screen0 = Chili.Screen0
	
	commandWindow = Chili.Control:New{
		x = 0,
		y = 0,
		width = "100%",
		height = "100%",
		xstep = 1,
		ystep = 1,
		draggable = false,
		resizable = false,
		dragUseGrip = false,
		children = {},
	}

	stateCommandWindow = Chili.Control:New{
		x = 0,
		y = 0,
		width = "100%",
		height = "100%",
		xstep = 1,
		ystep = 1,
		draggable = false,
		resizable = false,
		dragUseGrip = false,
		children = {},
	}	

	buildCommandWindow = Chili.Control:New{
		x = 0,
		y = 0,
		width = "100%",
		height = "100%",
		xstep = 1,
		ystep = 1,
		draggable = false,
		resizable = false,
		dragUseGrip = false,
		children = {},
	}		
	
	window0 = Chili.Window:New{
		x = 10,
		y = screenHeight-620,	
		dockable = false,
		parent = screen0,
		caption = "Commands",
		draggable = false,
		resizable = false,
		dragUseGrip = false,
		clientWidth = 240,
		clientHeight = 180,
		backgroundColor = {0,0,0,1},
		--skinName  = "DarkGlass",
		children = {commandWindow},
	}
	window1 = Chili.Window:New{
		x = 10,
		y = screenHeight-400,
		dockable = false,
		parent = screen0,
		caption = "States",
		draggable = false,
		resizable = false,
		dragUseGrip = false,
		clientWidth = 240,
		clientHeight = 120,
		backgroundColor = {0,0,0,1},
		--skinName  = "DarkGlass",
		children = {stateCommandWindow},
	}
	window2 = Chili.Window:New{
		x = 10,
		y = screenHeight-240,
		dockable = false,
		parent = screen0,
		caption = "Construction",
		draggable = false,
		resizable = false,
		dragUseGrip = false,
		clientWidth = 400,
		clientHeight = 200,
		backgroundColor = {0,0,0,1},
		--skinName  = "DarkGlass",
		children = {buildCommandWindow},
	}
end

function widget:CommandsChanged()
	if DEBUG then Spring.Echo("commandChanged called") end
	updateRequired = true
	
end

function widget:DrawScreen()
	if updateRequired then
		updateRequired = false
		loadPanel()
	end
end

function widget:Shutdown()
	widgetHandler:ConfigLayoutHandler(nil)
	Spring.ForceLayoutUpdate()
	Spring.SetDrawSelectionInfo( true ) --enable springs default display of selected units count
	spSendCommands({"tooltip 1"})
end
