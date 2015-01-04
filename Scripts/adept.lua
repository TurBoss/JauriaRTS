
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

Animations['resetAnimation'] = {
	{
		['time'] = 0,
		['commands'] = {
			{['c']='move',['p']=bola3, ['a']=x_axis, ['t']=-0.308980, ['s']=0.000000},
			{['c']='move',['p']=bola3, ['a']=y_axis, ['t']=17.319675, ['s']=15.637948},
			{['c']='move',['p']=bola3, ['a']=z_axis, ['t']=16.563910, ['s']=5.931636},
			{['c']='turn',['p']=bola3, ['a']=x_axis, ['t']=0.653511, ['s']=0.690609},
			{['c']='turn',['p']=bola3, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=bola3, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=bola1, ['a']=x_axis, ['t']=-0.308980, ['s']=0.000000},
			{['c']='move',['p']=bola1, ['a']=y_axis, ['t']=30.429237, ['s']=0.000000},
			{['c']='move',['p']=bola1, ['a']=z_axis, ['t']=17.353741, ['s']=0.000000},
			{['c']='turn',['p']=bola1, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=bola1, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=bola1, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=cuello1, ['a']=x_axis, ['t']=-0.308982, ['s']=0.000000},
			{['c']='move',['p']=cuello1, ['a']=y_axis, ['t']=22.065281, ['s']=0.000000},
			{['c']='move',['p']=cuello1, ['a']=z_axis, ['t']=17.393112, ['s']=0.000000},
			{['c']='turn',['p']=cuello1, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=cuello1, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=cuello1, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=bola2, ['a']=x_axis, ['t']=-0.308980, ['s']=0.000000},
			{['c']='move',['p']=bola2, ['a']=y_axis, ['t']=14.917778, ['s']=0.000000},
			{['c']='move',['p']=bola2, ['a']=z_axis, ['t']=17.304291, ['s']=0.000000},
			{['c']='turn',['p']=bola2, ['a']=x_axis, ['t']=0.444771, ['s']=1.871617},
			{['c']='turn',['p']=bola2, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=bola2, ['a']=z_axis, ['t']=-0.000000, ['s']=0.000000},
			{['c']='move',['p']=tapa, ['a']=x_axis, ['t']=-0.308983, ['s']=0.000000},
			{['c']='move',['p']=tapa, ['a']=y_axis, ['t']=17.465088, ['s']=0.000000},
			{['c']='move',['p']=tapa, ['a']=z_axis, ['t']=27.012741, ['s']=0.000000},
			{['c']='turn',['p']=tapa, ['a']=x_axis, ['t']=2.111830, ['s']=1.397275},
			{['c']='turn',['p']=tapa, ['a']=y_axis, ['t']=-0.000000, ['s']=0.000000},
			{['c']='turn',['p']=tapa, ['a']=z_axis, ['t']=-0.000000, ['s']=0.000000},
			{['c']='move',['p']=cuello2, ['a']=x_axis, ['t']=-0.308983, ['s']=0.000000},
			{['c']='move',['p']=cuello2, ['a']=y_axis, ['t']=8.396549, ['s']=0.000000},
			{['c']='move',['p']=cuello2, ['a']=z_axis, ['t']=17.488117, ['s']=0.000000},
			{['c']='turn',['p']=cuello2, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=cuello2, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=cuello2, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=cabeza, ['a']=x_axis, ['t']=-0.308982, ['s']=0.000000},
			{['c']='move',['p']=cabeza, ['a']=y_axis, ['t']=35.866341, ['s']=0.000000},
			{['c']='move',['p']=cabeza, ['a']=z_axis, ['t']=16.917122, ['s']=0.000000},
			{['c']='turn',['p']=cabeza, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=cabeza, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=cabeza, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
		}
	},
	{
		['time'] = 20,
		['commands'] = {
			{['c']='move',['p']=bola3, ['a']=y_axis, ['t']=-2.632193, ['s']=29.927802},
			{['c']='move',['p']=bola3, ['a']=z_axis, ['t']=16.923403, ['s']=0.539240},
			{['c']='turn',['p']=bola3, ['a']=x_axis, ['t']=-0.000616, ['s']=0.981190},
			{['c']='turn',['p']=bola3, ['a']=y_axis, ['t']=-0.000000, ['s']=0.000000},
			{['c']='turn',['p']=bola3, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=bola2, ['a']=x_axis, ['t']=0.013805, ['s']=0.646449},
			{['c']='turn',['p']=bola2, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=bola2, ['a']=z_axis, ['t']=-0.000000, ['s']=0.000000},
			{['c']='turn',['p']=tapa, ['a']=x_axis, ['t']=0.746822, ['s']=2.047511},
			{['c']='turn',['p']=tapa, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=tapa, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
		}
	},
	{
		['time'] = 40,
		['commands'] = {
			{['c']='turn',['p']=tapa, ['a']=x_axis, ['t']=-0.005380, ['s']=1.128304},
			{['c']='turn',['p']=tapa, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=tapa, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
		}
	},
	{
		['time'] = 60,
		['commands'] = {
		}
	},

}

Animations['openAnimation'] = {
	{
		['time'] = 0,
		['commands'] = {
			{['c']='move',['p']=bola3, ['a']=x_axis, ['t']=-0.308980, ['s']=0.000000},
			{['c']='move',['p']=bola3, ['a']=y_axis, ['t']=2.041219, ['s']=0.000000},
			{['c']='move',['p']=bola3, ['a']=z_axis, ['t']=17.462643, ['s']=0.000000},
			{['c']='turn',['p']=bola3, ['a']=x_axis, ['t']=0.002772, ['s']=0.000000},
			{['c']='turn',['p']=bola3, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=bola3, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=bola1, ['a']=x_axis, ['t']=-0.308980, ['s']=0.000000},
			{['c']='move',['p']=bola1, ['a']=y_axis, ['t']=30.429237, ['s']=0.000000},
			{['c']='move',['p']=bola1, ['a']=z_axis, ['t']=17.353741, ['s']=0.000000},
			{['c']='turn',['p']=bola1, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=bola1, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=bola1, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=cuello1, ['a']=x_axis, ['t']=-0.308982, ['s']=0.000000},
			{['c']='move',['p']=cuello1, ['a']=y_axis, ['t']=22.065281, ['s']=0.000000},
			{['c']='move',['p']=cuello1, ['a']=z_axis, ['t']=17.393112, ['s']=0.000000},
			{['c']='turn',['p']=cuello1, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=cuello1, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=cuello1, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=bola2, ['a']=x_axis, ['t']=-0.308980, ['s']=0.000000},
			{['c']='move',['p']=bola2, ['a']=y_axis, ['t']=14.917778, ['s']=0.000000},
			{['c']='move',['p']=bola2, ['a']=z_axis, ['t']=17.304291, ['s']=0.000000},
			{['c']='turn',['p']=bola2, ['a']=x_axis, ['t']=0.598906, ['s']=0.894262},
			{['c']='turn',['p']=bola2, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=bola2, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=tapa, ['a']=x_axis, ['t']=-0.308983, ['s']=0.000000},
			{['c']='move',['p']=tapa, ['a']=y_axis, ['t']=17.465088, ['s']=0.000000},
			{['c']='move',['p']=tapa, ['a']=z_axis, ['t']=27.012741, ['s']=0.000000},
			{['c']='turn',['p']=tapa, ['a']=x_axis, ['t']=0.846474, ['s']=1.261448},
			{['c']='turn',['p']=tapa, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=tapa, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=cuello2, ['a']=x_axis, ['t']=-0.308983, ['s']=0.000000},
			{['c']='move',['p']=cuello2, ['a']=y_axis, ['t']=8.396549, ['s']=0.000000},
			{['c']='move',['p']=cuello2, ['a']=z_axis, ['t']=17.488117, ['s']=0.000000},
			{['c']='turn',['p']=cuello2, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=cuello2, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=cuello2, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=cabeza, ['a']=x_axis, ['t']=-0.308982, ['s']=0.000000},
			{['c']='move',['p']=cabeza, ['a']=y_axis, ['t']=35.866341, ['s']=0.000000},
			{['c']='move',['p']=cabeza, ['a']=z_axis, ['t']=16.917122, ['s']=0.000000},
			{['c']='turn',['p']=cabeza, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=cabeza, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=cabeza, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
		}
	},
	{
		['time'] = 20,
		['commands'] = {
			{['c']='move',['p']=bola3, ['a']=y_axis, ['t']=22.389072, ['s']=30.521780},
			{['c']='turn',['p']=bola3, ['a']=x_axis, ['t']=0.893434, ['s']=1.335994},
			{['c']='turn',['p']=bola3, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=bola3, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=bola2, ['a']=x_axis, ['t']=-0.113222, ['s']=1.068191},
			{['c']='turn',['p']=bola2, ['a']=y_axis, ['t']=-0.000000, ['s']=0.000000},
			{['c']='turn',['p']=bola2, ['a']=z_axis, ['t']=-0.000000, ['s']=0.000000},
			{['c']='turn',['p']=tapa, ['a']=x_axis, ['t']=2.192746, ['s']=2.019408},
			{['c']='turn',['p']=tapa, ['a']=y_axis, ['t']=-0.000000, ['s']=0.000000},
			{['c']='turn',['p']=tapa, ['a']=z_axis, ['t']=-0.000000, ['s']=0.000000},
		}
	},
	{
		['time'] = 40,
		['commands'] = {
			{['c']='move',['p']=bola3, ['a']=y_axis, ['t']=30.253580, ['s']=11.796762},
			{['c']='move',['p']=bola3, ['a']=z_axis, ['t']=23.704317, ['s']=9.362512},
			{['c']='turn',['p']=bola3, ['a']=x_axis, ['t']=1.379627, ['s']=0.729289},
			{['c']='turn',['p']=bola3, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=bola3, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=bola1, ['a']=x_axis, ['t']=-0.513898, ['s']=0.770847},
			{['c']='turn',['p']=bola1, ['a']=y_axis, ['t']=-0.000000, ['s']=0.000000},
			{['c']='turn',['p']=bola1, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=bola2, ['a']=x_axis, ['t']=-0.712238, ['s']=0.898524},
			{['c']='turn',['p']=bola2, ['a']=y_axis, ['t']=-0.000000, ['s']=0.000000},
			{['c']='turn',['p']=bola2, ['a']=z_axis, ['t']=-0.000000, ['s']=0.000000},
			{['c']='turn',['p']=tapa, ['a']=x_axis, ['t']=3.058491, ['s']=1.298617},
			{['c']='turn',['p']=tapa, ['a']=y_axis, ['t']=-0.000000, ['s']=0.000000},
			{['c']='turn',['p']=tapa, ['a']=z_axis, ['t']=-0.000000, ['s']=0.000000},
		}
	},
	{
		['time'] = 60,
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

local function Open()
	Signal(SIG_OPEN)
	SetSignalMask(SIG_OPEN)
	
	PlayAnimation('openAnimation')
	isCollecting = true
end

local function RestorePose()
	Signal(SIG_OPEN)
	SetSignalMask(SIG_OPEN)
	PlayAnimation('resetAnimation')
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
	--local tx, tz = Spring.GetUnitDirection(unitID)
	--Spring.Echo(tx)
	--Spring.Echo(tz)
	--GG.TurnUnit (unitID, unitDefID, tx, tz, forceTurnRate)
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
