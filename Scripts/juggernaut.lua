
--------------------------------------------------------------------------------
-- pieces
--------------------------------------------------------------------------------

local base = piece('base');
local caderas = piece('caderas');
local flare1 = piece('flare1');
local flare2 = piece('flare2');
local hombreras = piece('hombreras');
local hombros = piece('hombros');
local llamas = piece('llamas');
local misil = piece('misil');
local pied = piece('pied');
local piei = piece('piei');
local piernad = piece('piernad');
local piernai = piece('piernai');
local root = piece('root');
local rodillai = piece('rodillai');
local team = piece('team');
local rodillad = piece('rodillad');

--------------------------------------------------------------------------------
-- constants
--------------------------------------------------------------------------------

local SIG_WALK = 1
local SIG_WALK1 = 2
local SIG_AIM = 4
local SIG_AIM1 = 8
local SIG_RESTORE = 16

local RESTORE_DELAY_SHOOT = 4000

--------------------------------------------------------------------------------
-- vars
--------------------------------------------------------------------------------

local isMoving, isShooting = false, false

--------------------------------------------------------------------------------
-- tables
--------------------------------------------------------------------------------

local Animations = {};

Animations['resetAnimation'] = {
	{
		['time'] = 0,
		['commands'] = {
			{['c']='move',['p']=pied, ['a']=x_axis, ['t']=16.718996, ['s']=6.000000},
			{['c']='move',['p']=pied, ['a']=y_axis, ['t']=4.375984, ['s']=6.000000},
			{['c']='move',['p']=pied, ['a']=z_axis, ['t']=11.304741, ['s']=6.000000},
			{['c']='turn',['p']=pied, ['a']=x_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=pied, ['a']=y_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=pied, ['a']=z_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='move',['p']=piernai, ['a']=x_axis, ['t']=-12.344358, ['s']=6.000000},
			{['c']='move',['p']=piernai, ['a']=y_axis, ['t']=-0.553763, ['s']=6.000000},
			{['c']='move',['p']=piernai, ['a']=z_axis, ['t']=25.346201, ['s']=6.000000},
			{['c']='turn',['p']=piernai, ['a']=x_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=piernai, ['a']=y_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=piernai, ['a']=z_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='move',['p']=piernad, ['a']=x_axis, ['t']=-12.344358, ['s']=6.000000},
			{['c']='move',['p']=piernad, ['a']=y_axis, ['t']=-0.553763, ['s']=6.000000},
			{['c']='move',['p']=piernad, ['a']=z_axis, ['t']=25.346201, ['s']=6.000000},
			{['c']='turn',['p']=piernad, ['a']=x_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=piernad, ['a']=y_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=piernad, ['a']=z_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='move',['p']=piei, ['a']=x_axis, ['t']=-16.535078, ['s']=6.000000},
			{['c']='move',['p']=piei, ['a']=y_axis, ['t']=4.375985, ['s']=6.000000},
			{['c']='move',['p']=piei, ['a']=z_axis, ['t']=11.232927, ['s']=6.000000},
			{['c']='turn',['p']=piei, ['a']=x_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=piei, ['a']=y_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=piei, ['a']=z_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=base, ['a']=x_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=base, ['a']=y_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=base, ['a']=z_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='move',['p']=base, ['a']=x_axis, ['t']=0.035458, ['s']=6.000000},
			{['c']='move',['p']=base, ['a']=y_axis, ['t']=-0.755547, ['s']=6.000000},
			{['c']='move',['p']=base, ['a']=z_axis, ['t']=42.280422, ['s']=6.000000},
		}
	},
}

