
--------------------------------------------------------------------------------
-- pieces
--------------------------------------------------------------------------------

local root = piece "root"
local base = piece "base"
local piei = piece "piei"
local pied = piece "pied"
local hombros = piece "hombros"
local caderas = piece "caderas"
local piernad = piece "piernad"
local piernai = piece "piernai"

--pieces used by the weapon:

local flare1i = piece "flare1i"
local flare1d = piece "flare1d"
local flare2i = piece "flare2i"
local flare2d = piece "flare2d"
local flare3i = piece "flare3i"
local flare3d = piece "flare3d"


local misil1i = piece "misil1i"
local misil1d = piece "misil1d"
local misil2i = piece "misil2i"
local misil2d = piece "misil2d"
local misil3i = piece "misil3i"
local misil3d = piece "misil3d"

--------------------------------------------------------------------------------
-- constants
--------------------------------------------------------------------------------

local SIG_WALK = 1
local SIG_AIM1 = 2
local SIG_AIM2 = 4

--------------------------------------------------------------------------------
-- vars
--------------------------------------------------------------------------------

local isMoving, isShooting = false, false

local active_barrel1 = 1		--the barrel that the next shot will be fired from
local active_barrel2 = 1		--the barrel that the next shot will be fired from

local number_of_barrels = 3		--how many barrel there are in total

local wheel_speed = math.rad(180)

local smoke = SFX.CEG

--------------------------------------------------------------------------------
-- tables
--------------------------------------------------------------------------------

local Animations = {};

