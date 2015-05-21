function widget:GetInfo()
  return {
    name      = "Easy mouse targeting",
    desc      = "Makes it easier to target units with attack, reclaim, capture, repair and load",
    author    = "Godde",
    date      = "Mar 17, 2015",
    license   = "No license",
	version	  = "0.01",
	layer     = 0,
    enabled   = true
  }
end

local TraceScreenRay = Spring.TraceScreenRay
local GetMouseState = Spring.GetMouseState
local GiveOrderToUnit = Spring.GiveOrderToUnit
local GetSelectedUnits = Spring.GetSelectedUnits

local target
local targetType

local commands = {}	-- list of commands with special treatment



commands.CMD_ATTACK                                                        = CMD.ATTACK
commands.CMD_CAPTURE                                                       = CMD.CAPTURE
commands.CMD_REPAIR                                                        = CMD.REPAIR
commands.CMD_LOAD                                                          = CMD.LOAD_UNITS
commands.CMD_RECLAIM                                                       = CMD.RECLAIM
--commands.CMD_RESURRECT                                                     = CMD.RESURRECT -- moving features are rare
--commands.CMD_MOVE                                                          = CMD.MOVE -- no area command
--commands.CMD_DGUN                                                          = CMD.DGUN -- no area command
--commands.CMD_AIRSTRIKE                                             = 36001 	-- custom command from XTA
--commands.CMD_GUARD                                                         = CMD.GUARD -- no area command
--commands.CMD_AREA_GUARD                                            = 14001	-- custom command from XTA
--commands.CMD_LOAD_ONTO                                                     = CMD.LOAD_ONTO -- not sure what it does
--commands.CMD_UNLOAD                                                        = CMD.UNLOAD_UNIT -- cant target unit
--commands.CMD_UNLOAD_ALL                                            = CMD.UNLOAD_UNITS -- cant target unit






function CheckCommand(number, commandList)
	for _, command in pairs(commandList) do
		if command == number then
			return true
		end
	end
	
	return false
end

function CommandOptionsFromKeyboard()
	local alt, ctrl, meta, shift = Spring.GetModKeyState(alt, ctrl, meta, shift)
	local keymod = 0
	if alt then
		keymod = keymod + CMD.OPT_ALT
	end
	if ctrl then
		keymod = keymod + CMD.OPT_CTRL
	end
	if meta then
		keymod = keymod + CMD.OPT_META
	end
	if shift then
		keymod = keymod + CMD.OPT_SHIFT
	end
	return keymod
end



function widget:MousePress(mouseX, mouseY, mouseButton) -- button parameter values: left - 1, middle - 2, 
	local mouseTargetType, mouseTarget = TraceScreenRay(mouseX, mouseY)
	target = mouseTarget
	targetType = mouseTargetType
end




function widget:CommandNotify(cmdId, cmdParams, cmdOpts)   
	if targetType == "unit"  then -- features are usually easy to target, regular area commands should be done then
		if #cmdParams==4 then -- if area command
			if CheckCommand(cmdId, commands)  then -- check if the command matches commandslist
				local mx, my = GetMouseState()
				local mouseTargetType, mouseTarget = TraceScreenRay(mx, my)
				if mouseTarget == target then				
					for _,unitID in pairs(GetSelectedUnits()) do
						GiveOrderToUnit (unitID, cmdId, {mouseTarget}, cmdOpts)
					end
					return true
				end
			end

		end
   end   

   return false
end