Animations['moveAnimation'] = {
	{
		['time'] = 0,
		['commands'] = {
			{['c']='move',['p']=pied, ['a']=x_axis, ['t']=16.718996, ['s']=0.000000},
			{['c']='move',['p']=pied, ['a']=y_axis, ['t']=4.375984, ['s']=0.000000},
			{['c']='move',['p']=pied, ['a']=z_axis, ['t']=11.304741, ['s']=0.000000},
			{['c']='turn',['p']=pied, ['a']=x_axis, ['t']=0.820481, ['s']=1.701201},
			{['c']='turn',['p']=pied, ['a']=y_axis, ['t']=-0.000000, ['s']=0.000000},
			{['c']='turn',['p']=pied, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=caderas, ['a']=x_axis, ['t']=0.184311, ['s']=0.000000},
			{['c']='move',['p']=caderas, ['a']=y_axis, ['t']=-0.441614, ['s']=0.000000},
			{['c']='move',['p']=caderas, ['a']=z_axis, ['t']=25.199408, ['s']=0.000000},
			{['c']='turn',['p']=caderas, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=caderas, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=caderas, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=piernai, ['a']=x_axis, ['t']=-12.344358, ['s']=0.000000},
			{['c']='move',['p']=piernai, ['a']=y_axis, ['t']=-0.553763, ['s']=0.000000},
			{['c']='move',['p']=piernai, ['a']=z_axis, ['t']=25.346201, ['s']=0.000000},
			{['c']='turn',['p']=piernai, ['a']=x_axis, ['t']=0.650488, ['s']=2.790036},
			{['c']='turn',['p']=piernai, ['a']=y_axis, ['t']=-0.000000, ['s']=0.000000},
			{['c']='turn',['p']=piernai, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=piernad, ['a']=x_axis, ['t']=-12.344358, ['s']=0.000000},
			{['c']='move',['p']=piernad, ['a']=y_axis, ['t']=-0.553763, ['s']=0.000000},
			{['c']='move',['p']=piernad, ['a']=z_axis, ['t']=25.346201, ['s']=0.000000},
			{['c']='turn',['p']=piernad, ['a']=x_axis, ['t']=-1.188313, ['s']=2.970679},
			{['c']='turn',['p']=piernad, ['a']=y_axis, ['t']=-0.000000, ['s']=0.000000},
			{['c']='turn',['p']=piernad, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=piei, ['a']=x_axis, ['t']=-16.535078, ['s']=0.000000},
			{['c']='move',['p']=piei, ['a']=y_axis, ['t']=4.375985, ['s']=0.000000},
			{['c']='move',['p']=piei, ['a']=z_axis, ['t']=11.232927, ['s']=0.000000},
			{['c']='turn',['p']=piei, ['a']=x_axis, ['t']=-0.182669, ['s']=1.533022},
			{['c']='turn',['p']=piei, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=piei, ['a']=z_axis, ['t']=-0.000000, ['s']=0.000000},
		}
	},
	{
		['time'] = 20,
		['commands'] = {
			{['c']='turn',['p']=pied, ['a']=x_axis, ['t']=-0.313653, ['s']=1.701201},
			{['c']='turn',['p']=piernai, ['a']=x_axis, ['t']=-1.209536, ['s']=2.790036},
			{['c']='turn',['p']=piernad, ['a']=x_axis, ['t']=0.792139, ['s']=2.970679},
			{['c']='turn',['p']=piei, ['a']=x_axis, ['t']=0.839346, ['s']=1.533022},
			{['c']='turn',['p']=piei, ['a']=y_axis, ['t']=-0.000000, ['s']=0.000000},
			{['c']='turn',['p']=piei, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
		}
	},
	{
		['time'] = 40,
		['commands'] = {
		}
	},
}

Animations['baseAnimation'] = {
	{
		['time'] = 0,
		['commands'] = {
			{['c']='turn',['p']=base, ['a']=x_axis, ['t']=-0.053060, ['s']=0.161541},
			{['c']='turn',['p']=base, ['a']=y_axis, ['t']=-0.060448, ['s']=0.207332},
			{['c']='turn',['p']=base, ['a']=z_axis, ['t']=0.166343, ['s']=0.402654},
			{['c']='move',['p']=base, ['a']=x_axis, ['t']=0.035458, ['s']=0.000000},
			{['c']='move',['p']=base, ['a']=y_axis, ['t']=-0.755547, ['s']=0.000000},
			{['c']='move',['p']=base, ['a']=z_axis, ['t']=42.280422, ['s']=0.000000},
		}
	},
	{
		['time'] = 20,
		['commands'] = {
			{['c']='turn',['p']=base, ['a']=x_axis, ['t']=0.054634, ['s']=0.161541},
			{['c']='turn',['p']=base, ['a']=y_axis, ['t']=0.077773, ['s']=0.207332},
			{['c']='turn',['p']=base, ['a']=z_axis, ['t']=-0.102093, ['s']=0.402654},
		}
	},
	{
		['time'] = 40,
		['commands'] = {
		}
	},
}

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

local function MoveBase()
	Signal(SIG_WALK1)
	SetSignalMask(SIG_WALK1)
	while true do
		if not isShooting then
			PlayAnimation('baseAnimation')
		end
		Sleep(0)
	end
end

local function RestorePose()
	Signal(SIG_WALK)
	Signal(SIG_WALK1)
	SetSignalMask(SIG_WALK)
	SetSignalMask(SIG_WALK1)
	PlayAnimation('resetAnimation')
end

local function RestoreShoot()
	Signal(SIG_RESTORE)
	SetSignalMask(SIG_RESTORE)
	Sleep(RESTORE_DELAY_SHOOT)
	isShooting = false
	
	PlayAnimation('resetAnimation')
	
	Turn(base, z_axis, 0, math.rad(125))
end

function script.StartMoving(heading)
	
	Turn(base, z_axis, heading, math.rad(125))
	
	StartThread (Walk)
	StartThread (MoveBase)
end

function script.StopMoving()
	isMoving = false
	StartThread(RestorePose)
end

---AIMING & SHOOTING---
function script.AimFromWeapon1()
	return base
end

function script.QueryWeapon1() 
	return flare1
end

function script.AimFromWeapon2()
	return base
end

function script.QueryWeapon2() 
	return flare2
end
--

function script.AimWeapon1( heading, pitch )
	--make sure the aiming animation is only run once
	Signal(SIG_AIM)
	SetSignalMask(SIG_AIM)
	isShooting = true
	Turn(base, z_axis, heading, math.rad(350))
	
	--wait until the weapon is pointed in the right direction
	WaitForTurn (base, z_axis)
	StartThread(RestoreShoot)
	return true
end

function script.AimWeapon2( heading, pitch )
	--make sure the aiming animation is only run once
	Signal(SIG_AIM1)
	SetSignalMask(SIG_AIM1)
	isShooting = true
	Turn(base, z_axis, heading, math.rad(350))
	
	--wait until the weapon is pointed in the right direction
	WaitForTurn (base, z_axis)
	StartThread(RestoreShoot)
	return true
end

--called after the weapon has fired
function script.FireWeapon1()
end

function script.FireWeapon2()
end

----death animation: fall over & explode
function script.Killed(recentDamage, maxHealth)

	Explode (base, SFX.FIRE)
	Explode (llamas, SFX.SHATTER)
	Explode (hombreras, SFX.FIRE)
	Explode (hombros, SFX.SHATTER)
	Explode (misil, SFX.SHATTER)

end
