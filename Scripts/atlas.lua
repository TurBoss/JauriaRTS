local arma1d = piece('arma1d');
local arma1i = piece('arma1i');
local brazo1d = piece('brazo1d');
local brazo1i = piece('brazo1i');
local brazo2d = piece('brazo2d');
local brazo2i = piece('brazo2i');
local brazo3d = piece('brazo3d');
local cabeza = piece('cabeza');
local caneya = piece('caneya');
local clavicula = piece('clavicula');
local cuello = piece('cuello');
local cuernos = piece('cuernos');
local flare1 = piece('flare1');
local flare2 = piece('flare2');
local hombro1d = piece('hombro1d');
local hombro1i = piece('hombro1i');
local pechera = piece('pechera');
local pie1d = piece('pie1d');
local pie3i = piece('pie3i');
local pierna1d = piece('pierna1d');
local pierna1i = piece('pierna1i');
local pierna2d = piece('pierna2d');
local pierna2i = piece('pierna2i');
local pierna3d = piece('pierna3d');
local pierna3i = piece('pierna3i');
local root = piece('root');
local torso = piece('torso');
local Animations = {};

local SIG_WALK = 1	--signal for the walk animation thread
local SIG_TURN = 2
local SIG_AIM = 4

Animations['moveAnimation'] = {
	{
		['time'] = 0,
		['commands'] = {
			{['c']='move',['p']=pierna1d, ['a']=x_axis, ['t']=-11.639810, ['s']=0.000000},
			{['c']='move',['p']=pierna1d, ['a']=y_axis, ['t']=2.079811, ['s']=0.000000},
			{['c']='move',['p']=pierna1d, ['a']=z_axis, ['t']=62.367409, ['s']=0.000000},
			{['c']='turn',['p']=pierna1d, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=pierna1d, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=pierna1d, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=pierna2i, ['a']=x_axis, ['t']=12.355505, ['s']=0.000000},
			{['c']='move',['p']=pierna2i, ['a']=y_axis, ['t']=-0.027953, ['s']=0.000000},
			{['c']='move',['p']=pierna2i, ['a']=z_axis, ['t']=54.116486, ['s']=0.000000},
			{['c']='turn',['p']=pierna2i, ['a']=x_axis, ['t']=-0.369034, ['s']=1.000416},
			{['c']='turn',['p']=pierna2i, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=pierna2i, ['a']=z_axis, ['t']=-0.000000, ['s']=0.000000},
			{['c']='move',['p']=pierna1i, ['a']=x_axis, ['t']=12.940972, ['s']=0.000000},
			{['c']='move',['p']=pierna1i, ['a']=y_axis, ['t']=2.079816, ['s']=0.000000},
			{['c']='move',['p']=pierna1i, ['a']=z_axis, ['t']=62.367508, ['s']=0.000000},
			{['c']='turn',['p']=pierna1i, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=pierna1i, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=pierna1i, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=pierna3d, ['a']=x_axis, ['t']=-12.317361, ['s']=0.000000},
			{['c']='move',['p']=pierna3d, ['a']=y_axis, ['t']=-0.572975, ['s']=0.000000},
			{['c']='move',['p']=pierna3d, ['a']=z_axis, ['t']=27.011993, ['s']=0.000000},
			{['c']='turn',['p']=pierna3d, ['a']=x_axis, ['t']=0.237172, ['s']=0.237172},
			{['c']='turn',['p']=pierna3d, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=pierna3d, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=pierna3i, ['a']=x_axis, ['t']=12.263413, ['s']=0.000000},
			{['c']='move',['p']=pierna3i, ['a']=y_axis, ['t']=0.176722, ['s']=0.000000},
			{['c']='move',['p']=pierna3i, ['a']=z_axis, ['t']=27.309969, ['s']=0.000000},
			{['c']='turn',['p']=pierna3i, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=pierna3i, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=pierna3i, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=pierna2d, ['a']=x_axis, ['t']=-12.225275, ['s']=0.000000},
			{['c']='move',['p']=pierna2d, ['a']=y_axis, ['t']=-0.027953, ['s']=0.000000},
			{['c']='move',['p']=pierna2d, ['a']=z_axis, ['t']=54.116501, ['s']=0.000000},
			{['c']='turn',['p']=pierna2d, ['a']=x_axis, ['t']=0.693435, ['s']=1.069731},
			{['c']='turn',['p']=pierna2d, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=pierna2d, ['a']=z_axis, ['t']=-0.000000, ['s']=0.000001},
			{['c']='move',['p']=pie1d, ['a']=x_axis, ['t']=-12.609595, ['s']=0.000000},
			{['c']='move',['p']=pie1d, ['a']=y_axis, ['t']=14.602448, ['s']=0.000000},
			{['c']='move',['p']=pie1d, ['a']=z_axis, ['t']=5.020415, ['s']=0.000000},
			{['c']='turn',['p']=pie1d, ['a']=x_axis, ['t']=-0.077803, ['s']=0.334197},
			{['c']='turn',['p']=pie1d, ['a']=y_axis, ['t']=-0.000000, ['s']=0.000000},
			{['c']='turn',['p']=pie1d, ['a']=z_axis, ['t']=-0.000000, ['s']=0.000000},
			{['c']='move',['p']=pie3i, ['a']=x_axis, ['t']=12.085826, ['s']=0.000000},
			{['c']='move',['p']=pie3i, ['a']=y_axis, ['t']=13.519422, ['s']=0.000000},
			{['c']='move',['p']=pie3i, ['a']=z_axis, ['t']=4.840281, ['s']=0.000000},
			{['c']='turn',['p']=pie3i, ['a']=x_axis, ['t']=0.355140, ['s']=0.355140},
			{['c']='turn',['p']=pie3i, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=pie3i, ['a']=z_axis, ['t']=-0.000000, ['s']=0.000000},
		}
	},
	{
		['time'] = 30,
		['commands'] = {
			{['c']='turn',['p']=pierna2i, ['a']=x_axis, ['t']=0.631382, ['s']=1.000416},
			{['c']='turn',['p']=pierna2i, ['a']=z_axis, ['t']=-0.000000, ['s']=0.000000},
			{['c']='turn',['p']=pierna3d, ['a']=x_axis, ['t']=0.000000, ['s']=0.237172},
			{['c']='turn',['p']=pierna3d, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=pierna3d, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=pierna2d, ['a']=x_axis, ['t']=-0.376296, ['s']=1.069731},
			{['c']='turn',['p']=pierna2d, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=pierna2d, ['a']=z_axis, ['t']=0.000000, ['s']=0.000001},
			{['c']='turn',['p']=pie1d, ['a']=x_axis, ['t']=0.256394, ['s']=0.334197},
			{['c']='turn',['p']=pie1d, ['a']=y_axis, ['t']=-0.000000, ['s']=0.000000},
			{['c']='turn',['p']=pie1d, ['a']=z_axis, ['t']=-0.000000, ['s']=0.000000},
			{['c']='turn',['p']=pie3i, ['a']=x_axis, ['t']=0.000000, ['s']=0.355140},
			{['c']='turn',['p']=pie3i, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=pie3i, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
		}
	},
	{
		['time'] = 60,
		['commands'] = {
		}
	},
	}

Animations['resetAnimation'] = {
	{
		['time'] = 0,
		['commands'] = {
			{['c']='move',['p']=pierna1d, ['a']=x_axis, ['t']=-11.639810, ['s']=2.000000},
			{['c']='move',['p']=pierna1d, ['a']=y_axis, ['t']=2.079811, ['s']=2.000000},
			{['c']='move',['p']=pierna1d, ['a']=z_axis, ['t']=62.367409, ['s']=2.000000},
			{['c']='turn',['p']=pierna1d, ['a']=x_axis, ['t']=0.000000, ['s']=2.000000},
			{['c']='turn',['p']=pierna1d, ['a']=y_axis, ['t']=0.000000, ['s']=2.000000},
			{['c']='turn',['p']=pierna1d, ['a']=z_axis, ['t']=0.000000, ['s']=2.000000},
			{['c']='move',['p']=pierna2i, ['a']=x_axis, ['t']=12.355505, ['s']=2.000000},
			{['c']='move',['p']=pierna2i, ['a']=y_axis, ['t']=-0.027953, ['s']=2.000000},
			{['c']='move',['p']=pierna2i, ['a']=z_axis, ['t']=54.116486, ['s']=2.000000},
			{['c']='turn',['p']=pierna2i, ['a']=x_axis, ['t']=0.000000, ['s']=2.000000},
			{['c']='turn',['p']=pierna2i, ['a']=y_axis, ['t']=0.000000, ['s']=2.000000},
			{['c']='turn',['p']=pierna2i, ['a']=z_axis, ['t']=0.000000, ['s']=2.000000},
			{['c']='move',['p']=pierna1i, ['a']=x_axis, ['t']=12.940972, ['s']=2.000000},
			{['c']='move',['p']=pierna1i, ['a']=y_axis, ['t']=2.079816, ['s']=2.000000},
			{['c']='move',['p']=pierna1i, ['a']=z_axis, ['t']=62.367508, ['s']=2.000000},
			{['c']='turn',['p']=pierna1i, ['a']=x_axis, ['t']=0.000000, ['s']=2.000000},
			{['c']='turn',['p']=pierna1i, ['a']=y_axis, ['t']=0.000000, ['s']=2.000000},
			{['c']='turn',['p']=pierna1i, ['a']=z_axis, ['t']=0.000000, ['s']=2.000000},
			{['c']='move',['p']=pierna3d, ['a']=x_axis, ['t']=-12.317361, ['s']=2.000000},
			{['c']='move',['p']=pierna3d, ['a']=y_axis, ['t']=-0.572975, ['s']=2.000000},
			{['c']='move',['p']=pierna3d, ['a']=z_axis, ['t']=27.011993, ['s']=2.000000},
			{['c']='turn',['p']=pierna3d, ['a']=x_axis, ['t']=0.000000, ['s']=2.000000},
			{['c']='turn',['p']=pierna3d, ['a']=y_axis, ['t']=0.000000, ['s']=2.000000},
			{['c']='turn',['p']=pierna3d, ['a']=z_axis, ['t']=0.000000, ['s']=2.000000},
			{['c']='move',['p']=pierna3i, ['a']=x_axis, ['t']=12.263413, ['s']=2.000000},
			{['c']='move',['p']=pierna3i, ['a']=y_axis, ['t']=0.176722, ['s']=2.000000},
			{['c']='move',['p']=pierna3i, ['a']=z_axis, ['t']=27.309969, ['s']=2.000000},
			{['c']='turn',['p']=pierna3i, ['a']=x_axis, ['t']=0.000000, ['s']=2.000000},
			{['c']='turn',['p']=pierna3i, ['a']=y_axis, ['t']=0.000000, ['s']=2.000000},
			{['c']='turn',['p']=pierna3i, ['a']=z_axis, ['t']=0.000000, ['s']=2.000000},
			{['c']='move',['p']=pierna2d, ['a']=x_axis, ['t']=-12.225275, ['s']=2.000000},
			{['c']='move',['p']=pierna2d, ['a']=y_axis, ['t']=-0.027953, ['s']=2.000000},
			{['c']='move',['p']=pierna2d, ['a']=z_axis, ['t']=54.116501, ['s']=2.000000},
			{['c']='turn',['p']=pierna2d, ['a']=x_axis, ['t']=0.000000, ['s']=2.000000},
			{['c']='turn',['p']=pierna2d, ['a']=y_axis, ['t']=0.000000, ['s']=2.000000},
			{['c']='turn',['p']=pierna2d, ['a']=z_axis, ['t']=0.000000, ['s']=2.000000},
			{['c']='move',['p']=pie1d, ['a']=x_axis, ['t']=-12.609595, ['s']=2.000000},
			{['c']='move',['p']=pie1d, ['a']=y_axis, ['t']=14.602448, ['s']=2.000000},
			{['c']='move',['p']=pie1d, ['a']=z_axis, ['t']=5.020415, ['s']=2.000000},
			{['c']='turn',['p']=pie1d, ['a']=x_axis, ['t']=0.000000, ['s']=2.000000},
			{['c']='turn',['p']=pie1d, ['a']=y_axis, ['t']=0.000000, ['s']=2.000000},
			{['c']='turn',['p']=pie1d, ['a']=z_axis, ['t']=0.000000, ['s']=2.000000},
			{['c']='move',['p']=pie3i, ['a']=x_axis, ['t']=12.085826, ['s']=2.000000},
			{['c']='move',['p']=pie3i, ['a']=y_axis, ['t']=13.519422, ['s']=2.000000},
			{['c']='move',['p']=pie3i, ['a']=z_axis, ['t']=4.840281, ['s']=2.000000},
			{['c']='turn',['p']=pie3i, ['a']=x_axis, ['t']=0.000000, ['s']=2.000000},
			{['c']='turn',['p']=pie3i, ['a']=y_axis, ['t']=0.000000, ['s']=2.000000},
			{['c']='turn',['p']=pie3i, ['a']=z_axis, ['t']=0.000000, ['s']=2.000000},
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
            

local function caminapalante()

	Signal(SIG_WALK)
	SetSignalMask(SIG_WALK)
	while (true) do
		PlayAnimation('moveAnimation')
	end
end

local function caminareset()
	Sleep(1000)
	PlayAnimation('resetAnimation')
end

function script.StartMoving(heading)
	Turn(torso, z_axis, heading, math.rad(200))
	StartThread(caminapalante)
end

function script.StopMoving()
	--Spring.Echo ("stopped walking!")
	Signal(SIG_WALK)
	StartThread(caminareset)
end


---AIMING & SHOOTING---
function script.AimFromWeapon1() 
	return torso
end

function script.AimFromWeapon2() 
	return arma1i
end

function script.QueryWeapon1() 
	return flare1
end

function script.QueryWeapon2() 
	return flare2
end

function script.FireWeapon1()
end

function script.FireWeapon2()
end


function script.AimWeapon1( heading, pitch )
	--make sure the aiming animation is only run once
	Signal(SIG_AIM)
	SetSignalMask(SIG_AIM)
	Turn(torso, z_axis, heading, math.rad(200))
	--Spring.Echo(pitch)
	Turn(brazo1d, x_axis, -pitch-1.50, math.rad(200))

	--wait until the weapon is pointed in the right direction
	WaitForTurn (torso, z_axis)
	WaitForTurn (brazo1d, x_axis)
	return true
end

function script.AimWeapon2( heading, pitch )
	Turn(brazo1i, x_axis, -pitch-1.50, math.rad(200))

	--wait until the weapon is pointed in the right direction
	WaitForTurn (torso, z_axis)
	WaitForTurn (brazo1i, x_axis)
	return true
end

function script.Killed(recentDamage, maxHealth)
	Explode (cabeza, SFX.SHATTER)
	Explode (torso, SFX.FIRE)
	Explode (pierna1i, SFX.FIRE)
end
