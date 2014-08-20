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
local pie_izqzq = piece('pie_izqzq');
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
			{['c']='move',['p']=rodilla_izq, ['a']=x_axis, ['t']=-7.750053, ['s']=0.000000},
			{['c']='move',['p']=rodilla_izq, ['a']=y_axis, ['t']=-2.544123, ['s']=0.000000},
			{['c']='move',['p']=rodilla_izq, ['a']=z_axis, ['t']=12.865355, ['s']=0.000000},
			{['c']='turn',['p']=rodilla_izq, ['a']=x_axis, ['t']=-0.442706, ['s']=1.454411},
			{['c']='turn',['p']=rodilla_izq, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=rodilla_izq, ['a']=z_axis, ['t']=-0.000000, ['s']=0.000000},
			{['c']='move',['p']=tobillo_izq, ['a']=x_axis, ['t']=-7.545712, ['s']=0.000000},
			{['c']='move',['p']=tobillo_izq, ['a']=y_axis, ['t']=1.484898, ['s']=0.000000},
			{['c']='move',['p']=tobillo_izq, ['a']=z_axis, ['t']=3.576735, ['s']=0.000000},
			{['c']='turn',['p']=tobillo_izq, ['a']=x_axis, ['t']=0.244289, ['s']=0.758691},
			{['c']='turn',['p']=tobillo_izq, ['a']=y_axis, ['t']=-0.000000, ['s']=0.000000},
			{['c']='turn',['p']=tobillo_izq, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=tobillo_der, ['a']=x_axis, ['t']=8.232763, ['s']=0.000000},
			{['c']='move',['p']=tobillo_der, ['a']=y_axis, ['t']=1.241149, ['s']=0.000000},
			{['c']='move',['p']=tobillo_der, ['a']=z_axis, ['t']=3.464844, ['s']=0.000000},
			{['c']='turn',['p']=tobillo_der, ['a']=x_axis, ['t']=0.074767, ['s']=0.522084},
			{['c']='turn',['p']=tobillo_der, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=tobillo_der, ['a']=z_axis, ['t']=-0.000000, ['s']=0.000000},
			{['c']='move',['p']=patas_izq, ['a']=x_axis, ['t']=-6.572511, ['s']=0.000000},
			{['c']='move',['p']=patas_izq, ['a']=y_axis, ['t']=-0.015897, ['s']=0.000000},
			{['c']='move',['p']=patas_izq, ['a']=z_axis, ['t']=23.318037, ['s']=0.000000},
			{['c']='turn',['p']=patas_izq, ['a']=x_axis, ['t']=-0.404867, ['s']=3.609252},
			{['c']='turn',['p']=patas_izq, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=patas_izq, ['a']=z_axis, ['t']=-0.000000, ['s']=0.000000},
			{['c']='move',['p']=patas_der, ['a']=x_axis, ['t']=7.227016, ['s']=0.000000},
			{['c']='move',['p']=patas_der, ['a']=y_axis, ['t']=-0.030573, ['s']=0.000000},
			{['c']='move',['p']=patas_der, ['a']=z_axis, ['t']=23.343283, ['s']=0.000000},
			{['c']='turn',['p']=patas_der, ['a']=x_axis, ['t']=0.424778, ['s']=3.703124},
			{['c']='turn',['p']=patas_der, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=patas_der, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=rodilla_der, ['a']=x_axis, ['t']=8.147104, ['s']=0.000000},
			{['c']='move',['p']=rodilla_der, ['a']=y_axis, ['t']=-2.441278, ['s']=0.000000},
			{['c']='move',['p']=rodilla_der, ['a']=z_axis, ['t']=12.764065, ['s']=0.000000},
			{['c']='turn',['p']=rodilla_der, ['a']=x_axis, ['t']=-0.083705, ['s']=0.672000},
			{['c']='turn',['p']=rodilla_der, ['a']=y_axis, ['t']=-0.000000, ['s']=0.000000},
			{['c']='turn',['p']=rodilla_der, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
		}
	},
	{
		['time'] = 7,
		['commands'] = {
			{['c']='turn',['p']=rodilla_izq, ['a']=x_axis, ['t']=-0.103343, ['s']=1.272610},
			{['c']='turn',['p']=rodilla_izq, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=rodilla_izq, ['a']=z_axis, ['t']=-0.000000, ['s']=0.000000},
			{['c']='turn',['p']=tobillo_izq, ['a']=x_axis, ['t']=0.067261, ['s']=0.663855},
			{['c']='turn',['p']=tobillo_izq, ['a']=y_axis, ['t']=-0.000000, ['s']=0.000000},
			{['c']='turn',['p']=tobillo_izq, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=tobillo_der, ['a']=x_axis, ['t']=0.196586, ['s']=0.456824},
			{['c']='turn',['p']=tobillo_der, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=tobillo_der, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=patas_izq, ['a']=x_axis, ['t']=0.437292, ['s']=3.158096},
			{['c']='turn',['p']=patas_izq, ['a']=y_axis, ['t']=-0.000000, ['s']=0.000000},
			{['c']='turn',['p']=patas_izq, ['a']=z_axis, ['t']=-0.000000, ['s']=0.000000},
			{['c']='turn',['p']=patas_der, ['a']=x_axis, ['t']=-0.439284, ['s']=3.240234},
			{['c']='turn',['p']=patas_der, ['a']=y_axis, ['t']=-0.000000, ['s']=0.000000},
			{['c']='turn',['p']=patas_der, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=rodilla_der, ['a']=x_axis, ['t']=-0.240505, ['s']=0.588000},
			{['c']='turn',['p']=rodilla_der, ['a']=y_axis, ['t']=-0.000000, ['s']=0.000000},
			{['c']='turn',['p']=rodilla_der, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
		}
	},
	{
		['time'] = 15,
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
            