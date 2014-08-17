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

Animations['myAnimation'] = {
	{
		['time'] = 0,
		['commands'] = {
			{['c']='move',['p']=arma1d, ['a']=x_axis, ['t']=-29.011292, ['s']=0.000000},
			{['c']='move',['p']=arma1d, ['a']=y_axis, ['t']=-1.598561, ['s']=0.000000},
			{['c']='move',['p']=arma1d, ['a']=z_axis, ['t']=58.522392, ['s']=0.000000},
			{['c']='turn',['p']=arma1d, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=arma1d, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=arma1d, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=cabeza, ['a']=x_axis, ['t']=1.511009, ['s']=0.000000},
			{['c']='move',['p']=cabeza, ['a']=y_axis, ['t']=10.183651, ['s']=0.000000},
			{['c']='move',['p']=cabeza, ['a']=z_axis, ['t']=130.491486, ['s']=0.000000},
			{['c']='turn',['p']=cabeza, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=cabeza, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=cabeza, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=brazo3d, ['a']=x_axis, ['t']=-27.355543, ['s']=0.000000},
			{['c']='move',['p']=brazo3d, ['a']=y_axis, ['t']=7.670572, ['s']=0.000000},
			{['c']='move',['p']=brazo3d, ['a']=z_axis, ['t']=65.139923, ['s']=0.000000},
			{['c']='turn',['p']=brazo3d, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=brazo3d, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=brazo3d, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=cuello, ['a']=x_axis, ['t']=1.483509, ['s']=0.000000},
			{['c']='move',['p']=cuello, ['a']=y_axis, ['t']=2.942648, ['s']=0.000000},
			{['c']='move',['p']=cuello, ['a']=z_axis, ['t']=114.620506, ['s']=0.000000},
			{['c']='turn',['p']=cuello, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=cuello, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=cuello, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=clavicula, ['a']=x_axis, ['t']=1.480470, ['s']=0.000000},
			{['c']='move',['p']=clavicula, ['a']=y_axis, ['t']=6.103587, ['s']=0.000000},
			{['c']='move',['p']=clavicula, ['a']=z_axis, ['t']=109.489265, ['s']=0.000000},
			{['c']='turn',['p']=clavicula, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=clavicula, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=clavicula, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=cuernos, ['a']=x_axis, ['t']=1.451629, ['s']=0.000000},
			{['c']='move',['p']=cuernos, ['a']=y_axis, ['t']=2.582277, ['s']=0.000000},
			{['c']='move',['p']=cuernos, ['a']=z_axis, ['t']=126.621719, ['s']=0.000000},
			{['c']='turn',['p']=cuernos, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=cuernos, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=cuernos, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=torso, ['a']=x_axis, ['t']=1.014608, ['s']=0.000000},
			{['c']='move',['p']=torso, ['a']=y_axis, ['t']=5.136977, ['s']=0.000000},
			{['c']='move',['p']=torso, ['a']=z_axis, ['t']=107.445786, ['s']=0.000000},
			{['c']='turn',['p']=torso, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=torso, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=torso, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=arma1i, ['a']=x_axis, ['t']=32.267609, ['s']=0.000000},
			{['c']='move',['p']=arma1i, ['a']=y_axis, ['t']=-6.673658, ['s']=0.000000},
			{['c']='move',['p']=arma1i, ['a']=z_axis, ['t']=72.538712, ['s']=0.000000},
			{['c']='turn',['p']=arma1i, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=arma1i, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=arma1i, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=caneya, ['a']=x_axis, ['t']=0.982041, ['s']=0.000000},
			{['c']='move',['p']=caneya, ['a']=y_axis, ['t']=-3.292593, ['s']=0.000000},
			{['c']='move',['p']=caneya, ['a']=z_axis, ['t']=60.684231, ['s']=0.000000},
			{['c']='turn',['p']=caneya, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=caneya, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=caneya, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=hombro1i, ['a']=x_axis, ['t']=22.778013, ['s']=0.000000},
			{['c']='move',['p']=hombro1i, ['a']=y_axis, ['t']=1.860949, ['s']=0.000000},
			{['c']='move',['p']=hombro1i, ['a']=z_axis, ['t']=108.839905, ['s']=0.000000},
			{['c']='turn',['p']=hombro1i, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=hombro1i, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=hombro1i, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=root, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=root, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=root, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=root, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=root, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=root, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
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
			{['c']='move',['p']=brazo2i, ['a']=x_axis, ['t']=28.933701, ['s']=0.000000},
			{['c']='move',['p']=brazo2i, ['a']=y_axis, ['t']=5.642687, ['s']=0.000000},
			{['c']='move',['p']=brazo2i, ['a']=z_axis, ['t']=79.604263, ['s']=0.000000},
			{['c']='turn',['p']=brazo2i, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=brazo2i, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=brazo2i, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=brazo1d, ['a']=x_axis, ['t']=-20.813293, ['s']=0.000000},
			{['c']='move',['p']=brazo1d, ['a']=y_axis, ['t']=4.446927, ['s']=0.000000},
			{['c']='move',['p']=brazo1d, ['a']=z_axis, ['t']=106.668930, ['s']=0.000000},
			{['c']='turn',['p']=brazo1d, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=brazo1d, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=brazo1d, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=pierna3i, ['a']=x_axis, ['t']=12.263413, ['s']=0.000000},
			{['c']='move',['p']=pierna3i, ['a']=y_axis, ['t']=0.176722, ['s']=0.000000},
			{['c']='move',['p']=pierna3i, ['a']=z_axis, ['t']=27.309969, ['s']=0.000000},
			{['c']='turn',['p']=pierna3i, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=pierna3i, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=pierna3i, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=pechera, ['a']=x_axis, ['t']=1.014609, ['s']=0.000000},
			{['c']='move',['p']=pechera, ['a']=y_axis, ['t']=-9.115234, ['s']=0.000000},
			{['c']='move',['p']=pechera, ['a']=z_axis, ['t']=107.575607, ['s']=0.000000},
			{['c']='turn',['p']=pechera, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=pechera, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=pechera, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=pierna2d, ['a']=x_axis, ['t']=-12.225275, ['s']=0.000000},
			{['c']='move',['p']=pierna2d, ['a']=y_axis, ['t']=-0.027953, ['s']=0.000000},
			{['c']='move',['p']=pierna2d, ['a']=z_axis, ['t']=54.116501, ['s']=0.000000},
			{['c']='turn',['p']=pierna2d, ['a']=x_axis, ['t']=0.693435, ['s']=1.069731},
			{['c']='turn',['p']=pierna2d, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=pierna2d, ['a']=z_axis, ['t']=-0.000000, ['s']=0.000001},
			{['c']='move',['p']=brazo1i, ['a']=x_axis, ['t']=23.260443, ['s']=0.000000},
			{['c']='move',['p']=brazo1i, ['a']=y_axis, ['t']=3.052528, ['s']=0.000000},
			{['c']='move',['p']=brazo1i, ['a']=z_axis, ['t']=106.668556, ['s']=0.000000},
			{['c']='turn',['p']=brazo1i, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=brazo1i, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=brazo1i, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=pie1d, ['a']=x_axis, ['t']=-12.609595, ['s']=0.000000},
			{['c']='move',['p']=pie1d, ['a']=y_axis, ['t']=14.602448, ['s']=0.000000},
			{['c']='move',['p']=pie1d, ['a']=z_axis, ['t']=5.020415, ['s']=0.000000},
			{['c']='turn',['p']=pie1d, ['a']=x_axis, ['t']=-0.077803, ['s']=0.334197},
			{['c']='turn',['p']=pie1d, ['a']=y_axis, ['t']=-0.000000, ['s']=0.000000},
			{['c']='turn',['p']=pie1d, ['a']=z_axis, ['t']=-0.000000, ['s']=0.000000},
			{['c']='move',['p']=brazo2d, ['a']=x_axis, ['t']=-27.526579, ['s']=0.000000},
			{['c']='move',['p']=brazo2d, ['a']=y_axis, ['t']=8.293580, ['s']=0.000000},
			{['c']='move',['p']=brazo2d, ['a']=z_axis, ['t']=81.171478, ['s']=0.000000},
			{['c']='turn',['p']=brazo2d, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=brazo2d, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=brazo2d, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=pie3i, ['a']=x_axis, ['t']=12.085826, ['s']=0.000000},
			{['c']='move',['p']=pie3i, ['a']=y_axis, ['t']=13.519422, ['s']=0.000000},
			{['c']='move',['p']=pie3i, ['a']=z_axis, ['t']=4.840281, ['s']=0.000000},
			{['c']='turn',['p']=pie3i, ['a']=x_axis, ['t']=0.355140, ['s']=0.355140},
			{['c']='turn',['p']=pie3i, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=pie3i, ['a']=z_axis, ['t']=-0.000000, ['s']=0.000000},
			{['c']='move',['p']=hombro1d, ['a']=x_axis, ['t']=-19.935610, ['s']=0.000000},
			{['c']='move',['p']=hombro1d, ['a']=y_axis, ['t']=1.860949, ['s']=0.000000},
			{['c']='move',['p']=hombro1d, ['a']=z_axis, ['t']=108.839905, ['s']=0.000000},
			{['c']='turn',['p']=hombro1d, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=hombro1d, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=hombro1d, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
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
            