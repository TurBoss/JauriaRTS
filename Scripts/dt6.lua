local cabeza = piece('cabeza');
local caderad = piece('caderad');
local caderai = piece('caderai');
local canond = piece('canond');
local canoni = piece('canoni');
local coxis = piece('coxis');
local espinillad = piece('espinillad');
local espinillai = piece('espinillai');
local pied = piece('pied');
local piei = piece('piei');
local piernad = piece('piernad');
local piernai = piece('piernai');
local rodillad = piece('rodillad');
local rodillai = piece('rodillai');
local root = piece('root');
local tobillod = piece('tobillod');
local tobilloi = piece('tobilloi');
local flared = piece('flared');
local flarei = piece('flarei');

local scriptEnv = {

	cabeza = cabeza,
	caderad = caderad,
	caderai = caderai,
	canond = canond,
	canoni = canoni,
	coxis = coxis,
	espinillad = espinillad,
	espinillai = espinillai,
	pied = pied,
	piei = piei,
	piernad = piernad,
	piernai = piernai,
	rodillad = rodillad,
	rodillai = rodillai,
	root = root,
	tobillod = tobillod,
	tobilloi = tobilloi,
	flared = flared,
	flarei = flarei,

	x_axis = x_axis,
	y_axis = y_axis,
	z_axis = z_axis
}

local isMoving, isShooting = false, false

local SIG_WALK = 1	--signal for the walk animation thread
local SIG_TURN = 2
local SIG_AIM = 4

local Animations = {};

Animations['resetAnimation'] = VFS.Include("Scripts/animations/dt6/reset.lua", scriptEnv);
Animations['moveAnimation'] = VFS.Include("Scripts/animations/dt6/move.lua", scriptEnv);

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
		PlayAnimation('moveAnimation')
	end
end

local function RestorePose()
	Signal(SIG_WALK)
	SetSignalMask(SIG_WALK)
	PlayAnimation('resetAnimation')
end

function script.StartMoving(heading)
	Turn(cabeza, z_axis, heading, math.rad(200))
	StartThread(Walk)
end

function script.StopMoving()
	isMoving = false
	StartThread(RestorePose)
end


---AIMING & SHOOTING---
function script.AimFromWeapon1()
	return canond
end

function script.AimFromWeapon2()
	return canoni
end

function script.AimFromWeapon3()
	return canond
end

function script.AimFromWeapon4()
	return canoni
end

function script.QueryWeapon1()
	return flared
end

function script.QueryWeapon2()
	return flarei
end

function script.QueryWeapon3()
	return flared
end

function script.QueryWeapon4()
	return flarei
end

--called after the weapon has fired
function script.FireWeapon1()
end

function script.FireWeapon2()
end

function script.FireWeapon3()
	Move(canond, y_axis, 4)
	Sleep(100)
	Move(canond, y_axis, 0, 20)
end

function script.FireWeapon4()
	Move(canoni, y_axis, 4)
	Sleep(100)
	Move(canoni, y_axis, 0, 20)
end

function script.AimWeapon1( heading, pitch )
	--make sure the aiming animation is only run once
	Signal(SIG_AIM)
	SetSignalMask(SIG_AIM)
	Turn(cabeza, z_axis, heading, math.rad(200))
	Turn(canond, x_axis, -pitch, math.rad(200))

	--wait until the weapon is pointed in the right direction
	WaitForTurn (cabeza, z_axis)
	WaitForTurn (canond, x_axis)
	return true
end

function script.AimWeapon2( heading, pitch )
	Turn(canoni, x_axis, -pitch, math.rad(200))
	WaitForTurn (cabeza, z_axis)
	WaitForTurn (canoni, x_axis)
	return true
end

function script.AimWeapon3( heading, pitch )
	--make sure the aiming animation is only run once
	Turn(canond, x_axis, -pitch, math.rad(200))

	--wait until the weapon is pointed in the right direction
	WaitForTurn (cabeza, z_axis)
	WaitForTurn (canond, x_axis)
	return true
end

function script.AimWeapon4( heading, pitch )
	Turn(canoni, x_axis, -pitch, math.rad(200))
	WaitForTurn (cabeza, z_axis)
	WaitForTurn (canoni, x_axis)
	return true
end

----death animation
function script.Killed(recentDamage, maxHealth)
	Explode (cabeza, SFX.SHATTER)
	Explode (piernad, SFX.FIRE)
	Explode (piernai, SFX.FIRE)
end