Animations['resetAnimation'] = {
	{
		['time'] = 0,
		['commands'] = {
			{['c']='turn',['p']=piernad, ['a']=x_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=piernad, ['a']=y_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=piernad, ['a']=z_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='move',['p']=piernad, ['a']=x_axis, ['t']=-6.848345, ['s']=6.000000},
			{['c']='move',['p']=piernad, ['a']=y_axis, ['t']=-2.705782, ['s']=6.000000},
			{['c']='move',['p']=piernad, ['a']=z_axis, ['t']=18.036428, ['s']=6.000000},
			{['c']='turn',['p']=misil1d, ['a']=x_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=misil1d, ['a']=y_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=misil1d, ['a']=z_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='move',['p']=misil1d, ['a']=x_axis, ['t']=-13.833470, ['s']=6.000000},
			{['c']='move',['p']=misil1d, ['a']=y_axis, ['t']=-2.879540, ['s']=6.000000},
			{['c']='move',['p']=misil1d, ['a']=z_axis, ['t']=41.050724, ['s']=6.000000},
			{['c']='turn',['p']=base, ['a']=x_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=base, ['a']=y_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=base, ['a']=z_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='move',['p']=base, ['a']=x_axis, ['t']=0.114615, ['s']=6.000000},
			{['c']='move',['p']=base, ['a']=y_axis, ['t']=-6.979334, ['s']=6.000000},
			{['c']='move',['p']=base, ['a']=z_axis, ['t']=28.330235, ['s']=6.000000},
			{['c']='turn',['p']=misil2i, ['a']=x_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=misil2i, ['a']=y_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=misil2i, ['a']=z_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='move',['p']=misil2i, ['a']=x_axis, ['t']=16.600565, ['s']=6.000000},
			{['c']='move',['p']=misil2i, ['a']=y_axis, ['t']=-3.109591, ['s']=6.000000},
			{['c']='move',['p']=misil2i, ['a']=z_axis, ['t']=40.801071, ['s']=6.000000},
			{['c']='turn',['p']=flare1d, ['a']=x_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=flare1d, ['a']=y_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=flare1d, ['a']=z_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='move',['p']=flare1d, ['a']=x_axis, ['t']=-13.833465, ['s']=6.000000},
			{['c']='move',['p']=flare1d, ['a']=y_axis, ['t']=-2.879537, ['s']=6.000000},
			{['c']='move',['p']=flare1d, ['a']=z_axis, ['t']=41.050724, ['s']=6.000000},
			{['c']='turn',['p']=caderas, ['a']=x_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=caderas, ['a']=y_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=caderas, ['a']=z_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='move',['p']=caderas, ['a']=x_axis, ['t']=0.169184, ['s']=6.000000},
			{['c']='move',['p']=caderas, ['a']=y_axis, ['t']=-3.772745, ['s']=6.000000},
			{['c']='move',['p']=caderas, ['a']=z_axis, ['t']=17.280390, ['s']=6.000000},
			{['c']='turn',['p']=piei, ['a']=x_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=piei, ['a']=y_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=piei, ['a']=z_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='move',['p']=piei, ['a']=x_axis, ['t']=-13.876249, ['s']=6.000000},
			{['c']='move',['p']=piei, ['a']=y_axis, ['t']=-0.134956, ['s']=6.000000},
			{['c']='move',['p']=piei, ['a']=z_axis, ['t']=4.660145, ['s']=6.000000},
			{['c']='turn',['p']=misil2d, ['a']=x_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=misil2d, ['a']=y_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=misil2d, ['a']=z_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='move',['p']=misil2d, ['a']=x_axis, ['t']=-16.600561, ['s']=6.000000},
			{['c']='move',['p']=misil2d, ['a']=y_axis, ['t']=-3.109592, ['s']=6.000000},
			{['c']='move',['p']=misil2d, ['a']=z_axis, ['t']=40.801071, ['s']=6.000000},
			{['c']='turn',['p']=root, ['a']=x_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=root, ['a']=y_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=root, ['a']=z_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='move',['p']=root, ['a']=x_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='move',['p']=root, ['a']=y_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='move',['p']=root, ['a']=z_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=flare3i, ['a']=x_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=flare3i, ['a']=y_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=flare3i, ['a']=z_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='move',['p']=flare3i, ['a']=x_axis, ['t']=19.411642, ['s']=6.000000},
			{['c']='move',['p']=flare3i, ['a']=y_axis, ['t']=-3.144315, ['s']=6.000000},
			{['c']='move',['p']=flare3i, ['a']=z_axis, ['t']=40.510990, ['s']=6.000000},
			{['c']='turn',['p']=hombros, ['a']=x_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=hombros, ['a']=y_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=hombros, ['a']=z_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='move',['p']=hombros, ['a']=x_axis, ['t']=-0.000001, ['s']=6.000000},
			{['c']='move',['p']=hombros, ['a']=y_axis, ['t']=0.421598, ['s']=6.000000},
			{['c']='move',['p']=hombros, ['a']=z_axis, ['t']=32.584671, ['s']=6.000000},
			{['c']='turn',['p']=flare2d, ['a']=x_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=flare2d, ['a']=y_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=flare2d, ['a']=z_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='move',['p']=flare2d, ['a']=x_axis, ['t']=-16.600559, ['s']=6.000000},
			{['c']='move',['p']=flare2d, ['a']=y_axis, ['t']=-3.109589, ['s']=6.000000},
			{['c']='move',['p']=flare2d, ['a']=z_axis, ['t']=40.801067, ['s']=6.000000},
			{['c']='turn',['p']=pied, ['a']=x_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=pied, ['a']=y_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=pied, ['a']=z_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='move',['p']=pied, ['a']=x_axis, ['t']=14.079788, ['s']=6.000000},
			{['c']='move',['p']=pied, ['a']=y_axis, ['t']=-0.134961, ['s']=6.000000},
			{['c']='move',['p']=pied, ['a']=z_axis, ['t']=4.660150, ['s']=6.000000},
			{['c']='turn',['p']=misil3i, ['a']=x_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=misil3i, ['a']=y_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=misil3i, ['a']=z_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='move',['p']=misil3i, ['a']=x_axis, ['t']=19.411646, ['s']=6.000000},
			{['c']='move',['p']=misil3i, ['a']=y_axis, ['t']=-3.144318, ['s']=6.000000},
			{['c']='move',['p']=misil3i, ['a']=z_axis, ['t']=40.510994, ['s']=6.000000},
			{['c']='turn',['p']=misil3d, ['a']=x_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=misil3d, ['a']=y_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=misil3d, ['a']=z_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='move',['p']=misil3d, ['a']=x_axis, ['t']=-19.411642, ['s']=6.000000},
			{['c']='move',['p']=misil3d, ['a']=y_axis, ['t']=-3.144320, ['s']=6.000000},
			{['c']='move',['p']=misil3d, ['a']=z_axis, ['t']=40.511002, ['s']=6.000000},
			{['c']='turn',['p']=misil1i, ['a']=x_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=misil1i, ['a']=y_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=misil1i, ['a']=z_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='move',['p']=misil1i, ['a']=x_axis, ['t']=13.833472, ['s']=6.000000},
			{['c']='move',['p']=misil1i, ['a']=y_axis, ['t']=-2.879538, ['s']=6.000000},
			{['c']='move',['p']=misil1i, ['a']=z_axis, ['t']=41.050716, ['s']=6.000000},
			{['c']='turn',['p']=flare2i, ['a']=x_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=flare2i, ['a']=y_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=flare2i, ['a']=z_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='move',['p']=flare2i, ['a']=x_axis, ['t']=16.600565, ['s']=6.000000},
			{['c']='move',['p']=flare2i, ['a']=y_axis, ['t']=-3.109588, ['s']=6.000000},
			{['c']='move',['p']=flare2i, ['a']=z_axis, ['t']=40.801071, ['s']=6.000000},
			{['c']='turn',['p']=flare1i, ['a']=x_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=flare1i, ['a']=y_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=flare1i, ['a']=z_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='move',['p']=flare1i, ['a']=x_axis, ['t']=13.833472, ['s']=6.000000},
			{['c']='move',['p']=flare1i, ['a']=y_axis, ['t']=-2.879536, ['s']=6.000000},
			{['c']='move',['p']=flare1i, ['a']=z_axis, ['t']=41.050716, ['s']=6.000000},
			{['c']='turn',['p']=flare3d, ['a']=x_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=flare3d, ['a']=y_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=flare3d, ['a']=z_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='move',['p']=flare3d, ['a']=x_axis, ['t']=-19.411638, ['s']=6.000000},
			{['c']='move',['p']=flare3d, ['a']=y_axis, ['t']=-3.144318, ['s']=6.000000},
			{['c']='move',['p']=flare3d, ['a']=z_axis, ['t']=40.510998, ['s']=6.000000},
			{['c']='turn',['p']=piernai, ['a']=x_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=piernai, ['a']=y_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=piernai, ['a']=z_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='move',['p']=piernai, ['a']=x_axis, ['t']=-6.848345, ['s']=6.000000},
			{['c']='move',['p']=piernai, ['a']=y_axis, ['t']=-2.705782, ['s']=6.000000},
			{['c']='move',['p']=piernai, ['a']=z_axis, ['t']=18.036428, ['s']=6.000000},
		}
	},
}

