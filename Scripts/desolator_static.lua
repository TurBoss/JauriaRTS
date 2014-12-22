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

Animations['myAnimation'] = {
	{
		['time'] = 0,
		['commands'] = {
			{['c']='turn',['p']=piernad, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=piernad, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=piernad, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=piernad, ['a']=x_axis, ['t']=-6.848345, ['s']=0.000000},
			{['c']='move',['p']=piernad, ['a']=y_axis, ['t']=-2.705782, ['s']=0.000000},
			{['c']='move',['p']=piernad, ['a']=z_axis, ['t']=18.036428, ['s']=0.000000},
			{['c']='turn',['p']=misil1d, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=misil1d, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=misil1d, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=misil1d, ['a']=x_axis, ['t']=-13.833470, ['s']=0.000000},
			{['c']='move',['p']=misil1d, ['a']=y_axis, ['t']=-2.879540, ['s']=0.000000},
			{['c']='move',['p']=misil1d, ['a']=z_axis, ['t']=41.050724, ['s']=0.000000},
			{['c']='turn',['p']=base, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=base, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=base, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=base, ['a']=x_axis, ['t']=0.114615, ['s']=0.000000},
			{['c']='move',['p']=base, ['a']=y_axis, ['t']=-6.979334, ['s']=0.000000},
			{['c']='move',['p']=base, ['a']=z_axis, ['t']=28.330235, ['s']=0.000000},
			{['c']='turn',['p']=misil2i, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=misil2i, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=misil2i, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=misil2i, ['a']=x_axis, ['t']=16.600565, ['s']=0.000000},
			{['c']='move',['p']=misil2i, ['a']=y_axis, ['t']=-3.109591, ['s']=0.000000},
			{['c']='move',['p']=misil2i, ['a']=z_axis, ['t']=40.801071, ['s']=0.000000},
			{['c']='turn',['p']=flare1d, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=flare1d, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=flare1d, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=flare1d, ['a']=x_axis, ['t']=-13.833465, ['s']=0.000000},
			{['c']='move',['p']=flare1d, ['a']=y_axis, ['t']=-2.879537, ['s']=0.000000},
			{['c']='move',['p']=flare1d, ['a']=z_axis, ['t']=41.050724, ['s']=0.000000},
			{['c']='turn',['p']=caderas, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=caderas, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=caderas, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=caderas, ['a']=x_axis, ['t']=0.169184, ['s']=0.000000},
			{['c']='move',['p']=caderas, ['a']=y_axis, ['t']=-3.772745, ['s']=0.000000},
			{['c']='move',['p']=caderas, ['a']=z_axis, ['t']=17.280390, ['s']=0.000000},
			{['c']='turn',['p']=piei, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=piei, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=piei, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=piei, ['a']=x_axis, ['t']=-13.876249, ['s']=0.000000},
			{['c']='move',['p']=piei, ['a']=y_axis, ['t']=-0.134956, ['s']=0.000000},
			{['c']='move',['p']=piei, ['a']=z_axis, ['t']=4.660145, ['s']=0.000000},
			{['c']='turn',['p']=misil2d, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=misil2d, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=misil2d, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=misil2d, ['a']=x_axis, ['t']=-16.600561, ['s']=0.000000},
			{['c']='move',['p']=misil2d, ['a']=y_axis, ['t']=-3.109592, ['s']=0.000000},
			{['c']='move',['p']=misil2d, ['a']=z_axis, ['t']=40.801071, ['s']=0.000000},
			{['c']='turn',['p']=root, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=root, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=root, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=root, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=root, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=root, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=flare3i, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=flare3i, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=flare3i, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=flare3i, ['a']=x_axis, ['t']=19.411642, ['s']=0.000000},
			{['c']='move',['p']=flare3i, ['a']=y_axis, ['t']=-3.144315, ['s']=0.000000},
			{['c']='move',['p']=flare3i, ['a']=z_axis, ['t']=40.510990, ['s']=0.000000},
			{['c']='turn',['p']=hombros, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=hombros, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=hombros, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=hombros, ['a']=x_axis, ['t']=-0.000001, ['s']=0.000000},
			{['c']='move',['p']=hombros, ['a']=y_axis, ['t']=0.421598, ['s']=0.000000},
			{['c']='move',['p']=hombros, ['a']=z_axis, ['t']=32.584671, ['s']=0.000000},
			{['c']='turn',['p']=flare2d, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=flare2d, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=flare2d, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=flare2d, ['a']=x_axis, ['t']=-16.600559, ['s']=0.000000},
			{['c']='move',['p']=flare2d, ['a']=y_axis, ['t']=-3.109589, ['s']=0.000000},
			{['c']='move',['p']=flare2d, ['a']=z_axis, ['t']=40.801067, ['s']=0.000000},
			{['c']='turn',['p']=pied, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=pied, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=pied, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=pied, ['a']=x_axis, ['t']=14.079788, ['s']=0.000000},
			{['c']='move',['p']=pied, ['a']=y_axis, ['t']=-0.134961, ['s']=0.000000},
			{['c']='move',['p']=pied, ['a']=z_axis, ['t']=4.660150, ['s']=0.000000},
			{['c']='turn',['p']=misil3i, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=misil3i, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=misil3i, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=misil3i, ['a']=x_axis, ['t']=19.411646, ['s']=0.000000},
			{['c']='move',['p']=misil3i, ['a']=y_axis, ['t']=-3.144318, ['s']=0.000000},
			{['c']='move',['p']=misil3i, ['a']=z_axis, ['t']=40.510994, ['s']=0.000000},
			{['c']='turn',['p']=misil3d, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=misil3d, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=misil3d, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=misil3d, ['a']=x_axis, ['t']=-19.411642, ['s']=0.000000},
			{['c']='move',['p']=misil3d, ['a']=y_axis, ['t']=-3.144320, ['s']=0.000000},
			{['c']='move',['p']=misil3d, ['a']=z_axis, ['t']=40.511002, ['s']=0.000000},
			{['c']='turn',['p']=misil1i, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=misil1i, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=misil1i, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=misil1i, ['a']=x_axis, ['t']=13.833472, ['s']=0.000000},
			{['c']='move',['p']=misil1i, ['a']=y_axis, ['t']=-2.879538, ['s']=0.000000},
			{['c']='move',['p']=misil1i, ['a']=z_axis, ['t']=41.050716, ['s']=0.000000},
			{['c']='turn',['p']=flare2i, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=flare2i, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=flare2i, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=flare2i, ['a']=x_axis, ['t']=16.600565, ['s']=0.000000},
			{['c']='move',['p']=flare2i, ['a']=y_axis, ['t']=-3.109588, ['s']=0.000000},
			{['c']='move',['p']=flare2i, ['a']=z_axis, ['t']=40.801071, ['s']=0.000000},
			{['c']='turn',['p']=flare1i, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=flare1i, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=flare1i, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=flare1i, ['a']=x_axis, ['t']=13.833472, ['s']=0.000000},
			{['c']='move',['p']=flare1i, ['a']=y_axis, ['t']=-2.879536, ['s']=0.000000},
			{['c']='move',['p']=flare1i, ['a']=z_axis, ['t']=41.050716, ['s']=0.000000},
			{['c']='turn',['p']=flare3d, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=flare3d, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=flare3d, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=flare3d, ['a']=x_axis, ['t']=-19.411638, ['s']=0.000000},
			{['c']='move',['p']=flare3d, ['a']=y_axis, ['t']=-3.144318, ['s']=0.000000},
			{['c']='move',['p']=flare3d, ['a']=z_axis, ['t']=40.510998, ['s']=0.000000},
			{['c']='turn',['p']=piernai, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=piernai, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=piernai, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=piernai, ['a']=x_axis, ['t']=-6.848345, ['s']=0.000000},
			{['c']='move',['p']=piernai, ['a']=y_axis, ['t']=-2.705782, ['s']=0.000000},
			{['c']='move',['p']=piernai, ['a']=z_axis, ['t']=18.036428, ['s']=0.000000},
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
            