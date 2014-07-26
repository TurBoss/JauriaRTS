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
local rootantena= piece('rootantena');

local Animations = {};

local SIG_WALK = 1	--signal for the walk animation thread

Animations['caminar'] = {
	{
		['time'] = 0,
		['commands'] = {
			{['c']='turn',['p']=laser, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=laser, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=laser, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=laser, ['a']=x_axis, ['t']=0.017118, ['s']=0.000000},
			{['c']='move',['p']=laser, ['a']=y_axis, ['t']=-5.578269, ['s']=0.000000},
			{['c']='move',['p']=laser, ['a']=z_axis, ['t']=8.354170, ['s']=0.000000},
			{['c']='turn',['p']=pata2d, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=pata2d, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=pata2d, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=pata2d, ['a']=x_axis, ['t']=6.896254, ['s']=0.000000},
			{['c']='move',['p']=pata2d, ['a']=y_axis, ['t']=5.535900, ['s']=0.000000},
			{['c']='move',['p']=pata2d, ['a']=z_axis, ['t']=4.055052, ['s']=0.000000},
			{['c']='turn',['p']=bola2i, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=bola2i, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=bola2i, ['a']=z_axis, ['t']=0.610865, ['s']=6.108652},
			{['c']='move',['p']=bola2i, ['a']=x_axis, ['t']=-2.795612, ['s']=0.000000},
			{['c']='move',['p']=bola2i, ['a']=y_axis, ['t']=5.644180, ['s']=0.000000},
			{['c']='move',['p']=bola2i, ['a']=z_axis, ['t']=5.226838, ['s']=0.000000},
			{['c']='turn',['p']=antena, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=antena, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=antena, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=antena, ['a']=x_axis, ['t']=0.055312, ['s']=0.000000},
			{['c']='move',['p']=antena, ['a']=y_axis, ['t']=0.351114, ['s']=0.000000},
			{['c']='move',['p']=antena, ['a']=z_axis, ['t']=12.504082, ['s']=0.000000},
			{['c']='turn',['p']=pata1i, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=pata1i, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=pata1i, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=pata1i, ['a']=x_axis, ['t']=-6.819871, ['s']=0.000000},
			{['c']='move',['p']=pata1i, ['a']=y_axis, ['t']=-1.426506, ['s']=0.000000},
			{['c']='move',['p']=pata1i, ['a']=z_axis, ['t']=4.055052, ['s']=0.000000},
			{['c']='turn',['p']=bola1i, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=bola1i, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=bola1i, ['a']=z_axis, ['t']=-0.523599, ['s']=5.235988},
			{['c']='move',['p']=bola1i, ['a']=x_axis, ['t']=-2.795612, ['s']=0.000000},
			{['c']='move',['p']=bola1i, ['a']=y_axis, ['t']=-1.534787, ['s']=0.000000},
			{['c']='move',['p']=bola1i, ['a']=z_axis, ['t']=5.226838, ['s']=0.000000},
			{['c']='turn',['p']=bola2d, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=bola2d, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=bola2d, ['a']=z_axis, ['t']=0.610865, ['s']=6.108652},
			{['c']='move',['p']=bola2d, ['a']=x_axis, ['t']=2.871994, ['s']=0.000000},
			{['c']='move',['p']=bola2d, ['a']=y_axis, ['t']=5.644180, ['s']=0.000000},
			{['c']='move',['p']=bola2d, ['a']=z_axis, ['t']=5.226838, ['s']=0.000000},
			{['c']='turn',['p']=chasis, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=chasis, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=chasis, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=chasis, ['a']=x_axis, ['t']=-0.000000, ['s']=0.000000},
			{['c']='move',['p']=chasis, ['a']=y_axis, ['t']=1.856993, ['s']=0.000000},
			{['c']='move',['p']=chasis, ['a']=z_axis, ['t']=7.060267, ['s']=0.000000},
			{['c']='turn',['p']=root, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=root, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=root, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=root, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=root, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=root, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=pata1d, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=pata1d, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=pata1d, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=pata1d, ['a']=x_axis, ['t']=6.896254, ['s']=0.000000},
			{['c']='move',['p']=pata1d, ['a']=y_axis, ['t']=-1.643069, ['s']=0.000000},
			{['c']='move',['p']=pata1d, ['a']=z_axis, ['t']=4.055052, ['s']=0.000000},
			{['c']='turn',['p']=bola1d, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=bola1d, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=bola1d, ['a']=z_axis, ['t']=-0.523599, ['s']=5.235988},
			{['c']='move',['p']=bola1d, ['a']=x_axis, ['t']=2.871994, ['s']=0.000000},
			{['c']='move',['p']=bola1d, ['a']=y_axis, ['t']=-1.534787, ['s']=0.000000},
			{['c']='move',['p']=bola1d, ['a']=z_axis, ['t']=5.226838, ['s']=0.000000},
			{['c']='turn',['p']=pata2i, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=pata2i, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=pata2i, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=pata2i, ['a']=x_axis, ['t']=-6.819871, ['s']=0.000000},
			{['c']='move',['p']=pata2i, ['a']=y_axis, ['t']=5.752462, ['s']=0.000000},
			{['c']='move',['p']=pata2i, ['a']=z_axis, ['t']=4.055052, ['s']=0.000000},
		}
	},
	{
		['time'] = 3,
		['commands'] = {
			{['c']='turn',['p']=bola2i, ['a']=z_axis, ['t']=-0.551953, ['s']=5.814089},
			{['c']='turn',['p']=bola1i, ['a']=z_axis, ['t']=0.610865, ['s']=5.672320},
			{['c']='turn',['p']=bola2d, ['a']=z_axis, ['t']=-0.549108, ['s']=5.799865},
			{['c']='turn',['p']=bola1d, ['a']=z_axis, ['t']=0.586831, ['s']=5.552148},
		}
	},
	{
		['time'] = 9,
		['commands'] = {
			{['c']='turn',['p']=bola2i, ['a']=z_axis, ['t']=-0.202887, ['s']=5.235987},
			{['c']='turn',['p']=bola1i, ['a']=z_axis, ['t']=0.261799, ['s']=5.235987},
			{['c']='turn',['p']=bola2d, ['a']=z_axis, ['t']=-0.112775, ['s']=6.544984},
			{['c']='turn',['p']=bola1d, ['a']=z_axis, ['t']=0.237765, ['s']=5.235987},
		}
	},
	{
		['time'] = 11,
		['commands'] = {
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
    Spin(rootantena, z_axis, math.rad(180))
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
		PlayAnimation('caminar')
	end
end

function script.StartMoving(heading)
	StartThread (caminapalante)
end

function script.StopMoving()
	--Spring.Echo ("stopped walking!")
	Signal(SIG_WALK)
end
