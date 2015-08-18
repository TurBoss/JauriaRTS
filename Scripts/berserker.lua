
--------------------------------------------------------------------------------
-- pieces
--------------------------------------------------------------------------------

local antebrazod = piece('antebrazod');
local antebrazoi = piece('antebrazoi');
local cabeza = piece('cabeza');
local entrepiernad = piece('entrepiernad');
local entrepiernai = piece('entrepiernai');
local flare = piece('flare');
local insignia = piece('insignia');
local lanzamisiles = piece('lanzamisiles');
local lanzamisiles002 = piece('lanzamisiles002');
local pied = piece('pied');
local piei = piece('piei');
local piernad = piece('piernad');
local piernai = piece('piernai');
local root = piece('root');
local torso = piece('torso');

local scriptEnv = {
	antebrazod = antebrazod,
	antebrazoi = antebrazoi,
	cabeza = cabeza,
	entrepiernad = entrepiernad,
	entrepiernai = entrepiernai,
	flare = flare,
	insignia = insignia,
	lanzamisiles = lanzamisiles,
	lanzamisiles002 = lanzamisiles002,
	pied = pied,
	piei = piei,
	piernad = piernad,
	piernai = piernai,
	root = root,
	torso = torso,
	x_axis = x_axis,
	y_axis = y_axis,
	z_axis = z_axis,
}

--------------------------------------------------------------------------------
-- constants
--------------------------------------------------------------------------------


local SIG_WALK = 1
local SIG_AIM = 2

local SIG_RESTORE = 4

local RESTORE_DELAY_SHOOT = 4000

--------------------------------------------------------------------------------
-- vars
--------------------------------------------------------------------------------

local isMoving, isShooting = false, false

local smoke = SFX.CEG

--------------------------------------------------------------------------------
-- tables
--------------------------------------------------------------------------------

local Animations = {};

Animations['resetAnimation'] = VFS.Include("Scripts/animations/berserker/reset.lua", scriptEnv);
Animations['moveAnimation'] = VFS.Include("Scripts/animations/berserker/move.lua", scriptEnv);

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

local function RestorePose()
	Signal(SIG_WALK)
	SetSignalMask(SIG_WALK)
	PlayAnimation('resetAnimation', false)
	isShooting = false
end

local function RestoreShoot()
	Signal(SIG_RESTORE)
	SetSignalMask(SIG_RESTORE)
	Sleep(RESTORE_DELAY_SHOOT)
	isShooting = false

	PlayAnimation('resetAnimation', false)

	Turn(torso, z_axis, 0, math.rad(125))
end

function script.StartMoving(heading)
	StartThread(Walk)
	Turn(torso, z_axis, heading, math.rad(125))
end

function script.StopMoving()
	isMoving = false
	StartThread(RestorePose)
end

---AIMING & SHOOTING---
function script.AimFromWeapon1()
	return lanzamisiles
end

function script.QueryWeapon1()
	return flare
end

--must return true to allow the weapon to shot. return false denies the weapon from shooting
--can be used delay the shooting until a "turn turret" animation is completed
function script.AimWeapon1( heading, pitch )
	--make sure the aiming animation is only run once
	Signal(SIG_AIM)
	SetSignalMask(SIG_AIM)

	Turn(torso, z_axis, heading, math.rad(320))

	--wait until the weapon is pointed in the right direction
	WaitForTurn (torso, z_axis)

	StartThread(RestoreShoot)
	return true
end

--called after the weapon has fired
function script.FireWeapon1()
	EmitSfx(flare, smoke)
end

----death animation: fall over & explode
function script.Killed(recentDamage, maxHealth)

end
