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

local SIG_WALK = 1	--signal for the walk animation thread
local SIG_AIM = 2
local SIG_AIM2 = 4

local active_cano = 1		--the barrel that the next shot will be fired from
local number_of_cano = 2		--how many barrel there are in total

Animations['caminar'] ={
	{
		['time'] = 0,
		['commands'] = {
			{['c']='turn',['p']=torre_der, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=torre_der, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=torre_der, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=torre_der, ['a']=x_axis, ['t']=6.832283, ['s']=0.000000},
			{['c']='move',['p']=torre_der, ['a']=y_axis, ['t']=-0.066057, ['s']=0.000000},
			{['c']='move',['p']=torre_der, ['a']=z_axis, ['t']=27.867678, ['s']=0.000000},
			{['c']='turn',['p']=hombrera_izq, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=hombrera_izq, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=hombrera_izq, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=hombrera_izq, ['a']=x_axis, ['t']=-6.572511, ['s']=0.000000},
			{['c']='move',['p']=hombrera_izq, ['a']=y_axis, ['t']=-0.271400, ['s']=0.000000},
			{['c']='move',['p']=hombrera_izq, ['a']=z_axis, ['t']=22.162073, ['s']=0.000000},
			{['c']='turn',['p']=espinillas_izq, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=espinillas_izq, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=espinillas_izq, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=espinillas_izq, ['a']=x_axis, ['t']=-7.631046, ['s']=0.000000},
			{['c']='move',['p']=espinillas_izq, ['a']=y_axis, ['t']=-0.507951, ['s']=0.000000},
			{['c']='move',['p']=espinillas_izq, ['a']=z_axis, ['t']=7.797854, ['s']=0.000000},
			{['c']='turn',['p']=flare_izq, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=flare_izq, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=flare_izq, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=flare_izq, ['a']=x_axis, ['t']=-6.255838, ['s']=0.000000},
			{['c']='move',['p']=flare_izq, ['a']=y_axis, ['t']=-10.517165, ['s']=0.000000},
			{['c']='move',['p']=flare_izq, ['a']=z_axis, ['t']=28.438433, ['s']=0.000000},
			{['c']='turn',['p']=pie_izqzq, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=pie_izqzq, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=pie_izqzq, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=pie_izqzq, ['a']=x_axis, ['t']=-7.575974, ['s']=0.000000},
			{['c']='move',['p']=pie_izqzq, ['a']=y_axis, ['t']=0.020981, ['s']=0.000000},
			{['c']='move',['p']=pie_izqzq, ['a']=z_axis, ['t']=1.421875, ['s']=0.000000},
			{['c']='turn',['p']=pie_der, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=pie_der, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=pie_der, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=pie_der, ['a']=x_axis, ['t']=8.303809, ['s']=0.000000},
			{['c']='move',['p']=pie_der, ['a']=y_axis, ['t']=-0.230486, ['s']=0.000000},
			{['c']='move',['p']=pie_der, ['a']=z_axis, ['t']=1.316206, ['s']=0.000000},
			{['c']='turn',['p']=tobillo_der, ['a']=x_axis, ['t']=0.038089, ['s']=0.114268},
			{['c']='turn',['p']=tobillo_der, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=tobillo_der, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=tobillo_der, ['a']=x_axis, ['t']=8.232763, ['s']=0.000000},
			{['c']='move',['p']=tobillo_der, ['a']=y_axis, ['t']=1.241149, ['s']=0.000000},
			{['c']='move',['p']=tobillo_der, ['a']=z_axis, ['t']=3.464844, ['s']=0.000000},
			{['c']='turn',['p']=cabeza, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=cabeza, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=cabeza, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=cabeza, ['a']=x_axis, ['t']=0.327252, ['s']=0.000000},
			{['c']='move',['p']=cabeza, ['a']=y_axis, ['t']=-1.547150, ['s']=0.000000},
			{['c']='move',['p']=cabeza, ['a']=z_axis, ['t']=25.716246, ['s']=0.000000},
			{['c']='turn',['p']=espinilla_der, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=espinilla_der, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=espinilla_der, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=espinilla_der, ['a']=x_axis, ['t']=8.192632, ['s']=0.000000},
			{['c']='move',['p']=espinilla_der, ['a']=y_axis, ['t']=-0.259729, ['s']=0.000000},
			{['c']='move',['p']=espinilla_der, ['a']=z_axis, ['t']=7.756228, ['s']=0.000001},
			{['c']='turn',['p']=hombrera_der, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=hombrera_der, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=hombrera_der, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=hombrera_der, ['a']=x_axis, ['t']=7.227016, ['s']=0.000000},
			{['c']='move',['p']=hombrera_der, ['a']=y_axis, ['t']=-0.271400, ['s']=0.000000},
			{['c']='move',['p']=hombrera_der, ['a']=z_axis, ['t']=22.162073, ['s']=0.000000},
			{['c']='turn',['p']=root, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=root, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=root, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=root, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=root, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=root, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=sobaco, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=sobaco, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=sobaco, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=sobaco, ['a']=x_axis, ['t']=0.327251, ['s']=0.000000},
			{['c']='move',['p']=sobaco, ['a']=y_axis, ['t']=-0.173320, ['s']=0.000000},
			{['c']='move',['p']=sobaco, ['a']=z_axis, ['t']=22.974514, ['s']=0.000000},
			{['c']='turn',['p']=canon_izq, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=canon_izq, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=canon_izq, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=canon_izq, ['a']=x_axis, ['t']=-6.210811, ['s']=0.000000},
			{['c']='move',['p']=canon_izq, ['a']=y_axis, ['t']=-0.079587, ['s']=0.000000},
			{['c']='move',['p']=canon_izq, ['a']=z_axis, ['t']=28.630531, ['s']=0.000000},
			{['c']='turn',['p']=torre_izq, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=torre_izq, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=torre_izq, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=torre_izq, ['a']=x_axis, ['t']=-6.265769, ['s']=0.000000},
			{['c']='move',['p']=torre_izq, ['a']=y_axis, ['t']=-0.066057, ['s']=0.000000},
			{['c']='move',['p']=torre_izq, ['a']=z_axis, ['t']=27.843231, ['s']=0.000000},
			{['c']='turn',['p']=patas_der, ['a']=x_axis, ['t']=-0.478512, ['s']=1.435537},
			{['c']='turn',['p']=patas_der, ['a']=y_axis, ['t']=-0.000000, ['s']=0.000000},
			{['c']='turn',['p']=patas_der, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=patas_der, ['a']=x_axis, ['t']=7.227016, ['s']=0.000000},
			{['c']='move',['p']=patas_der, ['a']=y_axis, ['t']=-0.030573, ['s']=0.000000},
			{['c']='move',['p']=patas_der, ['a']=z_axis, ['t']=23.343285, ['s']=0.000006},
			{['c']='turn',['p']=rodilla_der, ['a']=x_axis, ['t']=-0.218071, ['s']=0.654214},
			{['c']='turn',['p']=rodilla_der, ['a']=y_axis, ['t']=-0.000000, ['s']=0.000000},
			{['c']='turn',['p']=rodilla_der, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=rodilla_der, ['a']=x_axis, ['t']=8.147104, ['s']=0.000000},
			{['c']='move',['p']=rodilla_der, ['a']=y_axis, ['t']=-2.441278, ['s']=0.000001},
			{['c']='move',['p']=rodilla_der, ['a']=z_axis, ['t']=12.764065, ['s']=0.000000},
			{['c']='turn',['p']=canon_der, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=canon_der, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=canon_der, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=canon_der, ['a']=x_axis, ['t']=6.950869, ['s']=0.000000},
			{['c']='move',['p']=canon_der, ['a']=y_axis, ['t']=-0.079587, ['s']=0.000000},
			{['c']='move',['p']=canon_der, ['a']=z_axis, ['t']=28.630531, ['s']=0.000000},
			{['c']='turn',['p']=tobillo_izq, ['a']=x_axis, ['t']=0.500079, ['s']=1.500236},
			{['c']='turn',['p']=tobillo_izq, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=tobillo_izq, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=tobillo_izq, ['a']=x_axis, ['t']=-7.545712, ['s']=0.000000},
			{['c']='move',['p']=tobillo_izq, ['a']=y_axis, ['t']=1.484898, ['s']=0.000000},
			{['c']='move',['p']=tobillo_izq, ['a']=z_axis, ['t']=3.576736, ['s']=0.000001},
			{['c']='turn',['p']=patas_izq, ['a']=x_axis, ['t']=0.494055, ['s']=1.482165},
			{['c']='turn',['p']=patas_izq, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=patas_izq, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=patas_izq, ['a']=x_axis, ['t']=-6.572511, ['s']=0.000000},
			{['c']='move',['p']=patas_izq, ['a']=y_axis, ['t']=-0.015897, ['s']=0.000000},
			{['c']='move',['p']=patas_izq, ['a']=z_axis, ['t']=23.318041, ['s']=0.000006},
			{['c']='turn',['p']=rodilla_izq, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=rodilla_izq, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=rodilla_izq, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=rodilla_izq, ['a']=x_axis, ['t']=-7.750053, ['s']=0.000001},
			{['c']='move',['p']=rodilla_izq, ['a']=y_axis, ['t']=-2.544123, ['s']=0.000000},
			{['c']='move',['p']=rodilla_izq, ['a']=z_axis, ['t']=12.865355, ['s']=0.000000},
			{['c']='turn',['p']=flare_der, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=flare_der, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=flare_der, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=flare_der, ['a']=x_axis, ['t']=6.951261, ['s']=0.000001},
			{['c']='move',['p']=flare_der, ['a']=y_axis, ['t']=-10.506839, ['s']=0.000000},
			{['c']='move',['p']=flare_der, ['a']=z_axis, ['t']=28.453938, ['s']=0.000000},
		}
	},
	{
		['time'] = 10,
		['commands'] = {
			{['c']='turn',['p']=patas_der, ['a']=x_axis, ['t']=0.480761, ['s']=2.877821},
			{['c']='turn',['p']=patas_der, ['a']=y_axis, ['t']=-0.000000, ['s']=0.000000},
			{['c']='turn',['p']=patas_der, ['a']=z_axis, ['t']=-0.000000, ['s']=0.000000},
			{['c']='turn',['p']=rodilla_der, ['a']=x_axis, ['t']=0.220678, ['s']=1.316249},
			{['c']='turn',['p']=rodilla_der, ['a']=y_axis, ['t']=-0.000000, ['s']=0.000000},
			{['c']='turn',['p']=rodilla_der, ['a']=z_axis, ['t']=-0.000000, ['s']=0.000000},
			{['c']='turn',['p']=tobillo_izq, ['a']=x_axis, ['t']=0.002974, ['s']=1.491314},
			{['c']='turn',['p']=tobillo_izq, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=tobillo_izq, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=patas_izq, ['a']=x_axis, ['t']=-0.473257, ['s']=2.901937},
			{['c']='turn',['p']=patas_izq, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=patas_izq, ['a']=z_axis, ['t']=-0.000000, ['s']=0.000000},
			{['c']='turn',['p']=rodilla_izq, ['a']=x_axis, ['t']=0.028162, ['s']=0.084485},
			{['c']='turn',['p']=rodilla_izq, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=rodilla_izq, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
		}
	},
	{
		['time'] = 20,
		['commands'] = {
			{['c']='turn',['p']=tobillo_der, ['a']=x_axis, ['t']=0.000000, ['s']=0.114268},
			{['c']='turn',['p']=tobillo_der, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=tobillo_der, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=espinilla_der, ['a']=z_axis, ['t']=7.756228, ['s']=0.000001},
			{['c']='turn',['p']=patas_der, ['a']=x_axis, ['t']=0.000000, ['s']=1.442284},
			{['c']='turn',['p']=patas_der, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=patas_der, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=patas_der, ['a']=z_axis, ['t']=23.343283, ['s']=0.000006},
			{['c']='turn',['p']=rodilla_der, ['a']=x_axis, ['t']=0.000000, ['s']=0.662035},
			{['c']='turn',['p']=rodilla_der, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=rodilla_der, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=rodilla_der, ['a']=y_axis, ['t']=-2.441278, ['s']=0.000001},
			{['c']='turn',['p']=tobillo_izq, ['a']=x_axis, ['t']=0.000000, ['s']=0.008923},
			{['c']='turn',['p']=tobillo_izq, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=tobillo_izq, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=tobillo_izq, ['a']=z_axis, ['t']=3.576735, ['s']=0.000001},
			{['c']='turn',['p']=patas_izq, ['a']=x_axis, ['t']=0.000000, ['s']=1.419772},
			{['c']='turn',['p']=patas_izq, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=patas_izq, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=patas_izq, ['a']=z_axis, ['t']=23.318037, ['s']=0.000011},
			{['c']='turn',['p']=rodilla_izq, ['a']=x_axis, ['t']=0.000000, ['s']=0.084485},
			{['c']='turn',['p']=rodilla_izq, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=rodilla_izq, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=rodilla_izq, ['a']=x_axis, ['t']=-7.750053, ['s']=0.000001},
			{['c']='move',['p']=flare_der, ['a']=x_axis, ['t']=6.951260, ['s']=0.000001},
		}
	},
	{
		['time'] = 30,
		['commands'] = {
		}
	},
}
Animations['reset'] = {
	{
		['time'] = 0,
		['commands'] = {
			{['c']='turn',['p']=torre_der, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=torre_der, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=torre_der, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=torre_der, ['a']=x_axis, ['t']=6.832283, ['s']=0.000000},
			{['c']='move',['p']=torre_der, ['a']=y_axis, ['t']=-0.066057, ['s']=0.000000},
			{['c']='move',['p']=torre_der, ['a']=z_axis, ['t']=27.867678, ['s']=0.000000},
			{['c']='turn',['p']=hombrera_izq, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=hombrera_izq, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=hombrera_izq, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=hombrera_izq, ['a']=x_axis, ['t']=-6.572511, ['s']=0.000000},
			{['c']='move',['p']=hombrera_izq, ['a']=y_axis, ['t']=-0.271400, ['s']=0.000000},
			{['c']='move',['p']=hombrera_izq, ['a']=z_axis, ['t']=22.162073, ['s']=0.000000},
			{['c']='turn',['p']=espinillas_izq, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=espinillas_izq, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=espinillas_izq, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=espinillas_izq, ['a']=x_axis, ['t']=-7.631046, ['s']=0.000000},
			{['c']='move',['p']=espinillas_izq, ['a']=y_axis, ['t']=-0.507951, ['s']=0.000000},
			{['c']='move',['p']=espinillas_izq, ['a']=z_axis, ['t']=7.797854, ['s']=0.000000},
			{['c']='turn',['p']=flare_izq, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=flare_izq, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=flare_izq, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=flare_izq, ['a']=x_axis, ['t']=-6.255838, ['s']=0.000000},
			{['c']='move',['p']=flare_izq, ['a']=y_axis, ['t']=-10.517165, ['s']=0.000000},
			{['c']='move',['p']=flare_izq, ['a']=z_axis, ['t']=28.438433, ['s']=0.000000},
			{['c']='turn',['p']=pie_izqzq, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=pie_izqzq, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=pie_izqzq, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=pie_izqzq, ['a']=x_axis, ['t']=-7.575974, ['s']=0.000000},
			{['c']='move',['p']=pie_izqzq, ['a']=y_axis, ['t']=0.020981, ['s']=0.000000},
			{['c']='move',['p']=pie_izqzq, ['a']=z_axis, ['t']=1.421875, ['s']=0.000000},
			{['c']='turn',['p']=pie_der, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=pie_der, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=pie_der, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=pie_der, ['a']=x_axis, ['t']=8.303809, ['s']=0.000000},
			{['c']='move',['p']=pie_der, ['a']=y_axis, ['t']=-0.230486, ['s']=0.000000},
			{['c']='move',['p']=pie_der, ['a']=z_axis, ['t']=1.316206, ['s']=0.000000},
			{['c']='turn',['p']=tobillo_der, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=tobillo_der, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=tobillo_der, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=tobillo_der, ['a']=x_axis, ['t']=8.232763, ['s']=0.000000},
			{['c']='move',['p']=tobillo_der, ['a']=y_axis, ['t']=1.241149, ['s']=0.000000},
			{['c']='move',['p']=tobillo_der, ['a']=z_axis, ['t']=3.464844, ['s']=0.000000},
			{['c']='turn',['p']=cabeza, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=cabeza, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=cabeza, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=cabeza, ['a']=x_axis, ['t']=0.327252, ['s']=0.000000},
			{['c']='move',['p']=cabeza, ['a']=y_axis, ['t']=-1.547150, ['s']=0.000000},
			{['c']='move',['p']=cabeza, ['a']=z_axis, ['t']=25.716246, ['s']=0.000000},
			{['c']='turn',['p']=espinilla_der, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=espinilla_der, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=espinilla_der, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=espinilla_der, ['a']=x_axis, ['t']=8.192632, ['s']=0.000000},
			{['c']='move',['p']=espinilla_der, ['a']=y_axis, ['t']=-0.259729, ['s']=0.000000},
			{['c']='move',['p']=espinilla_der, ['a']=z_axis, ['t']=7.756228, ['s']=0.000000},
			{['c']='turn',['p']=hombrera_der, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=hombrera_der, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=hombrera_der, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=hombrera_der, ['a']=x_axis, ['t']=7.227016, ['s']=0.000000},
			{['c']='move',['p']=hombrera_der, ['a']=y_axis, ['t']=-0.271400, ['s']=0.000000},
			{['c']='move',['p']=hombrera_der, ['a']=z_axis, ['t']=22.162073, ['s']=0.000000},
			{['c']='turn',['p']=root, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=root, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=root, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=root, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=root, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=root, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=sobaco, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=sobaco, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=sobaco, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=sobaco, ['a']=x_axis, ['t']=0.327251, ['s']=0.000000},
			{['c']='move',['p']=sobaco, ['a']=y_axis, ['t']=-0.173320, ['s']=0.000000},
			{['c']='move',['p']=sobaco, ['a']=z_axis, ['t']=22.974514, ['s']=0.000000},
			{['c']='turn',['p']=canon_izq, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=canon_izq, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=canon_izq, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=canon_izq, ['a']=x_axis, ['t']=-6.210811, ['s']=0.000000},
			{['c']='move',['p']=canon_izq, ['a']=y_axis, ['t']=-0.079587, ['s']=0.000000},
			{['c']='move',['p']=canon_izq, ['a']=z_axis, ['t']=28.630531, ['s']=0.000000},
			{['c']='turn',['p']=torre_izq, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=torre_izq, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=torre_izq, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=torre_izq, ['a']=x_axis, ['t']=-6.265769, ['s']=0.000000},
			{['c']='move',['p']=torre_izq, ['a']=y_axis, ['t']=-0.066057, ['s']=0.000000},
			{['c']='move',['p']=torre_izq, ['a']=z_axis, ['t']=27.843231, ['s']=0.000000},
			{['c']='turn',['p']=patas_der, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=patas_der, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=patas_der, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=patas_der, ['a']=x_axis, ['t']=7.227016, ['s']=0.000000},
			{['c']='move',['p']=patas_der, ['a']=y_axis, ['t']=-0.030573, ['s']=0.000000},
			{['c']='move',['p']=patas_der, ['a']=z_axis, ['t']=23.343285, ['s']=0.000000},
			{['c']='turn',['p']=rodilla_der, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=rodilla_der, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=rodilla_der, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=rodilla_der, ['a']=x_axis, ['t']=8.147104, ['s']=0.000000},
			{['c']='move',['p']=rodilla_der, ['a']=y_axis, ['t']=-2.441278, ['s']=0.000000},
			{['c']='move',['p']=rodilla_der, ['a']=z_axis, ['t']=12.764065, ['s']=0.000000},
			{['c']='turn',['p']=canon_der, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=canon_der, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=canon_der, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=canon_der, ['a']=x_axis, ['t']=6.950869, ['s']=0.000000},
			{['c']='move',['p']=canon_der, ['a']=y_axis, ['t']=-0.079587, ['s']=0.000000},
			{['c']='move',['p']=canon_der, ['a']=z_axis, ['t']=28.630531, ['s']=0.000000},
			{['c']='turn',['p']=tobillo_izq, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=tobillo_izq, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=tobillo_izq, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=tobillo_izq, ['a']=x_axis, ['t']=-7.545712, ['s']=0.000000},
			{['c']='move',['p']=tobillo_izq, ['a']=y_axis, ['t']=1.484898, ['s']=0.000000},
			{['c']='move',['p']=tobillo_izq, ['a']=z_axis, ['t']=3.576736, ['s']=0.000000},
			{['c']='turn',['p']=patas_izq, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=patas_izq, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=patas_izq, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=patas_izq, ['a']=x_axis, ['t']=-6.572511, ['s']=0.000000},
			{['c']='move',['p']=patas_izq, ['a']=y_axis, ['t']=-0.015897, ['s']=0.000000},
			{['c']='move',['p']=patas_izq, ['a']=z_axis, ['t']=23.318041, ['s']=0.000000},
			{['c']='turn',['p']=rodilla_izq, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=rodilla_izq, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=rodilla_izq, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=rodilla_izq, ['a']=x_axis, ['t']=-7.750053, ['s']=0.000000},
			{['c']='move',['p']=rodilla_izq, ['a']=y_axis, ['t']=-2.544123, ['s']=0.000000},
			{['c']='move',['p']=rodilla_izq, ['a']=z_axis, ['t']=12.865355, ['s']=0.000000},
			{['c']='turn',['p']=flare_der, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=flare_der, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=flare_der, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=flare_der, ['a']=x_axis, ['t']=6.951261, ['s']=0.000000},
			{['c']='move',['p']=flare_der, ['a']=y_axis, ['t']=-10.506839, ['s']=0.000000},
			{['c']='move',['p']=flare_der, ['a']=z_axis, ['t']=28.453938, ['s']=0.000000},
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
	Turn(root, z_axis, heading, math.rad(225))
end

function script.StopMoving()
	--Spring.Echo ("stopped walking!")
	Signal(SIG_WALK)
	StartThread(caminareset)
end


---AIMING & SHOOTING---
function script.AimFromWeapon1() 
	return torre_der
end

function script.AimFromWeapon2() 
	return torre_izq
end

function script.QueryWeapon1() 
	return flare_der
end

function script.QueryWeapon2() 
	return flare_izq
end

--called after the weapon has fired
function script.FireWeapon1()
end

function script.FireWeapon2()
end

function script.AimWeapon1( heading, pitch )
	--make sure the aiming animation is only run once
	Signal(SIG_AIM)
	SetSignalMask(SIG_AIM)
	Turn(torre_der, z_axis, heading, math.rad(225))
	--wait until the weapon is pointed in the right direction
	WaitForTurn (torre_der, z_axis)
	return true
end

function script.AimWeapon2( heading, pitch )
	--make sure the aiming animation is only run once
	Signal(SIG_AIM2)
	SetSignalMask(SIG_AIM2)
	Turn(torre_izq, z_axis, heading, math.rad(225))
	--wait until the weapon is pointed in the right direction
	WaitForTurn (torre_izq, z_axis)
	return true
end
----death animation
function script.Killed(recentDamage, maxHealth)
	Explode (cabeza, SFX.SHATTER)
	Explode (canon_der, SFX.FIRE)
	Explode (canon_izq, SFX.FIRE)
end
            
