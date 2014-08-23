local antebrazod = piece('antebrazod');
local antebrazoi = piece('antebrazoi');
local arma = piece('arma');
local baculo = piece('baculo');
local brazod = piece('brazod');
local brazoi = piece('brazoi');
local cabeza = piece('cabeza');
local capa = piece('capa');
local codod = piece('codod');
local codoi = piece('codoi');
local coxisd = piece('coxisd');
local coxisi = piece('coxisi');
local espinillad = piece('espinillad');
local espinillai = piece('espinillai');
local flare = piece('flare');
local hombrerad = piece('hombrerad');
local hombrerai = piece('hombrerai');
local hombrod = piece('hombrod');
local hombroi = piece('hombroi');
local manod = piece('manod');
local manoi = piece('manoi');
local munecad = piece('munecad');
local muslod = piece('muslod');
local musloi = piece('musloi');
local muñecai = piece('muñecai');
local pied = piece('pied');
local piei = piece('piei');
local rodillad = piece('rodillad');
local rodillai = piece('rodillai');
local root = piece('root');
local tobillod = piece('tobillod');
local tobilloi = piece('tobilloi');
local torso = piece('torso');
local Animations = {};

Animations['myAnimation'] = {
	{
		['time'] = 0,
		['commands'] = {
			{['c']='move',['p']=rodillad, ['a']=x_axis, ['t']=-3.659308, ['s']=0.000000},
			{['c']='move',['p']=rodillad, ['a']=y_axis, ['t']=8.181189, ['s']=0.000000},
			{['c']='move',['p']=rodillad, ['a']=z_axis, ['t']=12.647593, ['s']=0.000000},
			{['c']='turn',['p']=rodillad, ['a']=x_axis, ['t']=1.134464, ['s']=0.850848},
			{['c']='turn',['p']=rodillad, ['a']=y_axis, ['t']=-0.000000, ['s']=0.000000},
			{['c']='turn',['p']=rodillad, ['a']=z_axis, ['t']=-0.000000, ['s']=0.000000},
			{['c']='move',['p']=tobillod, ['a']=x_axis, ['t']=-3.659309, ['s']=0.000000},
			{['c']='move',['p']=tobillod, ['a']=y_axis, ['t']=17.440048, ['s']=0.000000},
			{['c']='move',['p']=tobillod, ['a']=z_axis, ['t']=6.775702, ['s']=0.000000},
			{['c']='turn',['p']=tobillod, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=tobillod, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=tobillod, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=coxisi, ['a']=x_axis, ['t']=2.748126, ['s']=0.000000},
			{['c']='move',['p']=coxisi, ['a']=y_axis, ['t']=1.765016, ['s']=0.000000},
			{['c']='move',['p']=coxisi, ['a']=z_axis, ['t']=21.668194, ['s']=0.000000},
			{['c']='turn',['p']=coxisi, ['a']=x_axis, ['t']=1.483530, ['s']=1.112647},
			{['c']='turn',['p']=coxisi, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=coxisi, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=tobilloi, ['a']=x_axis, ['t']=3.790755, ['s']=0.000000},
			{['c']='move',['p']=tobilloi, ['a']=y_axis, ['t']=2.273319, ['s']=0.000000},
			{['c']='move',['p']=tobilloi, ['a']=z_axis, ['t']=8.154437, ['s']=0.000000},
			{['c']='turn',['p']=tobilloi, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=tobilloi, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=tobilloi, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=rodillai, ['a']=x_axis, ['t']=3.790755, ['s']=0.000000},
			{['c']='move',['p']=rodillai, ['a']=y_axis, ['t']=-6.672185, ['s']=0.000000},
			{['c']='move',['p']=rodillai, ['a']=z_axis, ['t']=14.493479, ['s']=0.000000},
			{['c']='turn',['p']=rodillai, ['a']=x_axis, ['t']=-1.396263, ['s']=1.047198},
			{['c']='turn',['p']=rodillai, ['a']=y_axis, ['t']=-0.000000, ['s']=0.000000},
			{['c']='turn',['p']=rodillai, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=capa, ['a']=x_axis, ['t']=3.077024, ['s']=0.000000},
			{['c']='move',['p']=capa, ['a']=y_axis, ['t']=15.951614, ['s']=1.393355},
			{['c']='move',['p']=capa, ['a']=z_axis, ['t']=24.201754, ['s']=1.346656},
			{['c']='turn',['p']=capa, ['a']=x_axis, ['t']=0.174533, ['s']=0.130900},
			{['c']='turn',['p']=capa, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=capa, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=coxisd, ['a']=x_axis, ['t']=-2.597331, ['s']=0.000000},
			{['c']='move',['p']=coxisd, ['a']=y_axis, ['t']=1.765016, ['s']=0.000000},
			{['c']='move',['p']=coxisd, ['a']=z_axis, ['t']=21.668194, ['s']=0.000000},
			{['c']='turn',['p']=coxisd, ['a']=x_axis, ['t']=-1.134464, ['s']=0.850848},
			{['c']='turn',['p']=coxisd, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=coxisd, ['a']=z_axis, ['t']=-0.000000, ['s']=0.000000},
		}
	},
	{
		['time'] = 40,
		['commands'] = {
			{['c']='turn',['p']=rodillad, ['a']=x_axis, ['t']=0.000000, ['s']=0.850848},
			{['c']='turn',['p']=rodillad, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=rodillad, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=coxisi, ['a']=y_axis, ['t']=1.765016, ['s']=0.000000},
			{['c']='turn',['p']=coxisi, ['a']=x_axis, ['t']=0.000000, ['s']=1.112647},
			{['c']='turn',['p']=coxisi, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=coxisi, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=tobilloi, ['a']=x_axis, ['t']=3.790756, ['s']=0.000000},
			{['c']='move',['p']=tobilloi, ['a']=y_axis, ['t']=2.273320, ['s']=0.000000},
			{['c']='turn',['p']=rodillai, ['a']=x_axis, ['t']=0.000000, ['s']=1.047198},
			{['c']='turn',['p']=rodillai, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=rodillai, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=capa, ['a']=y_axis, ['t']=14.093807, ['s']=1.393355},
			{['c']='move',['p']=capa, ['a']=z_axis, ['t']=22.406212, ['s']=1.346656},
			{['c']='turn',['p']=capa, ['a']=x_axis, ['t']=0.000000, ['s']=0.130900},
			{['c']='turn',['p']=capa, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=capa, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=coxisd, ['a']=y_axis, ['t']=1.765016, ['s']=0.000000},
			{['c']='turn',['p']=coxisd, ['a']=x_axis, ['t']=0.000000, ['s']=0.850848},
			{['c']='turn',['p']=coxisd, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=coxisd, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
		}
	},
	{
		['time'] = 80,
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
            