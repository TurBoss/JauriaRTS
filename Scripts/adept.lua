
--------------------------------------------------------------------------------
-- pieces
--------------------------------------------------------------------------------

local base = piece('base');
local bola1 = piece('bola1');
local bola2 = piece('bola2');
local bola3 = piece('bola3');
local bulto = piece('bulto');
local cabeza = piece('cabeza');
local cabina = piece('cabina');
local camion = piece('camion');
local cuello1 = piece('cuello1');
local cuello2 = piece('cuello2');
local deposito = piece('deposito');
local root = piece('root');
local ruedas1 = piece('ruedas1');
local ruedas2 = piece('ruedas2');
local ruedas3 = piece('ruedas3');
local tapa = piece('tapa');
local union = piece('union');

local scriptEnv = {
	base = base,
	bola1 = bola1,
	bola2 = bola2,
	bola3 = bola3,
	bulto = bulto,
	cabeza = cabeza,
	cabina = cabina,
	camion = camion,
	cuello1 = cuello1,
	cuello2 = cuello2,
	deposito = deposito,
	root = root,
	ruedas1 = ruedas1,
	ruedas2 = ruedas2,
	ruedas3 = ruedas3,
	tapa = tapa,
	union = union,
	x_axis = x_axis,
	y_axis = y_axis,
	z_axis = z_axis,
}

--------------------------------------------------------------------------------
-- constants
--------------------------------------------------------------------------------

local SIG_RC = 1
local SIG_NANO = 2
local SIG_RESTORE = 4

local OPEN_DELAY = 2500
--------------------------------------------------------------------------------
-- vars
--------------------------------------------------------------------------------

local isCollecting = false
local wheel_speed = math.rad(280);

--------------------------------------------------------------------------------
-- tables
--------------------------------------------------------------------------------

local Animations = {};

Animations['openAnimation'] = VFS.Include("Scripts/animations/adept/open.lua", scriptEnv);
Animations['resetAnimation'] = VFS.Include("Scripts/animations/adept/reset.lua", scriptEnv);

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

local function Open()
	Signal(SIG_OPEN)
	SetSignalMask(SIG_OPEN)

	PlayAnimation('openAnimation', false)
	isCollecting = true
end

local function RestorePose()
	Signal(SIG_OPEN)
	SetSignalMask(SIG_OPEN)
	PlayAnimation('resetAnimation', false)
end

--------BUILDING---------

function script.StopBuilding()
	if isCollecting then
		Signal(SIG_RC)
		SetSignalMask(SIG_RC)
		SetUnitValue(COB.INBUILDSTANCE, 0)
		Turn (cuello2, y_axis, 0, math.rad(80))
		WaitForTurn(cuello2, y_axis)
		isCollecting = false
		StartThread (RestorePose)
	end
end

function script.StartBuilding(heading, pitch)
	Signal(SIG_RC)
	SetSignalMask(SIG_RC)
	StartThread (Open)
	Sleep(OPEN_DELAY)
	Turn (cuello2, y_axis, heading-9.3, math.rad(80))
	WaitForTurn(cuello2, y_axis)
	SetUnitValue(COB.INBUILDSTANCE, 1)

end

function script.QueryNanoPiece()
	return cabeza
end


function script.StartMoving()
	Spin(ruedas1, x_axis, wheel_speed)
	Spin(ruedas2, x_axis, wheel_speed)
	Spin(ruedas3, x_axis, wheel_speed)
end

function script.StopMoving()
	StopSpin (ruedas1,x_axis)
	StopSpin (ruedas2,x_axis)
	StopSpin (ruedas3,x_axis)
end

function script.Killed(recentDamage, maxHealth)
end
