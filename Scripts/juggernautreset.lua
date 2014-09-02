local base = piece('base');
local caderas = piece('caderas');
local Empty = piece('Empty');
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
local Animations = {};

Animations['myAnimation'] = {
	{
		['time'] = 0,
		['commands'] = {
			{['c']='move',['p']=hombreras, ['a']=x_axis, ['t']=0.091954, ['s']=0.000000},
			{['c']='move',['p']=hombreras, ['a']=y_axis, ['t']=-3.831164, ['s']=0.000000},
			{['c']='move',['p']=hombreras, ['a']=z_axis, ['t']=41.211590, ['s']=0.000000},
			{['c']='turn',['p']=hombreras, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=hombreras, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=hombreras, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=hombros, ['a']=x_axis, ['t']=0.091961, ['s']=0.000000},
			{['c']='move',['p']=hombros, ['a']=y_axis, ['t']=-0.405578, ['s']=0.000000},
			{['c']='move',['p']=hombros, ['a']=z_axis, ['t']=40.286255, ['s']=0.000000},
			{['c']='turn',['p']=hombros, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=hombros, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=hombros, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=flare2, ['a']=x_axis, ['t']=-36.742764, ['s']=0.000000},
			{['c']='move',['p']=flare2, ['a']=y_axis, ['t']=-33.508026, ['s']=0.000000},
			{['c']='move',['p']=flare2, ['a']=z_axis, ['t']=35.115368, ['s']=0.000000},
			{['c']='turn',['p']=flare2, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=flare2, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=flare2, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=base, ['a']=x_axis, ['t']=0.035458, ['s']=0.000000},
			{['c']='move',['p']=base, ['a']=y_axis, ['t']=-0.755547, ['s']=0.000000},
			{['c']='move',['p']=base, ['a']=z_axis, ['t']=42.280422, ['s']=0.000000},
			{['c']='turn',['p']=base, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=base, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=base, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=root, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=root, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=root, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=root, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=root, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=root, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=misil, ['a']=x_axis, ['t']=32.813427, ['s']=0.000000},
			{['c']='move',['p']=misil, ['a']=y_axis, ['t']=-12.114715, ['s']=0.000000},
			{['c']='move',['p']=misil, ['a']=z_axis, ['t']=37.113865, ['s']=0.000000},
			{['c']='turn',['p']=misil, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=misil, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=misil, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=pied, ['a']=x_axis, ['t']=16.718996, ['s']=0.000000},
			{['c']='move',['p']=pied, ['a']=y_axis, ['t']=4.375984, ['s']=0.000000},
			{['c']='move',['p']=pied, ['a']=z_axis, ['t']=11.304741, ['s']=0.000000},
			{['c']='turn',['p']=pied, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=pied, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=pied, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=caderas, ['a']=x_axis, ['t']=0.184311, ['s']=0.000000},
			{['c']='move',['p']=caderas, ['a']=y_axis, ['t']=-0.441614, ['s']=0.000000},
			{['c']='move',['p']=caderas, ['a']=z_axis, ['t']=25.199408, ['s']=0.000000},
			{['c']='turn',['p']=caderas, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=caderas, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=caderas, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=Empty, ['a']=x_axis, ['t']=-12.344359, ['s']=0.000000},
			{['c']='move',['p']=Empty, ['a']=y_axis, ['t']=-0.553763, ['s']=0.000000},
			{['c']='move',['p']=Empty, ['a']=z_axis, ['t']=25.346203, ['s']=0.000000},
			{['c']='turn',['p']=Empty, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=Empty, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=Empty, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=piernai, ['a']=x_axis, ['t']=-12.344358, ['s']=0.000000},
			{['c']='move',['p']=piernai, ['a']=y_axis, ['t']=-0.553763, ['s']=0.000000},
			{['c']='move',['p']=piernai, ['a']=z_axis, ['t']=25.346201, ['s']=0.000000},
			{['c']='turn',['p']=piernai, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=piernai, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=piernai, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=piernad, ['a']=x_axis, ['t']=-12.344358, ['s']=0.000000},
			{['c']='move',['p']=piernad, ['a']=y_axis, ['t']=-0.553763, ['s']=0.000000},
			{['c']='move',['p']=piernad, ['a']=z_axis, ['t']=25.346201, ['s']=0.000000},
			{['c']='turn',['p']=piernad, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=piernad, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=piernad, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=llamas, ['a']=x_axis, ['t']=-34.251396, ['s']=0.000000},
			{['c']='move',['p']=llamas, ['a']=y_axis, ['t']=-22.054651, ['s']=0.000000},
			{['c']='move',['p']=llamas, ['a']=z_axis, ['t']=36.625675, ['s']=0.000000},
			{['c']='turn',['p']=llamas, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=llamas, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=llamas, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=flare1, ['a']=x_axis, ['t']=34.304169, ['s']=0.000000},
			{['c']='move',['p']=flare1, ['a']=y_axis, ['t']=-18.428467, ['s']=0.000000},
			{['c']='move',['p']=flare1, ['a']=z_axis, ['t']=37.113865, ['s']=0.000000},
			{['c']='turn',['p']=flare1, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=flare1, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=flare1, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=piei, ['a']=x_axis, ['t']=-16.535078, ['s']=0.000000},
			{['c']='move',['p']=piei, ['a']=y_axis, ['t']=4.375985, ['s']=0.000000},
			{['c']='move',['p']=piei, ['a']=z_axis, ['t']=11.232927, ['s']=0.000000},
			{['c']='turn',['p']=piei, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=piei, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=piei, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
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
            