Animations['moveAnimation'] = {
	{
		['time'] = 0,
		['commands'] = {
			{['c']='turn',['p']=piernad, ['a']=x_axis, ['t']=-0.769492, ['s']=1.299775},
			{['c']='turn',['p']=piernad, ['a']=y_axis, ['t']=0.021305, ['s']=0.026849},
			{['c']='turn',['p']=piernad, ['a']=z_axis, ['t']=0.011672, ['s']=0.011979},
			{['c']='move',['p']=piernad, ['a']=x_axis, ['t']=-6.848345, ['s']=0.000000},
			{['c']='move',['p']=piernad, ['a']=y_axis, ['t']=-2.705782, ['s']=0.000000},
			{['c']='move',['p']=piernad, ['a']=z_axis, ['t']=18.036428, ['s']=0.000000},
			{['c']='turn',['p']=piernai, ['a']=x_axis, ['t']=0.454845, ['s']=1.182569},
			{['c']='turn',['p']=piernai, ['a']=y_axis, ['t']=-0.000000, ['s']=0.000000},
			{['c']='turn',['p']=piernai, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=piernai, ['a']=x_axis, ['t']=-6.848345, ['s']=0.000000},
			{['c']='move',['p']=piernai, ['a']=y_axis, ['t']=-2.705782, ['s']=0.000000},
			{['c']='move',['p']=piernai, ['a']=z_axis, ['t']=18.036428, ['s']=0.000000},
		}
	},
	{
		['time'] = 30,
		['commands'] = {
			{['c']='turn',['p']=piernad, ['a']=x_axis, ['t']=0.530283, ['s']=1.299775},
			{['c']='turn',['p']=piernad, ['a']=y_axis, ['t']=-0.005544, ['s']=0.026849},
			{['c']='turn',['p']=piernad, ['a']=z_axis, ['t']=0.023651, ['s']=0.011979},
			{['c']='turn',['p']=piernai, ['a']=x_axis, ['t']=-0.727723, ['s']=1.182569},
		}
	},
	{
		['time'] = 60,
		['commands'] = {
		}
	},
}

