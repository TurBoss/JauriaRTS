local cabeza = piece('cabeza');
local canon_der = piece('canon_der');
local canon_izq = piece('canon_izq');
local espinilla_der = piece('espinilla_der');
local espinillas_izq = piece('espinillas_izq');
local flare_der = piece('flare_der');
local flare_izq = piece('flare_izq');
local hombrera_der = piece('hombrera_der');
local hombrera_izq = piece('hombrera_izq');
local patas_der = piece('patas_der');
local patas_izq = piece('patas_izq');
local pie_der = piece('pie_der');
local pie_izq = piece('pie_izq');
local rodilla_der = piece('rodilla_der');
local rodilla_izq = piece('rodilla_izq');
local root = piece('root');
local sobaco = piece('sobaco');
local tobillo_der = piece('tobillo_der');
local tobillo_izq = piece('tobillo_izq');
local torre_der = piece('torre_der');
local torre_izq = piece('torre_izq');
local Animations = {};

Animations['myAnimation'] = {
	{
		['time'] = 0,
		['commands'] = {
			{['c']='turn',['p']=tobillo_der, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=tobillo_der, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=tobillo_der, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=tobillo_der, ['a']=x_axis, ['t']=4.197176, ['s']=0.000000},
			{['c']='move',['p']=tobillo_der, ['a']=y_axis, ['t']=-0.989708, ['s']=0.000000},
			{['c']='move',['p']=tobillo_der, ['a']=z_axis, ['t']=1.864918, ['s']=0.000000},
			{['c']='turn',['p']=espinilla_der, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=espinilla_der, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=espinilla_der, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=espinilla_der, ['a']=x_axis, ['t']=4.174383, ['s']=0.000000},
			{['c']='move',['p']=espinilla_der, ['a']=y_axis, ['t']=0.565578, ['s']=0.000000},
			{['c']='move',['p']=espinilla_der, ['a']=z_axis, ['t']=3.622518, ['s']=0.000000},
			{['c']='turn',['p']=pie_izq, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=pie_izq, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=pie_izq, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=pie_izq, ['a']=x_axis, ['t']=-3.737609, ['s']=0.000000},
			{['c']='move',['p']=pie_izq, ['a']=y_axis, ['t']=-0.402640, ['s']=0.000000},
			{['c']='move',['p']=pie_izq, ['a']=z_axis, ['t']=0.709235, ['s']=0.000000},
			{['c']='turn',['p']=tobillo_izq, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=tobillo_izq, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=tobillo_izq, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=tobillo_izq, ['a']=x_axis, ['t']=-3.720423, ['s']=0.000000},
			{['c']='move',['p']=tobillo_izq, ['a']=y_axis, ['t']=0.639594, ['s']=0.000000},
			{['c']='move',['p']=tobillo_izq, ['a']=z_axis, ['t']=1.853120, ['s']=0.000000},
			{['c']='turn',['p']=espinillas_izq, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=espinillas_izq, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=espinillas_izq, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=espinillas_izq, ['a']=x_axis, ['t']=-3.768878, ['s']=0.000000},
			{['c']='move',['p']=espinillas_izq, ['a']=y_axis, ['t']=2.063042, ['s']=0.000000},
			{['c']='move',['p']=espinillas_izq, ['a']=z_axis, ['t']=4.157358, ['s']=0.000000},
			{['c']='turn',['p']=rodilla_izq, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=rodilla_izq, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=rodilla_izq, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=rodilla_izq, ['a']=x_axis, ['t']=-3.836459, ['s']=0.000000},
			{['c']='move',['p']=rodilla_izq, ['a']=y_axis, ['t']=3.827839, ['s']=0.000000},
			{['c']='move',['p']=rodilla_izq, ['a']=z_axis, ['t']=6.794750, ['s']=0.000000},
			{['c']='turn',['p']=patas_izq, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=patas_izq, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=patas_izq, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=patas_izq, ['a']=x_axis, ['t']=-3.167796, ['s']=0.000000},
			{['c']='move',['p']=patas_izq, ['a']=y_axis, ['t']=-0.321007, ['s']=0.000000},
			{['c']='move',['p']=patas_izq, ['a']=z_axis, ['t']=10.910730, ['s']=0.000000},
			{['c']='turn',['p']=pie_der, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=pie_der, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=pie_der, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=pie_der, ['a']=x_axis, ['t']=4.237518, ['s']=0.000000},
			{['c']='move',['p']=pie_der, ['a']=y_axis, ['t']=-1.658226, ['s']=0.000000},
			{['c']='move',['p']=pie_der, ['a']=z_axis, ['t']=0.702982, ['s']=0.000000},
			{['c']='turn',['p']=rodilla_der, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=rodilla_der, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=rodilla_der, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=rodilla_der, ['a']=x_axis, ['t']=4.148533, ['s']=0.000000},
			{['c']='move',['p']=rodilla_der, ['a']=y_axis, ['t']=2.525503, ['s']=0.000000},
			{['c']='move',['p']=rodilla_der, ['a']=z_axis, ['t']=5.716776, ['s']=0.000000},
			{['c']='turn',['p']=patas_der, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=patas_der, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=patas_der, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=patas_der, ['a']=x_axis, ['t']=3.626065, ['s']=0.000000},
			{['c']='move',['p']=patas_der, ['a']=y_axis, ['t']=-0.476768, ['s']=0.000000},
			{['c']='move',['p']=patas_der, ['a']=z_axis, ['t']=10.924619, ['s']=0.000000},
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
            