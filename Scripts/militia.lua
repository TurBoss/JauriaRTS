local antebrazod = piece('antebrazod');
local antebrazoi = piece('antebrazoi');
local arma = piece('arma');
local bola = piece('bola');
local brazod = piece('brazod');
local brazoi = piece('brazoi');
local Cabeza = piece('Cabeza');
local cintura = piece('cintura');
local codera = piece('codera');
local entrepiernad = piece('entrepiernad');
local entrepiernai = piece('entrepiernai');
--local filtros = piece('filtros');
--local hierro = piece('hierro');
--local mascara = piece('mascara');
local mira = piece('mira');
--local mochila = piece('mochila');
--local ojos = piece('ojos');
--local pechera = piece('pechera');
local pied = piece('pied');
local piei = piece('piei');
local piernad = piece('piernad');
local piernai = piece('piernai');
local root = piece('root');
local torso = piece('torso');
--local visor = piece('visor');

local Animations = {};

local SIG_WALK = 1	--signal for the walk animation thread

Animations['moveAnimation'] = {
}

Animations['resetAnimation'] = {
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

local function startMove()
	Signal(SIG_WALK)
	SetSignalMask(SIG_WALK)
	while (true) do
		PlayAnimation('moveAnimation')
	end
end

local function resetMove()
	Sleep(1000)
	PlayAnimation('resetAnimation')
end

function script.StartMoving(heading)
	--StartThread (startMove)
	Turn(root, z_axis, heading, math.rad(225))
end

function script.StopMoving()
	--Signal(SIG_WALK)
	--StartThread(resetMove)
end

--called after the weapon has fired
function script.FireWeapon1()
end


---AIMING & SHOOTING---
function script.AimFromWeapon1() 
	return arma
end


function script.QueryWeapon1() 
	return arma
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
end
            

