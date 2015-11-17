local antena = piece('antena');
local bola1d = piece('bola1d');
local bola1i = piece('bola1i');
local bola2d = piece('bola2d');
local bola2i = piece('bola2i');
local chasis = piece('chasis');
local laser = piece('laser');
local pata1d = piece('pata1d');
local pata1i = piece('pata1i');
local pata2d = piece('pata2d');
local pata2i = piece('pata2i');

local root = piece('root');
local rootantena = piece('rootantena');

local scriptEnv = {

	antena = antena,
	bola1d = bola1d,
	bola1i = bola1i,
	bola2d = bola2d,
	bola2i = bola2i,
	chasis = chasis,
	laser = laser,
	pata1d = pata1d,
	pata1i = pata1i,
	pata2d = pata2d,
	pata2i = pata2i,
	root = root,
	rootantena = rootantena,
	
	x_axis = x_axis,
	y_axis = y_axis,
	z_axis = z_axis,
}

local Animations = {};

local SIG_WALK = 1	--signal for the walk animation thread

local SIG_AIM = 2

Animations['moveAnimation'] = VFS.Include("Scripts/animations/it0/move.lua", scriptEnv);

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



local function walk()
	Signal(SIG_WALK)
	SetSignalMask(SIG_WALK)
	while (true) do
		PlayAnimation('moveAnimation', false)
	end
end

---AIMING & SHOOTING---
function script.AimFromWeapon1() 
	return laser
end

function script.QueryWeapon1() 
	return laser
end

--must return true to allow the weapon to shot. return false denies the weapon from shooting
--can be used delay the shooting until a "turn turret" animation is completed
function script.AimWeapon1( heading, pitch )
	--make sure the aiming animation is only run once
	Signal(SIG_AIM)
	SetSignalMask(SIG_AIM)
	
	Turn(chasis, z_axis, heading, math.rad(80))
	--Turn(canyon, z_axis, -pitch, math.rad(90))
	
	--wait until the weapon is pointed in the right direction
	WaitForTurn (chasis, z_axis)
	--WaitForTurn (canyon, x_axis)
	
	return true
end

--called after the weapon has fired
function script.FireWeapon1()
	
end

function script.StartMoving(heading)
	Turn(chasis, z_axis, 0, math.rad(80))
	StartThread (walk)
end

function script.StopMoving()
	--Spring.Echo ("stopped walking!")
	Signal(SIG_WALK)
end

function script.Killed()
	Explode (chasis, SFX.SHATTER)
	Explode (bola1d, SFX.FIRE)
	Explode (bola2d, SFX.FIRE)
	Explode (bola1i, SFX.FIRE)
	Explode (bola2i, SFX.FIRE)
	Explode (pata1d, SFX.FIRE)
	Explode (pata2d, SFX.FIRE)
	Explode (pata1i, SFX.FIRE)
	Explode (pata2i, SFX.FIRE)
	Explode (antena, SFX.FIRE)
end
