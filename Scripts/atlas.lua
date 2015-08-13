
--------------------------------------------------------------------------------
-- pieces
--------------------------------------------------------------------------------

local antebrazod = piece('antebrazod');
local antebrazoi = piece('antebrazoi');
local armadura = piece('armadura');
local caderad = piece('caderad');
local caderai = piece('caderai');
local codo = piece('codo');
local codod = piece('codod');
local craneo = piece('craneo');
local culo = piece('culo');
local flare1 = piece('flare1');
local flare2 = piece('flare2');
local flare3 = piece('flare3');
local flare4 = piece('flare4');
local municiones = piece('municiones');
local piernad = piece('piernad');
local piernai = piece('piernai');
local pipa = piece('pipa');
local root = piece('root');
local tobillod = piece('tobillod');
local tobilloi = piece('tobilloi');

local scriptEnv = {
	antebrazod = antebrazod,
	antebrazoi = antebrazoi,
	armadura = armadura,
	caderad = caderad,
	caderai = caderai,
	codo = codo,
	codod = codod,
	craneo = craneo,
	culo = culo,
	flare1 = flare1,
	flare2 = flare2,
	flare3 = flare3,
	flare4 = flare4,
	municiones = municiones,
	piernad = piernad,
	piernai = piernai,
	pipa = pipa,
	root = root,
	tobillod = tobillod,
	tobilloi = tobilloi,
 	x_axis = x_axis,
	y_axis = y_axis,
	z_axis = z_axis,
}
--------------------------------------------------------------------------------
-- constants
--------------------------------------------------------------------------------

local SIG_WALK = 1
local SIG_WALK1 = 2
local SIG_AIM = 4
local SIG_AIM1 = 8
local SIG_AIM2 = 16
local SIG_AIM3 = 32
local SIG_RESTORE = 64

local RESTORE_DELAY_SHOOT = 4000

--------------------------------------------------------------------------------
-- vars
--------------------------------------------------------------------------------

local isMoving, isShooting = false, false

--------------------------------------------------------------------------------
-- tables
--------------------------------------------------------------------------------

local Animations = {};

Animations['resetAnimation'] = VFS.Include("Scripts/animations/atlas/reset.lua", scriptEnv);

Animations['moveAnimation'] = VFS.Include("Scripts/animations/atlas/move.lua", scriptEnv);

Animations['armsAnimation'] = VFS.Include("Scripts/animations/atlas/arms.lua", scriptEnv);

--------------------------------------------------------------------------------
-- funcs
--------------------------------------------------------------------------------

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

local function MoveArms()
	Signal(SIG_WALK1)
	SetSignalMask(SIG_WALK1)
	while true do
		if not isShooting then
			PlayAnimation('armsAnimation', false)
		end
		Sleep(0)
	end
end

local function RestorePose()
	Signal(SIG_WALK)
	Signal(SIG_WALK1)
	SetSignalMask(SIG_WALK)
	SetSignalMask(SIG_WALK1)
	PlayAnimation('resetAnimation', false)
end

local function RestoreShoot()
	Signal(SIG_RESTORE)
	SetSignalMask(SIG_RESTORE)
	Sleep(RESTORE_DELAY_SHOOT)
	isShooting = false

	PlayAnimation('resetAnimation', false)

	Turn(culo, z_axis, 0, math.rad(125))
end

function script.StartMoving(heading)

	Turn(culo, z_axis, heading, math.rad(125))

	StartThread (Walk)
	StartThread (MoveArms)
end

function script.StopMoving()
	isMoving = false
	StartThread(RestorePose)
end

---AIMING & SHOOTING---
function script.AimFromWeapon1()
	return armadura
end

function script.QueryWeapon1()
	return flare1
end

function script.AimFromWeapon2()
	return armadura
end

function script.QueryWeapon2()
	return flare2
end

function script.AimFromWeapon3()
	return armadura
end

function script.QueryWeapon3()
	return flare3
end

function script.AimFromWeapon4()
	return armadura
end

function script.QueryWeapon4()
	return flare4
end
--

function script.AimWeapon1( heading, pitch )
	--make sure the aiming animation is only run once
	Signal(SIG_AIM)
	SetSignalMask(SIG_AIM)
	isShooting = true
	Turn(armadura, z_axis, heading, math.rad(350))

	--wait until the weapon is pointed in the right direction
	WaitForTurn (armadura, z_axis)
	StartThread(RestoreShoot)
	return true
end

function script.AimWeapon2( heading, pitch )
	--make sure the aiming animation is only run once
	Signal(SIG_AIM1)
	SetSignalMask(SIG_AIM1)
	isShooting = true
	Turn(armadura, z_axis, heading, math.rad(350))

	--wait until the weapon is pointed in the right direction
	WaitForTurn (armadura, z_axis)
	StartThread(RestoreShoot)
	return true
end
function script.AimWeapon3( heading, pitch )
	--make sure the aiming animation is only run once
	Signal(SIG_AIM2)
	SetSignalMask(SIG_AIM2)
	isShooting = true
	Turn(armadura, z_axis, heading, math.rad(350))

	--wait until the weapon is pointed in the right direction
	WaitForTurn (armadura, z_axis)
	StartThread(RestoreShoot)
	return true
end

function script.AimWeapon4( heading, pitch )
	--make sure the aiming animation is only run once
	Signal(SIG_AIM3)
	SetSignalMask(SIG_AIM3)
	isShooting = true
	Turn(armadura, z_axis, heading, math.rad(350))

	--wait until the weapon is pointed in the right direction
	WaitForTurn (armadura, z_axis)
	StartThread(RestoreShoot)
	return true
end

--called after the weapon has fired
function script.FireWeapon1()
end

function script.FireWeapon2()
end
