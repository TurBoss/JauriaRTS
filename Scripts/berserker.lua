
--------------------------------------------------------------------------------
-- pieces
--------------------------------------------------------------------------------

local antebrazod = piece('antebrazod');
local antebrazoi = piece('antebrazoi');
local cabeza = piece('cabeza');
local entrepiernad = piece('entrepiernad');
local entrepiernai = piece('entrepiernai');
local flare = piece('flare');
local insignia = piece('insignia');
local lanzamisiles = piece('lanzamisiles');
local lanzamisiles002 = piece('lanzamisiles002');
local pied = piece('pied');
local piei = piece('piei');
local piernad = piece('piernad');
local piernai = piece('piernai');
local root = piece('root');
local torso = piece('torso');

--------------------------------------------------------------------------------
-- constants
--------------------------------------------------------------------------------


local SIG_WALK = 1
local SIG_AIM = 2

local SIG_RESTORE = 4

local RESTORE_DELAY_SHOOT = 4000

--------------------------------------------------------------------------------
-- vars
--------------------------------------------------------------------------------

local isMoving, isShooting = false, false

local smoke = SFX.CEG

--------------------------------------------------------------------------------
-- tables
--------------------------------------------------------------------------------

local Animations = {};

Animations['resetAnimation'] = {
	{
		['time'] = 0,
		['commands'] = {
			{['c']='turn',['p']=piernai, ['a']=x_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=piernai, ['a']=y_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=piernai, ['a']=z_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='move',['p']=piernai, ['a']=x_axis, ['t']=2.630750, ['s']=6.000000},
			{['c']='move',['p']=piernai, ['a']=y_axis, ['t']=-4.867675, ['s']=6.000000},
			{['c']='move',['p']=piernai, ['a']=z_axis, ['t']=7.957467, ['s']=6.000000},
			{['c']='turn',['p']=lanzamisiles, ['a']=x_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=lanzamisiles, ['a']=y_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=lanzamisiles, ['a']=z_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='move',['p']=lanzamisiles, ['a']=x_axis, ['t']=3.174897, ['s']=6.000000},
			{['c']='move',['p']=lanzamisiles, ['a']=y_axis, ['t']=-4.833875, ['s']=6.000000},
			{['c']='move',['p']=lanzamisiles, ['a']=z_axis, ['t']=20.454210, ['s']=6.000000},
			{['c']='turn',['p']=piei, ['a']=x_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=piei, ['a']=y_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=piei, ['a']=z_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='move',['p']=piei, ['a']=x_axis, ['t']=3.370781, ['s']=6.000000},
			{['c']='move',['p']=piei, ['a']=y_axis, ['t']=-3.496795, ['s']=6.000000},
			{['c']='move',['p']=piei, ['a']=z_axis, ['t']=1.717230, ['s']=6.000000},
			{['c']='turn',['p']=entrepiernai, ['a']=x_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=entrepiernai, ['a']=y_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=entrepiernai, ['a']=z_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='move',['p']=entrepiernai, ['a']=x_axis, ['t']=2.729786, ['s']=6.000000},
			{['c']='move',['p']=entrepiernai, ['a']=y_axis, ['t']=0.329298, ['s']=6.000000},
			{['c']='move',['p']=entrepiernai, ['a']=z_axis, ['t']=12.428308, ['s']=6.000000},
			{['c']='turn',['p']=pied, ['a']=x_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=pied, ['a']=y_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=pied, ['a']=z_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='move',['p']=pied, ['a']=x_axis, ['t']=-3.177989, ['s']=6.000000},
			{['c']='move',['p']=pied, ['a']=y_axis, ['t']=4.847694, ['s']=6.000000},
			{['c']='move',['p']=pied, ['a']=z_axis, ['t']=1.507994, ['s']=6.000000},
			{['c']='turn',['p']=flare, ['a']=x_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=flare, ['a']=y_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=flare, ['a']=z_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='move',['p']=flare, ['a']=x_axis, ['t']=3.195125, ['s']=6.000000},
			{['c']='move',['p']=flare, ['a']=y_axis, ['t']=-3.467493, ['s']=6.000000},
			{['c']='move',['p']=flare, ['a']=z_axis, ['t']=22.495483, ['s']=6.000000},
			{['c']='turn',['p']=torso, ['a']=x_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=torso, ['a']=y_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=torso, ['a']=z_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='move',['p']=torso, ['a']=x_axis, ['t']=0.032018, ['s']=6.000000},
			{['c']='move',['p']=torso, ['a']=y_axis, ['t']=0.187134, ['s']=6.000000},
			{['c']='move',['p']=torso, ['a']=z_axis, ['t']=14.276444, ['s']=6.000000},
			{['c']='turn',['p']=antebrazod, ['a']=x_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=antebrazod, ['a']=y_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=antebrazod, ['a']=z_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='move',['p']=antebrazod, ['a']=x_axis, ['t']=-3.907908, ['s']=6.000000},
			{['c']='move',['p']=antebrazod, ['a']=y_axis, ['t']=1.762601, ['s']=6.000000},
			{['c']='move',['p']=antebrazod, ['a']=z_axis, ['t']=19.194647, ['s']=6.000000},
			{['c']='turn',['p']=insignia, ['a']=x_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=insignia, ['a']=y_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=insignia, ['a']=z_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='move',['p']=insignia, ['a']=x_axis, ['t']=3.238197, ['s']=6.000000},
			{['c']='move',['p']=insignia, ['a']=y_axis, ['t']=0.104784, ['s']=6.000000},
			{['c']='move',['p']=insignia, ['a']=z_axis, ['t']=13.552373, ['s']=6.000000},
			{['c']='turn',['p']=root, ['a']=x_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=root, ['a']=y_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=root, ['a']=z_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='move',['p']=root, ['a']=x_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='move',['p']=root, ['a']=y_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='move',['p']=root, ['a']=z_axis, ['t']=0.075427, ['s']=6.000000},
			{['c']='turn',['p']=antebrazoi, ['a']=x_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=antebrazoi, ['a']=y_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=antebrazoi, ['a']=z_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='move',['p']=antebrazoi, ['a']=x_axis, ['t']=4.029028, ['s']=6.000000},
			{['c']='move',['p']=antebrazoi, ['a']=y_axis, ['t']=1.919377, ['s']=6.000000},
			{['c']='move',['p']=antebrazoi, ['a']=z_axis, ['t']=19.086983, ['s']=6.000000},
			{['c']='turn',['p']=piernad, ['a']=x_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=piernad, ['a']=y_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=piernad, ['a']=z_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='move',['p']=piernad, ['a']=x_axis, ['t']=-2.853336, ['s']=6.000000},
			{['c']='move',['p']=piernad, ['a']=y_axis, ['t']=-0.077582, ['s']=6.000000},
			{['c']='move',['p']=piernad, ['a']=z_axis, ['t']=5.598447, ['s']=6.000000},
			{['c']='turn',['p']=lanzamisiles002, ['a']=x_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=lanzamisiles002, ['a']=y_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=lanzamisiles002, ['a']=z_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='move',['p']=lanzamisiles002, ['a']=x_axis, ['t']=3.174896, ['s']=6.000000},
			{['c']='move',['p']=lanzamisiles002, ['a']=y_axis, ['t']=5.530161, ['s']=6.000000},
			{['c']='move',['p']=lanzamisiles002, ['a']=z_axis, ['t']=19.684530, ['s']=6.000000},
			{['c']='turn',['p']=cabeza, ['a']=x_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=cabeza, ['a']=y_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=cabeza, ['a']=z_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='move',['p']=cabeza, ['a']=x_axis, ['t']=-0.027929, ['s']=6.000000},
			{['c']='move',['p']=cabeza, ['a']=y_axis, ['t']=1.461089, ['s']=6.000000},
			{['c']='move',['p']=cabeza, ['a']=z_axis, ['t']=21.305695, ['s']=6.000000},
			{['c']='turn',['p']=entrepiernad, ['a']=x_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=entrepiernad, ['a']=y_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=entrepiernad, ['a']=z_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='move',['p']=entrepiernad, ['a']=x_axis, ['t']=-2.928195, ['s']=6.000000},
			{['c']='move',['p']=entrepiernad, ['a']=y_axis, ['t']=0.521734, ['s']=6.000000},
			{['c']='move',['p']=entrepiernad, ['a']=z_axis, ['t']=12.646731, ['s']=6.000000},
		}
	},
}

