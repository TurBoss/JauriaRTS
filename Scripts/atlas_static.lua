local antebrazod = piece('antebrazod');
local antebrazoi = piece('antebrazoi');
local armadura = piece('armadura');
local caderad = piece('caderad');
local caderai = piece('caderai');
local codo = piece('codo');
local codod = piece('codod');
local craneo = piece('craneo');
local culo = piece('culo');
local flare1 = piece('flare1');
local flare2 = piece('flare2');
local municiones = piece('municiones');
local piernai = piece('piernai');
local pipa = piece('pipa');
local Point = piece('Point');
local rodillad = piece('rodillad');
local root = piece('root');
local Sun = piece('Sun');
local tobillod = piece('tobillod');
local tobilloi = piece('tobilloi');
local Animations = {};

Animations['resetAnimation'] = {
	{
		['time'] = 0,
		['commands'] = {
			{['c']='turn',['p']=flare1, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=flare1, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=flare1, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=flare1, ['a']=x_axis, ['t']=-20.996115, ['s']=0.000000},
			{['c']='move',['p']=flare1, ['a']=y_axis, ['t']=-32.395126, ['s']=0.000000},
			{['c']='move',['p']=flare1, ['a']=z_axis, ['t']=73.764320, ['s']=0.000000},
			{['c']='turn',['p']=root, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=root, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=root, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=root, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=root, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=root, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=Sun, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=Sun, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=Sun, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=Sun, ['a']=x_axis, ['t']=-1.016602, ['s']=0.000000},
			{['c']='move',['p']=Sun, ['a']=y_axis, ['t']=-216.613556, ['s']=0.000000},
			{['c']='move',['p']=Sun, ['a']=z_axis, ['t']=312.850952, ['s']=0.000000},
			{['c']='turn',['p']=codo, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=codo, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=codo, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=codo, ['a']=x_axis, ['t']=20.519814, ['s']=0.000000},
			{['c']='move',['p']=codo, ['a']=y_axis, ['t']=2.573098, ['s']=0.000000},
			{['c']='move',['p']=codo, ['a']=z_axis, ['t']=74.103271, ['s']=0.000000},
			{['c']='turn',['p']=pipa, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=pipa, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=pipa, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=pipa, ['a']=x_axis, ['t']=18.538651, ['s']=0.000000},
			{['c']='move',['p']=pipa, ['a']=y_axis, ['t']=-24.885750, ['s']=0.000000},
			{['c']='move',['p']=pipa, ['a']=z_axis, ['t']=77.787109, ['s']=0.000000},
			{['c']='turn',['p']=armadura, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=armadura, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=armadura, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=armadura, ['a']=x_axis, ['t']=-0.791543, ['s']=0.000000},
			{['c']='move',['p']=armadura, ['a']=y_axis, ['t']=-0.004707, ['s']=0.000000},
			{['c']='move',['p']=armadura, ['a']=z_axis, ['t']=100.850334, ['s']=0.000000},
			{['c']='turn',['p']=piernai, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=piernai, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=piernai, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=piernai, ['a']=x_axis, ['t']=15.447170, ['s']=0.000000},
			{['c']='move',['p']=piernai, ['a']=y_axis, ['t']=2.955535, ['s']=0.000000},
			{['c']='move',['p']=piernai, ['a']=z_axis, ['t']=27.053267, ['s']=0.000000},
			{['c']='turn',['p']=caderai, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=caderai, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=caderai, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=caderai, ['a']=x_axis, ['t']=5.624060, ['s']=0.000000},
			{['c']='move',['p']=caderai, ['a']=y_axis, ['t']=4.110216, ['s']=0.000000},
			{['c']='move',['p']=caderai, ['a']=z_axis, ['t']=62.054893, ['s']=0.000000},
			{['c']='turn',['p']=flare2, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=flare2, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=flare2, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=flare2, ['a']=x_axis, ['t']=19.108122, ['s']=0.000000},
			{['c']='move',['p']=flare2, ['a']=y_axis, ['t']=-46.544083, ['s']=0.000000},
			{['c']='move',['p']=flare2, ['a']=z_axis, ['t']=77.083801, ['s']=0.000000},
			{['c']='turn',['p']=antebrazoi, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=antebrazoi, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=antebrazoi, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=antebrazoi, ['a']=x_axis, ['t']=18.773994, ['s']=0.000000},
			{['c']='move',['p']=antebrazoi, ['a']=y_axis, ['t']=5.682662, ['s']=0.000000},
			{['c']='move',['p']=antebrazoi, ['a']=z_axis, ['t']=94.012779, ['s']=0.000000},
			{['c']='turn',['p']=tobillod, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=tobillod, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=tobillod, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=tobillod, ['a']=x_axis, ['t']=-18.394394, ['s']=0.000000},
			{['c']='move',['p']=tobillod, ['a']=y_axis, ['t']=3.140447, ['s']=0.000000},
			{['c']='move',['p']=tobillod, ['a']=z_axis, ['t']=8.006974, ['s']=0.000000},
			{['c']='turn',['p']=caderad, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=caderad, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=caderad, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=caderad, ['a']=x_axis, ['t']=-3.561761, ['s']=0.000000},
			{['c']='move',['p']=caderad, ['a']=y_axis, ['t']=4.306555, ['s']=0.000000},
			{['c']='move',['p']=caderad, ['a']=z_axis, ['t']=62.079319, ['s']=0.000000},
			{['c']='turn',['p']=codod, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=codod, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=codod, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=codod, ['a']=x_axis, ['t']=-21.535154, ['s']=0.000000},
			{['c']='move',['p']=codod, ['a']=y_axis, ['t']=1.731280, ['s']=0.000000},
			{['c']='move',['p']=codod, ['a']=z_axis, ['t']=73.968239, ['s']=0.000000},
			{['c']='turn',['p']=municiones, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=municiones, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=municiones, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=municiones, ['a']=x_axis, ['t']=-18.778444, ['s']=0.000000},
			{['c']='move',['p']=municiones, ['a']=y_axis, ['t']=2.851979, ['s']=0.000000},
			{['c']='move',['p']=municiones, ['a']=z_axis, ['t']=58.667179, ['s']=0.000000},
			{['c']='turn',['p']=tobilloi, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=tobilloi, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=tobilloi, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=tobilloi, ['a']=x_axis, ['t']=18.167645, ['s']=0.000000},
			{['c']='move',['p']=tobilloi, ['a']=y_axis, ['t']=3.355626, ['s']=0.000000},
			{['c']='move',['p']=tobilloi, ['a']=z_axis, ['t']=7.454618, ['s']=0.000000},
			{['c']='turn',['p']=Point, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=Point, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=Point, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=Point, ['a']=x_axis, ['t']=-3.158325, ['s']=0.000000},
			{['c']='move',['p']=Point, ['a']=y_axis, ['t']=-33.782402, ['s']=0.000000},
			{['c']='move',['p']=Point, ['a']=z_axis, ['t']=110.625984, ['s']=0.000000},
			{['c']='turn',['p']=antebrazod, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=antebrazod, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=antebrazod, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=antebrazod, ['a']=x_axis, ['t']=18.773994, ['s']=0.000000},
			{['c']='move',['p']=antebrazod, ['a']=y_axis, ['t']=5.682662, ['s']=0.000000},
			{['c']='move',['p']=antebrazod, ['a']=z_axis, ['t']=94.012779, ['s']=0.000000},
			{['c']='turn',['p']=culo, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=culo, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=culo, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=culo, ['a']=x_axis, ['t']=-0.656127, ['s']=0.000000},
			{['c']='move',['p']=culo, ['a']=y_axis, ['t']=2.848216, ['s']=0.000000},
			{['c']='move',['p']=culo, ['a']=z_axis, ['t']=64.370842, ['s']=0.000000},
			{['c']='turn',['p']=rodillad, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=rodillad, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=rodillad, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=rodillad, ['a']=x_axis, ['t']=-16.460377, ['s']=0.000000},
			{['c']='move',['p']=rodillad, ['a']=y_axis, ['t']=2.400909, ['s']=0.000000},
			{['c']='move',['p']=rodillad, ['a']=z_axis, ['t']=27.233105, ['s']=0.000000},
			{['c']='turn',['p']=craneo, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=craneo, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=craneo, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=craneo, ['a']=x_axis, ['t']=-0.481897, ['s']=0.000000},
			{['c']='move',['p']=craneo, ['a']=y_axis, ['t']=-0.852010, ['s']=0.000000},
			{['c']='move',['p']=craneo, ['a']=z_axis, ['t']=96.179024, ['s']=0.000000},
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
            