function constructSkeleton(unit, piece, offset)
    if (offset == nil) then
        offset = {0,0,0};
    end

    local bones = {};
    local info = Spring.GetUnitPieceInfo(unit,piece);

    for i=1,3 do
        info.offset[i] = offset[i]+info.offset[i];
    end 

    bones[piece] = info.offset;
    local map = Spring.GetUnitPieceMap(unit);
    local children = info.children;

    if (children) then
        for i, childName in pairs(children) do
            local childId = map[childName];
            local childBones = constructSkeleton(unit, childId, info.offset);
            for cid, cinfo in pairs(childBones) do
                bones[cid] = cinfo;
            end
        end
    end        
    return bones;
end


function script.Create()
    local map = Spring.GetUnitPieceMap(unitID);
    local offsets = constructSkeleton(unitID,map.Scene, {0,0,0});
    
    for a,anim in pairs(Animations) do
        for i,keyframe in pairs(anim) do
            local commands = keyframe.commands;
            for k,command in pairs(commands) do
                -- commands are described in (c)ommand,(p)iece,(a)xis,(t)arget,(s)peed format
                -- the t attribute needs to be adjusted for move commands from blender's absolute values
                if (command.c == "move") then
                    local adjusted =  command.t - (offsets[command.p][command.a]);
                    Animations[a][i]['commands'][k].t = command.t - (offsets[command.p][command.a]);
                end
            end
        end
    end
end
            
