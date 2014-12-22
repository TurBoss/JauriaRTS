local base = piece('base');
local caderas = piece('caderas');
local flare1d = piece('flare1d');
local flare1i = piece('flare1i');
local flare2d = piece('flare2d');
local flare2i = piece('flare2i');
local flare3d = piece('flare3d');
local flare3i = piece('flare3i');
local hombros = piece('hombros');
local misil1d = piece('misil1d');
local misil1i = piece('misil1i');
local misil2d = piece('misil2d');
local misil2i = piece('misil2i');
local misil3d = piece('misil3d');
local misil3i = piece('misil3i');
local pied = piece('pied');
local piei = piece('piei');
local piernad = piece('piernad');
local piernai = piece('piernai');
local root = piece('root');
local Animations = {};

Animations['moveAnimation'] = {
	{
		['time'] = 0,
		['commands'] = {
			{['c']='turn',['p']=piernad, ['a']=x_axis, ['t']=-0.769492, ['s']=1.299775},
			{['c']='turn',['p']=piernad, ['a']=y_axis, ['t']=0.021305, ['s']=0.026849},
			{['c']='turn',['p']=piernad, ['a']=z_axis, ['t']=0.011672, ['s']=0.011979},
			{['c']='move',['p']=piernad, ['a']=x_axis, ['t']=-6.848345, ['s']=0.000000},
			{['c']='move',['p']=piernad, ['a']=y_axis, ['t']=-2.705782, ['s']=0.000000},
			{['c']='move',['p']=piernad, ['a']=z_axis, ['t']=18.036428, ['s']=0.000000},
			{['c']='turn',['p']=piernai, ['a']=x_axis, ['t']=0.454845, ['s']=1.182569},
			{['c']='turn',['p']=piernai, ['a']=y_axis, ['t']=-0.000000, ['s']=0.000000},
			{['c']='turn',['p']=piernai, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=piernai, ['a']=x_axis, ['t']=-6.848345, ['s']=0.000000},
			{['c']='move',['p']=piernai, ['a']=y_axis, ['t']=-2.705782, ['s']=0.000000},
			{['c']='move',['p']=piernai, ['a']=z_axis, ['t']=18.036428, ['s']=0.000000},
		}
	},
	{
		['time'] = 30,
		['commands'] = {
			{['c']='turn',['p']=piernad, ['a']=x_axis, ['t']=0.530283, ['s']=1.299775},
			{['c']='turn',['p']=piernad, ['a']=y_axis, ['t']=-0.005544, ['s']=0.026849},
			{['c']='turn',['p']=piernad, ['a']=z_axis, ['t']=0.023651, ['s']=0.011979},
			{['c']='turn',['p']=piernai, ['a']=x_axis, ['t']=-0.727723, ['s']=1.182569},
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
            