Animations['moveAnimation'] = {
	{
		['time'] = 0,
		['commands'] = {
			{['c']='turn',['p']=entrepiernad, ['a']=x_axis, ['t']=-0.578206, ['s']=2.230620},
			{['c']='turn',['p']=entrepiernad, ['a']=y_axis, ['t']=-0.123907, ['s']=0.241088},
			{['c']='turn',['p']=entrepiernad, ['a']=z_axis, ['t']=-0.056762, ['s']=0.158851},
			{['c']='move',['p']=entrepiernad, ['a']=x_axis, ['t']=-2.928195, ['s']=0.000000},
			{['c']='move',['p']=entrepiernad, ['a']=y_axis, ['t']=0.521734, ['s']=0.000000},
			{['c']='move',['p']=entrepiernad, ['a']=z_axis, ['t']=12.646731, ['s']=0.000000},
			{['c']='turn',['p']=entrepiernai, ['a']=x_axis, ['t']=1.382963, ['s']=2.657517},
			{['c']='turn',['p']=entrepiernai, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=entrepiernai, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=entrepiernai, ['a']=x_axis, ['t']=2.729786, ['s']=0.000000},
			{['c']='move',['p']=entrepiernai, ['a']=y_axis, ['t']=0.329298, ['s']=0.000000},
			{['c']='move',['p']=entrepiernai, ['a']=z_axis, ['t']=12.428308, ['s']=0.000000},
			{['c']='turn',['p']=antebrazoi, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=antebrazoi, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=antebrazoi, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=antebrazoi, ['a']=x_axis, ['t']=4.029028, ['s']=0.000000},
			{['c']='move',['p']=antebrazoi, ['a']=y_axis, ['t']=1.919377, ['s']=0.000000},
			{['c']='move',['p']=antebrazoi, ['a']=z_axis, ['t']=19.086983, ['s']=0.000000},
			{['c']='turn',['p']=piei, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=piei, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=piei, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=piei, ['a']=x_axis, ['t']=3.370781, ['s']=0.000000},
			{['c']='move',['p']=piei, ['a']=y_axis, ['t']=-3.496795, ['s']=0.000000},
			{['c']='move',['p']=piei, ['a']=z_axis, ['t']=1.717230, ['s']=0.000000},
			{['c']='turn',['p']=flare, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=flare, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=flare, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=flare, ['a']=x_axis, ['t']=3.195125, ['s']=0.000000},
			{['c']='move',['p']=flare, ['a']=y_axis, ['t']=-3.467493, ['s']=0.000000},
			{['c']='move',['p']=flare, ['a']=z_axis, ['t']=22.495483, ['s']=0.000000},
			{['c']='turn',['p']=pied, ['a']=x_axis, ['t']=0.242709, ['s']=0.000000},
			{['c']='turn',['p']=pied, ['a']=y_axis, ['t']=-0.010635, ['s']=0.000000},
			{['c']='turn',['p']=pied, ['a']=z_axis, ['t']=-0.061257, ['s']=0.000000},
			{['c']='move',['p']=pied, ['a']=x_axis, ['t']=-3.177989, ['s']=0.000000},
			{['c']='move',['p']=pied, ['a']=y_axis, ['t']=4.847694, ['s']=0.000000},
			{['c']='move',['p']=pied, ['a']=z_axis, ['t']=1.507994, ['s']=0.000000},
			{['c']='turn',['p']=piernai, ['a']=x_axis, ['t']=-0.572854, ['s']=0.000000},
			{['c']='turn',['p']=piernai, ['a']=y_axis, ['t']=-0.003616, ['s']=0.000000},
			{['c']='turn',['p']=piernai, ['a']=z_axis, ['t']=-0.087870, ['s']=0.000000},
			{['c']='move',['p']=piernai, ['a']=x_axis, ['t']=2.630750, ['s']=0.000000},
			{['c']='move',['p']=piernai, ['a']=y_axis, ['t']=-4.867675, ['s']=0.000000},
			{['c']='move',['p']=piernai, ['a']=z_axis, ['t']=7.957467, ['s']=0.000000},
			{['c']='turn',['p']=antebrazod, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=antebrazod, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=antebrazod, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=antebrazod, ['a']=x_axis, ['t']=-3.907908, ['s']=0.000000},
			{['c']='move',['p']=antebrazod, ['a']=y_axis, ['t']=1.762601, ['s']=0.000000},
			{['c']='move',['p']=antebrazod, ['a']=z_axis, ['t']=19.194647, ['s']=0.000000},
			{['c']='turn',['p']=lanzamisiles, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=lanzamisiles, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=lanzamisiles, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=lanzamisiles, ['a']=x_axis, ['t']=3.174897, ['s']=0.000000},
			{['c']='move',['p']=lanzamisiles, ['a']=y_axis, ['t']=-4.833875, ['s']=0.000000},
			{['c']='move',['p']=lanzamisiles, ['a']=z_axis, ['t']=20.454210, ['s']=0.000000},
			{['c']='turn',['p']=piernad, ['a']=x_axis, ['t']=-0.706699, ['s']=0.000000},
			{['c']='turn',['p']=piernad, ['a']=y_axis, ['t']=0.108268, ['s']=0.000000},
			{['c']='turn',['p']=piernad, ['a']=z_axis, ['t']=0.143338, ['s']=0.000000},
			{['c']='move',['p']=piernad, ['a']=x_axis, ['t']=-2.853336, ['s']=0.000000},
			{['c']='move',['p']=piernad, ['a']=y_axis, ['t']=-0.077582, ['s']=0.000000},
			{['c']='move',['p']=piernad, ['a']=z_axis, ['t']=5.598447, ['s']=0.000000},
			{['c']='turn',['p']=insignia, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=insignia, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=insignia, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=insignia, ['a']=x_axis, ['t']=3.238197, ['s']=0.000000},
			{['c']='move',['p']=insignia, ['a']=y_axis, ['t']=0.104784, ['s']=0.000000},
			{['c']='move',['p']=insignia, ['a']=z_axis, ['t']=13.552373, ['s']=0.000000},
			{['c']='turn',['p']=cabeza, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=cabeza, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=cabeza, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=cabeza, ['a']=x_axis, ['t']=-0.027929, ['s']=0.000000},
			{['c']='move',['p']=cabeza, ['a']=y_axis, ['t']=1.461089, ['s']=0.000000},
			{['c']='move',['p']=cabeza, ['a']=z_axis, ['t']=21.305695, ['s']=0.000000},
			{['c']='turn',['p']=lanzamisiles002, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=lanzamisiles002, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=lanzamisiles002, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=lanzamisiles002, ['a']=x_axis, ['t']=3.174896, ['s']=0.000000},
			{['c']='move',['p']=lanzamisiles002, ['a']=y_axis, ['t']=5.530161, ['s']=0.000000},
			{['c']='move',['p']=lanzamisiles002, ['a']=z_axis, ['t']=19.684530, ['s']=0.000000},
			{['c']='turn',['p']=torso, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=torso, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=torso, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=torso, ['a']=x_axis, ['t']=0.032018, ['s']=0.000000},
			{['c']='move',['p']=torso, ['a']=y_axis, ['t']=0.187134, ['s']=0.000000},
			{['c']='move',['p']=torso, ['a']=z_axis, ['t']=14.276444, ['s']=0.000000},
			{['c']='turn',['p']=root, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=root, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=root, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=root, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=root, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=root, ['a']=z_axis, ['t']=0.075427, ['s']=0.000000},
		}
	},
	{
		['time'] = 15,
		['commands'] = {
			{['c']='turn',['p']=entrepiernad, ['a']=x_axis, ['t']=0.537104, ['s']=2.230620},
			{['c']='turn',['p']=entrepiernad, ['a']=y_axis, ['t']=-0.003363, ['s']=0.241088},
			{['c']='turn',['p']=entrepiernad, ['a']=z_axis, ['t']=-0.136188, ['s']=0.158851},
			{['c']='turn',['p']=entrepiernai, ['a']=x_axis, ['t']=0.054205, ['s']=2.657517},
			{['c']='turn',['p']=entrepiernai, ['a']=y_axis, ['t']=-0.000000, ['s']=0.000000},
			{['c']='turn',['p']=entrepiernai, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
		}
	},
	{
		['time'] = 30,
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

local function Walk()
	Signal(SIG_WALK)
	SetSignalMask(SIG_WALK)
	
	isMoving = true
	while true do
		PlayAnimation('moveAnimation')
		Sleep(0)
	end
end

local function RestorePose()
	Signal(SIG_WALK)
	SetSignalMask(SIG_WALK)
	PlayAnimation('resetAnimation')
end

local function RestoreShoot()
	Signal(SIG_RESTORE)
	SetSignalMask(SIG_RESTORE)
	Sleep(RESTORE_DELAY_SHOOT)
	isShooting = false
	
	PlayAnimation('resetAnimation')
	
	Turn(torso, z_axis, 0, math.rad(125))
end

function script.StartMoving(heading)
	StartThread(Walk)
	Turn(torso, z_axis, heading, math.rad(125))
end

function script.StopMoving()
	isMoving = false
	StartThread(RestorePose)
end

---AIMING & SHOOTING---
function script.AimFromWeapon1() 
	return lanzamisiles
end

function script.QueryWeapon1() 
	return flare
end

--must return true to allow the weapon to shot. return false denies the weapon from shooting
--can be used delay the shooting until a "turn turret" animation is completed
function script.AimWeapon1( heading, pitch )
	--make sure the aiming animation is only run once
	Signal(SIG_AIM)
	SetSignalMask(SIG_AIM)
	
	Turn(torso, z_axis, heading, math.rad(320))
	
	--wait until the weapon is pointed in the right direction
	WaitForTurn (torso, z_axis)
	
	StartThread(RestoreShoot)
	return true
end

--called after the weapon has fired
function script.FireWeapon1()
	EmitSfx(flare, smoke)
end

----death animation: fall over & explode
function script.Killed(recentDamage, maxHealth)

end

