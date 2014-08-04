local cabeza = piece('cabeza');
local caderad = piece('caderad');
local caderai = piece('caderai');
local canond = piece('canond');
local canoni = piece('canoni');
local coxis = piece('coxis');
local espinillad = piece('espinillad');
local espinillai = piece('espinillai');
local pied = piece('pied');
local piei = piece('piei');
local piernad = piece('piernad');
local piernai = piece('piernai');
local rodillad = piece('rodillad');
local rodillai = piece('rodillai');
local root = piece('root');
local tobillod = piece('tobillod');
local tobilloi = piece('tobilloi');
local flared = piece('flared');
local flarei = piece('flarei');

local Animations = {};

local SIG_WALK = 1	--signal for the walk animation thread

Animations['caminar'] = {
	{
		['time'] = 0,
		['commands'] = {
			{['c']='turn',['p']=root, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=root, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=root, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=root, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=root, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=root, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=pied, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=pied, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=pied, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=pied, ['a']=x_axis, ['t']=23.308643, ['s']=0.000000},
			{['c']='move',['p']=pied, ['a']=y_axis, ['t']=-1.194980, ['s']=0.000000},
			{['c']='move',['p']=pied, ['a']=z_axis, ['t']=5.256844, ['s']=0.000000},
			{['c']='turn',['p']=caderai, ['a']=x_axis, ['t']=-0.077900, ['s']=0.779001},
			{['c']='turn',['p']=caderai, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=caderai, ['a']=z_axis, ['t']=-0.000000, ['s']=0.000000},
			{['c']='move',['p']=caderai, ['a']=x_axis, ['t']=-19.128052, ['s']=0.000000},
			{['c']='move',['p']=caderai, ['a']=y_axis, ['t']=-12.002983, ['s']=0.000000},
			{['c']='move',['p']=caderai, ['a']=z_axis, ['t']=65.394913, ['s']=0.000000},
			{['c']='turn',['p']=rodillai, ['a']=x_axis, ['t']=0.074335, ['s']=0.743347},
			{['c']='turn',['p']=rodillai, ['a']=y_axis, ['t']=-0.000000, ['s']=0.000000},
			{['c']='turn',['p']=rodillai, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=rodillai, ['a']=x_axis, ['t']=-20.752707, ['s']=0.000000},
			{['c']='move',['p']=rodillai, ['a']=y_axis, ['t']=7.489871, ['s']=0.000000},
			{['c']='move',['p']=rodillai, ['a']=z_axis, ['t']=45.672337, ['s']=0.000000},
			{['c']='turn',['p']=flarei, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=flarei, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=flarei, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=flarei, ['a']=x_axis, ['t']=-13.897138, ['s']=0.000000},
			{['c']='move',['p']=flarei, ['a']=y_axis, ['t']=-34.573048, ['s']=0.000000},
			{['c']='move',['p']=flarei, ['a']=z_axis, ['t']=90.845634, ['s']=0.000000},
			{['c']='turn',['p']=canoni, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=canoni, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=canoni, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=canoni, ['a']=x_axis, ['t']=-13.402711, ['s']=0.000000},
			{['c']='move',['p']=canoni, ['a']=y_axis, ['t']=-16.162720, ['s']=0.000000},
			{['c']='move',['p']=canoni, ['a']=z_axis, ['t']=90.621216, ['s']=0.000076},
			{['c']='turn',['p']=tobilloi, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=tobilloi, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=tobilloi, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=tobilloi, ['a']=x_axis, ['t']=-23.291800, ['s']=0.000000},
			{['c']='move',['p']=tobilloi, ['a']=y_axis, ['t']=-1.700747, ['s']=0.000000},
			{['c']='move',['p']=tobilloi, ['a']=z_axis, ['t']=12.404905, ['s']=0.000000},
			{['c']='turn',['p']=piei, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=piei, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=piei, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=piei, ['a']=x_axis, ['t']=-23.291729, ['s']=0.000000},
			{['c']='move',['p']=piei, ['a']=y_axis, ['t']=-1.194977, ['s']=0.000000},
			{['c']='move',['p']=piei, ['a']=z_axis, ['t']=5.239345, ['s']=0.000000},
			{['c']='turn',['p']=cabeza, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=cabeza, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=cabeza, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=cabeza, ['a']=x_axis, ['t']=-0.040670, ['s']=0.000000},
			{['c']='move',['p']=cabeza, ['a']=y_axis, ['t']=-13.234020, ['s']=0.000000},
			{['c']='move',['p']=cabeza, ['a']=z_axis, ['t']=82.934410, ['s']=0.000000},
			{['c']='turn',['p']=flared, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=flared, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=flared, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=flared, ['a']=x_axis, ['t']=13.168749, ['s']=0.000000},
			{['c']='move',['p']=flared, ['a']=y_axis, ['t']=-34.573055, ['s']=0.000000},
			{['c']='move',['p']=flared, ['a']=z_axis, ['t']=90.845581, ['s']=0.000000},
			{['c']='turn',['p']=rodillad, ['a']=x_axis, ['t']=-0.593478, ['s']=5.934779},
			{['c']='turn',['p']=rodillad, ['a']=y_axis, ['t']=-0.000000, ['s']=0.000000},
			{['c']='turn',['p']=rodillad, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=rodillad, ['a']=x_axis, ['t']=20.720461, ['s']=0.000000},
			{['c']='move',['p']=rodillad, ['a']=y_axis, ['t']=7.489868, ['s']=0.000005},
			{['c']='move',['p']=rodillad, ['a']=z_axis, ['t']=45.689831, ['s']=0.000000},
			{['c']='turn',['p']=tobillod, ['a']=x_axis, ['t']=0.120928, ['s']=1.209279},
			{['c']='turn',['p']=tobillod, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=tobillod, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=tobillod, ['a']=x_axis, ['t']=23.308578, ['s']=0.000000},
			{['c']='move',['p']=tobillod, ['a']=y_axis, ['t']=-1.700749, ['s']=0.000000},
			{['c']='move',['p']=tobillod, ['a']=z_axis, ['t']=12.422402, ['s']=0.000000},
			{['c']='turn',['p']=caderad, ['a']=x_axis, ['t']=0.433232, ['s']=4.332317},
			{['c']='turn',['p']=caderad, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=caderad, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=caderad, ['a']=x_axis, ['t']=18.895636, ['s']=0.000000},
			{['c']='move',['p']=caderad, ['a']=y_axis, ['t']=-12.002983, ['s']=0.000000},
			{['c']='move',['p']=caderad, ['a']=z_axis, ['t']=65.394913, ['s']=0.000000},
			{['c']='turn',['p']=piernai, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=piernai, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=piernai, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=piernai, ['a']=x_axis, ['t']=-19.754633, ['s']=0.000000},
			{['c']='move',['p']=piernai, ['a']=y_axis, ['t']=-3.700891, ['s']=0.000000},
			{['c']='move',['p']=piernai, ['a']=z_axis, ['t']=56.662346, ['s']=0.000000},
			{['c']='turn',['p']=canond, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=canond, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=canond, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=canond, ['a']=x_axis, ['t']=13.150896, ['s']=0.000000},
			{['c']='move',['p']=canond, ['a']=y_axis, ['t']=-16.204548, ['s']=0.000000},
			{['c']='move',['p']=canond, ['a']=z_axis, ['t']=90.588631, ['s']=0.000076},
			{['c']='turn',['p']=espinillad, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=espinillad, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=espinillad, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=espinillad, ['a']=x_axis, ['t']=22.275238, ['s']=0.000000},
			{['c']='move',['p']=espinillad, ['a']=y_axis, ['t']=2.855816, ['s']=0.000000},
			{['c']='move',['p']=espinillad, ['a']=z_axis, ['t']=27.918665, ['s']=0.000000},
			{['c']='turn',['p']=espinillai, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=espinillai, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=espinillai, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=espinillai, ['a']=x_axis, ['t']=-22.307478, ['s']=0.000000},
			{['c']='move',['p']=espinillai, ['a']=y_axis, ['t']=2.855818, ['s']=0.000000},
			{['c']='move',['p']=espinillai, ['a']=z_axis, ['t']=27.901154, ['s']=0.000000},
			{['c']='turn',['p']=piernad, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=piernad, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=piernad, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=piernad, ['a']=x_axis, ['t']=19.794971, ['s']=0.000000},
			{['c']='move',['p']=piernad, ['a']=y_axis, ['t']=-3.700895, ['s']=0.000002},
			{['c']='move',['p']=piernad, ['a']=z_axis, ['t']=56.686203, ['s']=0.000000},
			{['c']='turn',['p']=coxis, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=coxis, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=coxis, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=coxis, ['a']=x_axis, ['t']=0.089171, ['s']=0.000000},
			{['c']='move',['p']=coxis, ['a']=y_axis, ['t']=-12.340305, ['s']=0.000000},
			{['c']='move',['p']=coxis, ['a']=z_axis, ['t']=67.961700, ['s']=20.255203},
		}
	},
	{
		['time'] = 3,
		['commands'] = {
			{['c']='turn',['p']=pied, ['a']=x_axis, ['t']=0.407299, ['s']=3.054743},
			{['c']='turn',['p']=pied, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=pied, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=caderai, ['a']=x_axis, ['t']=0.110671, ['s']=1.414282},
			{['c']='turn',['p']=caderai, ['a']=y_axis, ['t']=-0.000000, ['s']=0.000000},
			{['c']='turn',['p']=caderai, ['a']=z_axis, ['t']=-0.000000, ['s']=0.000000},
			{['c']='turn',['p']=rodillai, ['a']=x_axis, ['t']=-0.033087, ['s']=0.805660},
			{['c']='turn',['p']=rodillai, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=rodillai, ['a']=z_axis, ['t']=-0.000000, ['s']=0.000000},
			{['c']='turn',['p']=piei, ['a']=x_axis, ['t']=-0.060921, ['s']=0.456906},
			{['c']='turn',['p']=piei, ['a']=y_axis, ['t']=-0.000000, ['s']=0.000000},
			{['c']='turn',['p']=piei, ['a']=z_axis, ['t']=-0.000000, ['s']=0.000000},
			{['c']='turn',['p']=rodillad, ['a']=x_axis, ['t']=-0.000359, ['s']=4.448391},
			{['c']='turn',['p']=rodillad, ['a']=y_axis, ['t']=-0.000000, ['s']=0.000000},
			{['c']='turn',['p']=rodillad, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=caderad, ['a']=x_axis, ['t']=-0.793064, ['s']=9.197217},
			{['c']='turn',['p']=caderad, ['a']=y_axis, ['t']=-0.000000, ['s']=0.000000},
			{['c']='turn',['p']=caderad, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=coxis, ['a']=z_axis, ['t']=64.582489, ['s']=25.344086},
		}
	},
	{
		['time'] = 7,
		['commands'] = {
			{['c']='turn',['p']=pied, ['a']=x_axis, ['t']=0.360706, ['s']=0.349448},
			{['c']='turn',['p']=pied, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=pied, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=caderai, ['a']=x_axis, ['t']=0.249489, ['s']=1.041133},
			{['c']='turn',['p']=caderai, ['a']=y_axis, ['t']=-0.000000, ['s']=0.000000},
			{['c']='turn',['p']=caderai, ['a']=z_axis, ['t']=-0.000000, ['s']=0.000000},
			{['c']='turn',['p']=rodillai, ['a']=x_axis, ['t']=-0.334023, ['s']=2.257020},
			{['c']='turn',['p']=rodillai, ['a']=y_axis, ['t']=-0.000000, ['s']=0.000000},
			{['c']='turn',['p']=rodillai, ['a']=z_axis, ['t']=-0.000000, ['s']=0.000000},
			{['c']='turn',['p']=tobilloi, ['a']=x_axis, ['t']=0.237404, ['s']=1.780529},
			{['c']='turn',['p']=tobilloi, ['a']=y_axis, ['t']=-0.000000, ['s']=0.000000},
			{['c']='turn',['p']=tobilloi, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=rodillad, ['a']=x_axis, ['t']=0.324712, ['s']=2.438037},
			{['c']='turn',['p']=rodillad, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=rodillad, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=tobillod, ['a']=x_axis, ['t']=0.026903, ['s']=0.705189},
			{['c']='turn',['p']=tobillod, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=tobillod, ['a']=z_axis, ['t']=-0.000000, ['s']=0.000000},
			{['c']='turn',['p']=caderad, ['a']=x_axis, ['t']=-0.706009, ['s']=0.652910},
			{['c']='turn',['p']=caderad, ['a']=y_axis, ['t']=-0.000000, ['s']=0.000000},
			{['c']='turn',['p']=caderad, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=coxis, ['a']=y_axis, ['t']=-15.378578, ['s']=22.787046},
			{['c']='move',['p']=coxis, ['a']=z_axis, ['t']=67.958351, ['s']=25.318966},
		}
	},
	{
		['time'] = 11,
		['commands'] = {
			{['c']='turn',['p']=caderai, ['a']=x_axis, ['t']=-0.409905, ['s']=6.593941},
			{['c']='turn',['p']=caderai, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=caderai, ['a']=z_axis, ['t']=-0.000000, ['s']=0.000000},
			{['c']='turn',['p']=rodillai, ['a']=x_axis, ['t']=-0.551261, ['s']=3.258581},
			{['c']='turn',['p']=rodillai, ['a']=y_axis, ['t']=-0.000000, ['s']=0.000000},
			{['c']='turn',['p']=rodillai, ['a']=z_axis, ['t']=-0.000000, ['s']=0.000000},
			{['c']='turn',['p']=tobilloi, ['a']=x_axis, ['t']=0.466168, ['s']=2.287645},
			{['c']='turn',['p']=tobilloi, ['a']=y_axis, ['t']=-0.000000, ['s']=0.000000},
			{['c']='turn',['p']=tobilloi, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=rodillad, ['a']=x_axis, ['t']=-0.009261, ['s']=3.339735},
			{['c']='turn',['p']=rodillad, ['a']=y_axis, ['t']=-0.000000, ['s']=0.000000},
			{['c']='turn',['p']=rodillad, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=tobillod, ['a']=x_axis, ['t']=-0.084664, ['s']=1.115668},
			{['c']='turn',['p']=tobillod, ['a']=y_axis, ['t']=-0.000000, ['s']=0.000000},
			{['c']='turn',['p']=tobillod, ['a']=z_axis, ['t']=-0.000000, ['s']=0.000000},
			{['c']='turn',['p']=caderad, ['a']=x_axis, ['t']=-0.242604, ['s']=4.634050},
			{['c']='turn',['p']=caderad, ['a']=y_axis, ['t']=-0.000000, ['s']=0.000000},
			{['c']='turn',['p']=caderad, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=coxis, ['a']=z_axis, ['t']=66.608017, ['s']=13.503342},
		}
	},
	{
		['time'] = 13,
		['commands'] = {
			{['c']='turn',['p']=rodillai, ['a']=x_axis, ['t']=0.316176, ['s']=6.505782},
		}
	},
	{
		['time'] = 14,
		['commands'] = {
			{['c']='turn',['p']=caderai, ['a']=x_axis, ['t']=-1.032113, ['s']=4.666560},
			{['c']='turn',['p']=caderai, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=caderai, ['a']=z_axis, ['t']=-0.000000, ['s']=0.000000},
			{['c']='turn',['p']=rodillai, ['a']=y_axis, ['t']=-0.000000, ['s']=0.000000},
			{['c']='turn',['p']=rodillai, ['a']=z_axis, ['t']=0.000000, ['s']=0.000001},
			{['c']='turn',['p']=tobilloi, ['a']=x_axis, ['t']=0.601382, ['s']=1.014100},
			{['c']='turn',['p']=tobilloi, ['a']=y_axis, ['t']=-0.000000, ['s']=0.000000},
			{['c']='turn',['p']=tobilloi, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=tobillod, ['a']=x_axis, ['t']=-0.301700, ['s']=1.627768},
			{['c']='turn',['p']=tobillod, ['a']=y_axis, ['t']=-0.000000, ['s']=0.000000},
			{['c']='turn',['p']=tobillod, ['a']=z_axis, ['t']=-0.000000, ['s']=0.000000},
			{['c']='turn',['p']=caderad, ['a']=x_axis, ['t']=-0.041245, ['s']=1.510191},
			{['c']='turn',['p']=caderad, ['a']=y_axis, ['t']=-0.000000, ['s']=0.000000},
			{['c']='turn',['p']=caderad, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
		}
	},
	{
		['time'] = 17,
		['commands'] = {
			{['c']='turn',['p']=rodillai, ['a']=x_axis, ['t']=0.328965, ['s']=0.095917},
		}
	},
	{
		['time'] = 18,
		['commands'] = {
			{['c']='turn',['p']=caderai, ['a']=x_axis, ['t']=-0.872621, ['s']=1.594926},
			{['c']='turn',['p']=caderai, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=caderai, ['a']=z_axis, ['t']=-0.000000, ['s']=0.000000},
			{['c']='turn',['p']=rodillai, ['a']=y_axis, ['t']=-0.000000, ['s']=0.000000},
			{['c']='turn',['p']=rodillai, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=tobilloi, ['a']=x_axis, ['t']=0.579511, ['s']=0.218705},
			{['c']='turn',['p']=tobilloi, ['a']=y_axis, ['t']=-0.000000, ['s']=0.000000},
			{['c']='turn',['p']=tobilloi, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=rodillad, ['a']=x_axis, ['t']=-0.074327, ['s']=0.650656},
			{['c']='turn',['p']=rodillad, ['a']=y_axis, ['t']=-0.000000, ['s']=0.000000},
			{['c']='turn',['p']=rodillad, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=tobillod, ['a']=x_axis, ['t']=-0.399745, ['s']=0.980454},
			{['c']='turn',['p']=tobillod, ['a']=y_axis, ['t']=-0.000000, ['s']=0.000000},
			{['c']='turn',['p']=tobillod, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=caderad, ['a']=x_axis, ['t']=0.139232, ['s']=1.804774},
			{['c']='turn',['p']=caderad, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=caderad, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=coxis, ['a']=z_axis, ['t']=63.907322, ['s']=27.006950},
		}
	},
	{
		['time'] = 21,
		['commands'] = {
			{['c']='turn',['p']=pied, ['a']=x_axis, ['t']=0.000000, ['s']=2.705295},
			{['c']='turn',['p']=pied, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=pied, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=caderai, ['a']=x_axis, ['t']=-0.039379, ['s']=6.249313},
			{['c']='turn',['p']=caderai, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=caderai, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=rodillai, ['a']=x_axis, ['t']=-0.085188, ['s']=3.106144},
			{['c']='turn',['p']=rodillai, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=rodillai, ['a']=z_axis, ['t']=0.000000, ['s']=0.000001},
			{['c']='turn',['p']=tobilloi, ['a']=x_axis, ['t']=0.112433, ['s']=3.503090},
			{['c']='turn',['p']=tobilloi, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=tobilloi, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=piei, ['a']=x_axis, ['t']=0.000000, ['s']=0.456906},
			{['c']='turn',['p']=piei, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=piei, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=rodillad, ['a']=x_axis, ['t']=0.000000, ['s']=0.557450},
			{['c']='turn',['p']=rodillad, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=rodillad, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=tobillod, ['a']=x_axis, ['t']=0.000000, ['s']=2.998089},
			{['c']='turn',['p']=tobillod, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=tobillod, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=caderad, ['a']=x_axis, ['t']=0.000000, ['s']=1.044241},
			{['c']='turn',['p']=caderad, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=caderad, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=coxis, ['a']=y_axis, ['t']=-12.340305, ['s']=22.787046},
			{['c']='move',['p']=coxis, ['a']=z_axis, ['t']=65.936180, ['s']=15.216436},
		}
	},
	{
		['time'] = 25,
		['commands'] = {
		}
	},
}

Animations['reset'] = {
	{
		['time'] = 0,
		['commands'] = {
			{['c']='turn',['p']=root, ['a']=x_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=root, ['a']=y_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=root, ['a']=z_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='move',['p']=root, ['a']=x_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='move',['p']=root, ['a']=y_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='move',['p']=root, ['a']=z_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=pied, ['a']=x_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=pied, ['a']=y_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=pied, ['a']=z_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='move',['p']=pied, ['a']=x_axis, ['t']=23.308643, ['s']=6.000000},
			{['c']='move',['p']=pied, ['a']=y_axis, ['t']=-1.194980, ['s']=6.000000},
			{['c']='move',['p']=pied, ['a']=z_axis, ['t']=5.256844, ['s']=6.000000},
			{['c']='turn',['p']=caderai, ['a']=x_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=caderai, ['a']=y_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=caderai, ['a']=z_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='move',['p']=caderai, ['a']=x_axis, ['t']=-19.128052, ['s']=6.000000},
			{['c']='move',['p']=caderai, ['a']=y_axis, ['t']=-12.002983, ['s']=6.000000},
			{['c']='move',['p']=caderai, ['a']=z_axis, ['t']=65.394913, ['s']=6.000000},
			{['c']='turn',['p']=rodillai, ['a']=x_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=rodillai, ['a']=y_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=rodillai, ['a']=z_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='move',['p']=rodillai, ['a']=x_axis, ['t']=-20.752707, ['s']=6.000000},
			{['c']='move',['p']=rodillai, ['a']=y_axis, ['t']=7.489871, ['s']=6.000000},
			{['c']='move',['p']=rodillai, ['a']=z_axis, ['t']=45.672337, ['s']=6.000000},
			{['c']='turn',['p']=flarei, ['a']=x_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=flarei, ['a']=y_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=flarei, ['a']=z_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='move',['p']=flarei, ['a']=x_axis, ['t']=-13.897138, ['s']=6.000000},
			{['c']='move',['p']=flarei, ['a']=y_axis, ['t']=-34.573048, ['s']=6.000000},
			{['c']='move',['p']=flarei, ['a']=z_axis, ['t']=90.845634, ['s']=6.000000},
			{['c']='turn',['p']=canoni, ['a']=x_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=canoni, ['a']=y_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=canoni, ['a']=z_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='move',['p']=canoni, ['a']=x_axis, ['t']=-13.402711, ['s']=6.000000},
			{['c']='move',['p']=canoni, ['a']=y_axis, ['t']=-16.162720, ['s']=6.000000},
			{['c']='move',['p']=canoni, ['a']=z_axis, ['t']=90.621223, ['s']=6.000000},
			{['c']='turn',['p']=tobilloi, ['a']=x_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=tobilloi, ['a']=y_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=tobilloi, ['a']=z_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='move',['p']=tobilloi, ['a']=x_axis, ['t']=-23.291800, ['s']=6.000000},
			{['c']='move',['p']=tobilloi, ['a']=y_axis, ['t']=-1.700747, ['s']=6.000000},
			{['c']='move',['p']=tobilloi, ['a']=z_axis, ['t']=12.404905, ['s']=6.000000},
			{['c']='turn',['p']=piei, ['a']=x_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=piei, ['a']=y_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=piei, ['a']=z_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='move',['p']=piei, ['a']=x_axis, ['t']=-23.291729, ['s']=6.000000},
			{['c']='move',['p']=piei, ['a']=y_axis, ['t']=-1.194977, ['s']=6.000000},
			{['c']='move',['p']=piei, ['a']=z_axis, ['t']=5.239345, ['s']=6.000000},
			{['c']='turn',['p']=cabeza, ['a']=x_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=cabeza, ['a']=y_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=cabeza, ['a']=z_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='move',['p']=cabeza, ['a']=x_axis, ['t']=-0.040670, ['s']=6.000000},
			{['c']='move',['p']=cabeza, ['a']=y_axis, ['t']=-13.234020, ['s']=6.000000},
			{['c']='move',['p']=cabeza, ['a']=z_axis, ['t']=82.934410, ['s']=6.000000},
			{['c']='turn',['p']=flared, ['a']=x_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=flared, ['a']=y_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=flared, ['a']=z_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='move',['p']=flared, ['a']=x_axis, ['t']=13.168749, ['s']=6.000000},
			{['c']='move',['p']=flared, ['a']=y_axis, ['t']=-34.573055, ['s']=6.000000},
			{['c']='move',['p']=flared, ['a']=z_axis, ['t']=90.845581, ['s']=6.000000},
			{['c']='turn',['p']=rodillad, ['a']=x_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=rodillad, ['a']=y_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=rodillad, ['a']=z_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='move',['p']=rodillad, ['a']=x_axis, ['t']=20.720461, ['s']=6.000000},
			{['c']='move',['p']=rodillad, ['a']=y_axis, ['t']=7.489868, ['s']=6.000000},
			{['c']='move',['p']=rodillad, ['a']=z_axis, ['t']=45.689831, ['s']=6.000000},
			{['c']='turn',['p']=tobillod, ['a']=x_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=tobillod, ['a']=y_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=tobillod, ['a']=z_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='move',['p']=tobillod, ['a']=x_axis, ['t']=23.308578, ['s']=6.000000},
			{['c']='move',['p']=tobillod, ['a']=y_axis, ['t']=-1.700749, ['s']=6.000000},
			{['c']='move',['p']=tobillod, ['a']=z_axis, ['t']=12.422402, ['s']=6.000000},
			{['c']='turn',['p']=caderad, ['a']=x_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=caderad, ['a']=y_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=caderad, ['a']=z_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='move',['p']=caderad, ['a']=x_axis, ['t']=18.895636, ['s']=6.000000},
			{['c']='move',['p']=caderad, ['a']=y_axis, ['t']=-12.002983, ['s']=6.000000},
			{['c']='move',['p']=caderad, ['a']=z_axis, ['t']=65.394913, ['s']=6.000000},
			{['c']='turn',['p']=piernai, ['a']=x_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=piernai, ['a']=y_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=piernai, ['a']=z_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='move',['p']=piernai, ['a']=x_axis, ['t']=-19.754633, ['s']=6.000000},
			{['c']='move',['p']=piernai, ['a']=y_axis, ['t']=-3.700891, ['s']=6.000000},
			{['c']='move',['p']=piernai, ['a']=z_axis, ['t']=56.662346, ['s']=6.000000},
			{['c']='turn',['p']=canond, ['a']=x_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=canond, ['a']=y_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=canond, ['a']=z_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='move',['p']=canond, ['a']=x_axis, ['t']=13.150896, ['s']=6.000000},
			{['c']='move',['p']=canond, ['a']=y_axis, ['t']=-16.204548, ['s']=6.000000},
			{['c']='move',['p']=canond, ['a']=z_axis, ['t']=90.588638, ['s']=6.000000},
			{['c']='turn',['p']=espinillad, ['a']=x_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=espinillad, ['a']=y_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=espinillad, ['a']=z_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='move',['p']=espinillad, ['a']=x_axis, ['t']=22.275238, ['s']=6.000000},
			{['c']='move',['p']=espinillad, ['a']=y_axis, ['t']=2.855816, ['s']=6.000000},
			{['c']='move',['p']=espinillad, ['a']=z_axis, ['t']=27.918665, ['s']=6.000000},
			{['c']='turn',['p']=espinillai, ['a']=x_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=espinillai, ['a']=y_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=espinillai, ['a']=z_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='move',['p']=espinillai, ['a']=x_axis, ['t']=-22.307478, ['s']=6.000000},
			{['c']='move',['p']=espinillai, ['a']=y_axis, ['t']=2.855818, ['s']=6.000000},
			{['c']='move',['p']=espinillai, ['a']=z_axis, ['t']=27.901154, ['s']=6.000000},
			{['c']='turn',['p']=piernad, ['a']=x_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=piernad, ['a']=y_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=piernad, ['a']=z_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='move',['p']=piernad, ['a']=x_axis, ['t']=19.794971, ['s']=6.000000},
			{['c']='move',['p']=piernad, ['a']=y_axis, ['t']=-3.700895, ['s']=6.000000},
			{['c']='move',['p']=piernad, ['a']=z_axis, ['t']=56.686203, ['s']=6.000000},
			{['c']='turn',['p']=coxis, ['a']=x_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=coxis, ['a']=y_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=coxis, ['a']=z_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='move',['p']=coxis, ['a']=x_axis, ['t']=0.089171, ['s']=6.000000},
			{['c']='move',['p']=coxis, ['a']=y_axis, ['t']=-12.340305, ['s']=6.000000},
			{['c']='move',['p']=coxis, ['a']=z_axis, ['t']=65.936180, ['s']=6.000000},
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


local function caminapalante()
	Signal(SIG_WALK)
	SetSignalMask(SIG_WALK)
	while (true) do
		PlayAnimation('caminar')
	end
end

local function caminareset()
	Sleep(1000)
	PlayAnimation('reset')
end

function script.StartMoving(heading)
	StartThread (caminapalante)
	Turn(cabeza, z_axis, heading, math.rad(225))
end

function script.StopMoving()
	--Spring.Echo ("stopped walking!")
	Signal(SIG_WALK)
	StartThread(caminareset)
end


---AIMING & SHOOTING---
function script.AimFromWeapon1() 
	return canond
end

function script.AimFromWeapon2() 
	return canoni
end

function script.AimFromWeapon3() 
	return canond
end

function script.AimFromWeapon4() 
	return canoni
end

function script.QueryWeapon1() 
	return flared
end

function script.QueryWeapon2() 
	return flarei
end

function script.QueryWeapon3() 
	return flared
end

function script.QueryWeapon4() 
	return flarei
end

--called after the weapon has fired
function script.FireWeapon1()
end

function script.FireWeapon2()
end

function script.FireWeapon3()
end

function script.FireWeapon4()
end

function script.AimWeapon1( heading, pitch )
	--make sure the aiming animation is only run once
	Signal(SIG_AIM)
	SetSignalMask(SIG_AIM)
	Turn(cabeza, z_axis, heading, math.rad(200))
	Turn(canond, x_axis, -pitch, math.rad(200))

	--wait until the weapon is pointed in the right direction
	WaitForTurn (cabeza, z_axis)
	WaitForTurn (canond, x_axis)
	return true
end

function script.AimWeapon2( heading, pitch )
	Turn(canoni, x_axis, -pitch, math.rad(200))
	WaitForTurn (cabeza, z_axis)
	WaitForTurn (canoni, x_axis)
	return true
end

function script.AimWeapon3( heading, pitch )
	--make sure the aiming animation is only run once
	Turn(canond, x_axis, -pitch, math.rad(200))

	--wait until the weapon is pointed in the right direction
	WaitForTurn (cabeza, z_axis)
	WaitForTurn (canond, x_axis)
	return true
end

function script.AimWeapon4( heading, pitch )
	Turn(canoni, x_axis, -pitch, math.rad(200))
	WaitForTurn (cabeza, z_axis)
	WaitForTurn (canoni, x_axis)
	return true
end

----death animation
function script.Killed(recentDamage, maxHealth)
	Explode (cabeza, SFX.SHATTER)
	Explode (piernad, SFX.FIRE)
	Explode (piernai, SFX.FIRE)
end
            