local animCmd = {['turn']=Turn,['move']=Move};
function PlayAnimation(animname)
    local anim = Animations[animname];
    for i = 1, #anim do
        local commands = anim[i].commands;
        for j = 1,#commands do
            local cmd = commands[j];
            animCmd[cmd.c](cmd.p,cmd.a,cmd.t,cmd.s);
        end
        if(i < #anim) then
            local t = anim[i+1]['time'] - anim[i]['time'];
            Sleep(t*33); -- sleep works on milliseconds
        end
    end
end

local function Walk()
	Signal(SIG_WALK)
	SetSignalMask(SIG_WALK)
	
	isMoving = true
	while true do
		PlayAnimation('moveAnimation')
		Sleep(0)
	end
end

local function RestorePose()
	Signal(SIG_WALK)
	SetSignalMask(SIG_WALK)
	PlayAnimation('resetAnimation')
end

function script.StartMoving(heading)
	Turn(base, z_axis, heading, math.rad(180))
	
	StartThread (Walk)
end

function script.StopMoving()
	isMoving = false
	StartThread(RestorePose)
end

---AIMING & SHOOTING---
function script.AimFromWeapon1() 
	return base
end

function script.AimFromWeapon2() 
	return base
end

function script.QueryWeapon1()
	if (active_barrel1 == 1) then
		--Spring.Echo ("torpedo1")
		return flare1d
	end
	if (active_barrel1 == 2) then
		--Spring.Echo ("torpedo2")
		return flare2d
	end
	if (active_barrel1 == 3) then
		--Spring.Echo ("torpedo2")
		return flare3d
	end
end

function script.QueryWeapon2()
	if (active_barrel2 == 1) then
		--Spring.Echo ("torpedo1")
		return flare1i
	end
	if (active_barrel2 == 2) then
		--Spring.Echo ("torpedo2")
		return flare2i
	end
	if (active_barrel2 == 3) then
		--Spring.Echo ("torpedo2")
		return flare3i
	end
end


--must return true to allow the weapon to shot. return false denies the weapon from shooting
--can be used delay the shooting until a "turn turret" animation is completed
function script.AimWeapon1( heading, pitch )
	--make sure the aiming animation is only run once
	Signal(SIG_AIM1)
	SetSignalMask(SIG_AIM1)
	
	Turn(base, z_axis, heading, math.rad(180))
	
	--wait until the weapon is pointed in the right direction
	WaitForTurn (base, z_axis)
	
	return true
end

function script.AimWeapon2( heading, pitch )
	--make sure the aiming animation is only run once
	Signal(SIG_AIM2)
	SetSignalMask(SIG_AIM2)
	
	Turn(base, z_axis, heading, math.rad(180))
	
	--wait until the weapon is pointed in the right direction
	WaitForTurn (base, z_axis)
	
	return true
end

--called after the weapon has fired
function script.FireWeapon1()
--switch to the next barrel:
	active_barrel1 = active_barrel1 + 1
	--if all barrels have fired, start the cyclus from the beginning:
	if (active_barrel1 > number_of_barrels) then active_barrel1 = 1 end
	
	if (active_barrel1 == 1) then
	
		EmitSfx(flare1d, smoke)
		Hide(misil1i)
		Sleep(1000)
		Show(misil1i)
		
	end
	if (active_barrel1 == 2) then
	
		EmitSfx(flare2d, smoke)
		Hide(misil2i)
		Sleep(1000)
		Show(misil2i)
		
	end
	if (active_barrel1 == 3) then
	
		EmitSfx(flare3d, smoke)
		Hide(misil3i)
		Sleep(1000)
		Show(misil3i)
		
	end
end
function script.FireWeapon2()
--switch to the next barrel:
	active_barrel2 = active_barrel2 + 1
	--if all barrels have fired, start the cyclus from the beginning:
	if (active_barrel2 > number_of_barrels) then active_barrel2 = 1 end
	
	if (active_barrel2 == 1) then
	
		EmitSfx(flare1i, smoke)
		Hide(misil1d)
		Sleep(1000)
		Show(misil1d)
		
	end
	if (active_barrel2 == 2) then
	
		EmitSfx(flare2i, smoke)
		Hide(misil2d)
		Sleep(1000)
		Show(misil2d)
		
	end
	if (active_barrel2 == 3) then
	
		EmitSfx(flare3i, smoke)
		Hide(misil3d)
		Sleep(1000)
		Show(misil3d)
		
	end
end

----death animation: fall over & explode
function script.Killed(recentDamage, maxHealth)

	Explode (base, SFX.SHATTER)	
	Explode (misil1i, SFX.FIRE)
	Explode (misil2i, SFX.FIRE)
	Explode (misil3i, SFX.FIRE)	
	Explode (misil1d, SFX.FIRE)
	Explode (misil2d, SFX.FIRE)
	Explode (misil3d, SFX.FIRE)
	Explode (hombros, SFX.SHATTER)

end
