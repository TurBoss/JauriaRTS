
--------------------------------------------------------------------------------
-- pieces
--------------------------------------------------------------------------------

local root = piece("root")
local base = piece("base")
local piei = piece("piei")
local pied = piece("pied")
local hombros = piece("hombros")
local caderas = piece("caderas")
local piernad = piece("piernad")
local piernai = piece("piernai")

--pieces used by the weapon:

local flare1i = piece("flare1i")
local flare1d = piece("flare1d")
local flare2i = piece("flare2i")
local flare2d = piece("flare2d")
local flare3i = piece("flare3i")
local flare3d = piece("flare3d")


local misil1i = piece("misil1i")
local misil1d = piece("misil1d")
local misil2i = piece("misil2i")
local misil2d = piece("misil2d")
local misil3i = piece("misil3i")
local misil3d = piece("misil3d")

local scriptEnv = {
	root = root,
	base = base,
	piei = piei,
	pied = pied,
	hombros = hombros,
	caderas = caderas,
	piernad = piernad,
	piernai = piernai,

	flare1i = flare1i,
	flare1d = flare1d,
	flare2i = flare2i,
	flare2d = flare2d,
	flare3i = flare3i,
	flare3d = flare3d,

	misil1i = misil1i,
	misil1d = misil1d,
	misil2i = misil2i,
	misil2d = misil2d,
	misil3i = misil3i,
	misil3d = misil3d,

	x_axis = x_axis,
	y_axis = y_axis,
	z_axis = z_axis
}

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

Animations['resetAnimation'] = VFS.Include("Scripts/animations/desolator/reset.lua", scriptEnv);
Animations['moveAnimation'] = VFS.Include("Scripts/animations/desolator/move.lua", scriptEnv);

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
function PlayAnimation(animname, snap)
    local anim = Animations[animname];
    for i = 1, #anim do
        local commands = anim[i].commands;
        for j = 1,#commands do
			-- hack to make first keyframe snap
            local cmd = commands[j];
            local speed = cmd.s;
            if i == 1 and snap then speed = 0; end

            animCmd[cmd.c](cmd.p,cmd.a,cmd.t,speed);
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
		PlayAnimation('moveAnimation', false)
		Sleep(0)
	end
end

local function RestorePose()
	Signal(SIG_WALK)
	SetSignalMask(SIG_WALK)
	PlayAnimation('resetAnimation', false)
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
