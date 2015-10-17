
--------------------------------------------------------------------------------
-- pieces
--------------------------------------------------------------------------------

local antebrazod = piece('antebrazod');
local antebrazoi = piece('antebrazoi');
local arma = piece('arma');
local baculo = piece('baculo');
local brazod = piece('brazod');
local brazoi = piece('brazoi');
local cabeza = piece('cabeza');
local capa = piece('capa');
local codod = piece('codod');
local codoi = piece('codoi');
local coxisd = piece('coxisd');
local coxisi = piece('coxisi');
local espinillad = piece('espinillad');
local espinillai = piece('espinillai');
local flare = piece('flare');
local hombrerad = piece('hombrerad');
local hombrerai = piece('hombrerai');
local hombrod = piece('hombrod');
local hombroi = piece('hombroi');
local manod = piece('manod');
local manoi = piece('manoi');
local munecad = piece('munecad');
local munecai = piece('munecai');
local muslod = piece('muslod');
local musloi = piece('musloi');
local pied = piece('pied');
local piei = piece('piei');
local rodillad = piece('rodillad');
local rodillai = piece('rodillai');
local root = piece('root');
local tobillod = piece('tobillod');
local tobilloi = piece('tobilloi');
local torso = piece('torso');

--------------------------------------------------------------------------------
-- constants
--------------------------------------------------------------------------------

local SIG_WALK = 1

--------------------------------------------------------------------------------
-- vars
--------------------------------------------------------------------------------

local isMoving, isShooting = false, false

--------------------------------------------------------------------------------
-- tables
--------------------------------------------------------------------------------


local scriptEnv = {
	antebrazod = antebrazod,
	antebrazoi = antebrazoi,
	arma = arma,
	baculo = baculo,
	brazod = brazod,
	brazoi = brazoi,
	cabeza = cabeza,
	capa = capa,
	codod = codod,
	codoi = codoi,
	coxisd = coxisd,
	coxisi = coxisi,
	espinillad = espinillad,
	espinillai = espinillai,
	flare = flare,
	hombrerad = hombrerad,
	hombrerai = hombrerai,
	hombrod = hombrod,
	hombroi = hombroi,
	manod = manod,
	manoi = manoi,
	munecad = munecad,
	munecai = munecai,
	muslod = muslod,
	musloi = musloi,
	pied = pied,
	piei = piei,
	rodillad = rodillad,
	rodillai = rodillai,
	root = root,
	tobillod = tobillod,
	tobilloi = tobilloi,
	torso = torso,

	x_axis = x_axis,
	y_axis = y_axis,
	z_axis = z_axis,
}

local Animations = {};

Animations['resetAnimation'] = VFS.Include("Scripts/animations/haek/reset.lua", scriptEnv);

Animations['moveAnimation'] = VFS.Include("Scripts/animations/haek/move.lua", scriptEnv);

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
		PlayAnimation('moveAnimation')
	end
end

local function RestorePose()
	Signal(SIG_WALK)
	SetSignalMask(SIG_WALK)
	PlayAnimation('resetAnimation')
end

function script.StartMoving(heading)
	StartThread (Walk)
	Turn(torso, z_axis, heading, math.rad(225))
end

function script.StopMoving()
	isMoving = false
	StartThread(RestorePose)
end

--called after the weapon has fired
function script.FireWeapon1()
end


---AIMING & SHOOTING---
function script.AimFromWeapon1()
	return torso
end


function script.QueryWeapon1()
	return flare
end


function script.AimWeapon1( heading, pitch )
	--make sure the aiming animation is only run once
	Signal(SIG_AIM)
	SetSignalMask(SIG_AIM)
	Turn(torso, z_axis, heading, math.rad(350))
	--wait until the weapon is pointed in the right direction
	WaitForTurn (torso, z_axis)
	return true
end


----death animation
function script.Killed(recentDamage, maxHealth)
	Explode (torso, SFX.SHATTER)
	Explode (hombrerad, SFX.FIRE)
	Explode (hombrerai, SFX.FIRE)
	Explode (baculo, SFX.FIRE)
end
