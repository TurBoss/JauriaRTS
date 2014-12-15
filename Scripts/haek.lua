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
local munecai = piece('munecai');
local muslod = piece('muslod');
local musloi = piece('musloi');
local pied = piece('pied');
local piei = piece('piei');
local rodillad = piece('rodillad');
local rodillai = piece('rodillai');
local root = piece('root');
local tobillod = piece('tobillod');
local tobilloi = piece('tobilloi');
local torso = piece('torso');
local Animations = {};

local isMoving, isShooting = false, false

local SIG_WALK = 1

Animations['moveAnimation'] = {
	{
		['time'] = 0,
		['commands'] = {
			{['c']='move',['p']=hombrod, ['a']=x_axis, ['t']=-3.450633, ['s']=0.000000},
			{['c']='move',['p']=hombrod, ['a']=y_axis, ['t']=2.200593, ['s']=0.000000},
			{['c']='move',['p']=hombrod, ['a']=z_axis, ['t']=19.399679, ['s']=0.000000},
			{['c']='turn',['p']=hombrod, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=hombrod, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=hombrod, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=munecad, ['a']=x_axis, ['t']=-4.380530, ['s']=0.000000},
			{['c']='move',['p']=munecad, ['a']=y_axis, ['t']=2.924250, ['s']=0.000000},
			{['c']='move',['p']=munecad, ['a']=z_axis, ['t']=13.203008, ['s']=0.000000},
			{['c']='turn',['p']=munecad, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=munecad, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=munecad, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=rodillad, ['a']=x_axis, ['t']=-1.935164, ['s']=0.000000},
			{['c']='move',['p']=rodillad, ['a']=y_axis, ['t']=0.466305, ['s']=0.000000},
			{['c']='move',['p']=rodillad, ['a']=z_axis, ['t']=7.537112, ['s']=0.000000},
			{['c']='turn',['p']=rodillad, ['a']=x_axis, ['t']=0.402350, ['s']=0.472270},
			{['c']='turn',['p']=rodillad, ['a']=y_axis, ['t']=-0.000000, ['s']=0.000000},
			{['c']='turn',['p']=rodillad, ['a']=z_axis, ['t']=-0.000000, ['s']=0.000000},
			{['c']='move',['p']=tobilloi, ['a']=x_axis, ['t']=2.004678, ['s']=0.000000},
			{['c']='move',['p']=tobilloi, ['a']=y_axis, ['t']=0.428671, ['s']=0.000000},
			{['c']='move',['p']=tobilloi, ['a']=z_axis, ['t']=1.736589, ['s']=0.000000},
			{['c']='turn',['p']=tobilloi, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=tobilloi, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=tobilloi, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=hombroi, ['a']=x_axis, ['t']=2.800478, ['s']=0.000000},
			{['c']='move',['p']=hombroi, ['a']=y_axis, ['t']=-1.224536, ['s']=0.000000},
			{['c']='move',['p']=hombroi, ['a']=z_axis, ['t']=19.157877, ['s']=0.000000},
			{['c']='turn',['p']=hombroi, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=hombroi, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=hombroi, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=espinillai, ['a']=x_axis, ['t']=2.004678, ['s']=0.000000},
			{['c']='move',['p']=espinillai, ['a']=y_axis, ['t']=0.492724, ['s']=0.000000},
			{['c']='move',['p']=espinillai, ['a']=z_axis, ['t']=4.612370, ['s']=0.000000},
			{['c']='turn',['p']=espinillai, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=espinillai, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=espinillai, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=piei, ['a']=x_axis, ['t']=2.011117, ['s']=0.000000},
			{['c']='move',['p']=piei, ['a']=y_axis, ['t']=-0.474862, ['s']=0.000000},
			{['c']='move',['p']=piei, ['a']=z_axis, ['t']=1.247835, ['s']=0.000000},
			{['c']='turn',['p']=piei, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=piei, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=piei, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=espinillad, ['a']=x_axis, ['t']=-1.935164, ['s']=0.000000},
			{['c']='move',['p']=espinillad, ['a']=y_axis, ['t']=0.392661, ['s']=0.000000},
			{['c']='move',['p']=espinillad, ['a']=z_axis, ['t']=4.615707, ['s']=0.000000},
			{['c']='turn',['p']=espinillad, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=espinillad, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=espinillad, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=musloi, ['a']=x_axis, ['t']=2.004676, ['s']=0.000000},
			{['c']='move',['p']=musloi, ['a']=y_axis, ['t']=0.678733, ['s']=0.000000},
			{['c']='move',['p']=musloi, ['a']=z_axis, ['t']=10.765301, ['s']=0.000000},
			{['c']='turn',['p']=musloi, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=musloi, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=musloi, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=root, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=root, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=root, ['a']=z_axis, ['t']=0.458571, ['s']=0.000000},
			{['c']='turn',['p']=root, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=root, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=root, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=antebrazoi, ['a']=x_axis, ['t']=2.336121, ['s']=0.000000},
			{['c']='move',['p']=antebrazoi, ['a']=y_axis, ['t']=-2.341893, ['s']=0.000000},
			{['c']='move',['p']=antebrazoi, ['a']=z_axis, ['t']=17.029856, ['s']=0.000000},
			{['c']='turn',['p']=antebrazoi, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=antebrazoi, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=antebrazoi, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=manod, ['a']=x_axis, ['t']=-4.202384, ['s']=0.000000},
			{['c']='move',['p']=manod, ['a']=y_axis, ['t']=1.940246, ['s']=0.000000},
			{['c']='move',['p']=manod, ['a']=z_axis, ['t']=12.759720, ['s']=0.000000},
			{['c']='turn',['p']=manod, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=manod, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=manod, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=rodillai, ['a']=x_axis, ['t']=2.004676, ['s']=0.000000},
			{['c']='move',['p']=rodillai, ['a']=y_axis, ['t']=0.461302, ['s']=0.000000},
			{['c']='move',['p']=rodillai, ['a']=z_axis, ['t']=7.534532, ['s']=0.000000},
			{['c']='turn',['p']=rodillai, ['a']=x_axis, ['t']=0.276711, ['s']=0.923226},
			{['c']='turn',['p']=rodillai, ['a']=y_axis, ['t']=-0.000000, ['s']=0.000000},
			{['c']='turn',['p']=rodillai, ['a']=z_axis, ['t']=-0.000000, ['s']=0.000000},
			{['c']='move',['p']=antebrazod, ['a']=x_axis, ['t']=-3.066971, ['s']=0.000000},
			{['c']='move',['p']=antebrazod, ['a']=y_axis, ['t']=3.936662, ['s']=0.000000},
			{['c']='move',['p']=antebrazod, ['a']=z_axis, ['t']=17.952236, ['s']=0.000000},
			{['c']='turn',['p']=antebrazod, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=antebrazod, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=antebrazod, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=flare, ['a']=x_axis, ['t']=-3.314389, ['s']=0.000000},
			{['c']='move',['p']=flare, ['a']=y_axis, ['t']=-15.534762, ['s']=0.000000},
			{['c']='move',['p']=flare, ['a']=z_axis, ['t']=12.652086, ['s']=0.000000},
			{['c']='turn',['p']=flare, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=flare, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=flare, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=manoi, ['a']=x_axis, ['t']=-3.542562, ['s']=0.000000},
			{['c']='move',['p']=manoi, ['a']=y_axis, ['t']=-4.788315, ['s']=0.000000},
			{['c']='move',['p']=manoi, ['a']=z_axis, ['t']=12.707001, ['s']=0.000000},
			{['c']='turn',['p']=manoi, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=manoi, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=manoi, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=coxisd, ['a']=x_axis, ['t']=-1.373554, ['s']=0.000000},
			{['c']='move',['p']=coxisd, ['a']=y_axis, ['t']=0.933399, ['s']=0.000000},
			{['c']='move',['p']=coxisd, ['a']=z_axis, ['t']=13.372475, ['s']=0.000000},
			{['c']='turn',['p']=coxisd, ['a']=x_axis, ['t']=0.819940, ['s']=4.427788},
			{['c']='turn',['p']=coxisd, ['a']=y_axis, ['t']=-0.000000, ['s']=0.000000},
			{['c']='turn',['p']=coxisd, ['a']=z_axis, ['t']=-0.000000, ['s']=0.000000},
			{['c']='move',['p']=munecai, ['a']=x_axis, ['t']=-2.198336, ['s']=0.000000},
			{['c']='move',['p']=munecai, ['a']=y_axis, ['t']=-4.597720, ['s']=0.000000},
			{['c']='move',['p']=munecai, ['a']=z_axis, ['t']=13.116478, ['s']=0.000000},
			{['c']='turn',['p']=munecai, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=munecai, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=munecai, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=tobillod, ['a']=x_axis, ['t']=-1.935164, ['s']=0.000000},
			{['c']='move',['p']=tobillod, ['a']=y_axis, ['t']=0.225276, ['s']=0.000000},
			{['c']='move',['p']=tobillod, ['a']=z_axis, ['t']=1.705102, ['s']=0.000000},
			{['c']='turn',['p']=tobillod, ['a']=x_axis, ['t']=0.104676, ['s']=0.000000},
			{['c']='turn',['p']=tobillod, ['a']=y_axis, ['t']=-0.000000, ['s']=0.000000},
			{['c']='turn',['p']=tobillod, ['a']=z_axis, ['t']=-0.000000, ['s']=0.000000},
			{['c']='move',['p']=pied, ['a']=x_axis, ['t']=-2.011032, ['s']=0.000000},
			{['c']='move',['p']=pied, ['a']=y_axis, ['t']=-0.434670, ['s']=0.000000},
			{['c']='move',['p']=pied, ['a']=z_axis, ['t']=1.165964, ['s']=0.000000},
			{['c']='turn',['p']=pied, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=pied, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=pied, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=codoi, ['a']=x_axis, ['t']=1.603498, ['s']=0.000000},
			{['c']='move',['p']=codoi, ['a']=y_axis, ['t']=-3.365687, ['s']=0.000000},
			{['c']='move',['p']=codoi, ['a']=z_axis, ['t']=14.659117, ['s']=0.000000},
			{['c']='turn',['p']=codoi, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=codoi, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=codoi, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=arma, ['a']=x_axis, ['t']=-3.321328, ['s']=0.000000},
			{['c']='move',['p']=arma, ['a']=y_axis, ['t']=-15.197103, ['s']=0.000000},
			{['c']='move',['p']=arma, ['a']=z_axis, ['t']=12.447304, ['s']=0.000000},
			{['c']='turn',['p']=arma, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=arma, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=arma, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=cabeza, ['a']=x_axis, ['t']=-0.041069, ['s']=0.000000},
			{['c']='move',['p']=cabeza, ['a']=y_axis, ['t']=-0.075735, ['s']=0.000000},
			{['c']='move',['p']=cabeza, ['a']=z_axis, ['t']=22.499687, ['s']=0.000000},
			{['c']='turn',['p']=cabeza, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=cabeza, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=cabeza, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=brazod, ['a']=x_axis, ['t']=-3.422251, ['s']=0.000000},
			{['c']='move',['p']=brazod, ['a']=y_axis, ['t']=4.418612, ['s']=0.000000},
			{['c']='move',['p']=brazod, ['a']=z_axis, ['t']=14.488000, ['s']=0.000000},
			{['c']='turn',['p']=brazod, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=brazod, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=brazod, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=codod, ['a']=x_axis, ['t']=-2.468157, ['s']=0.000000},
			{['c']='move',['p']=codod, ['a']=y_axis, ['t']=5.864190, ['s']=0.000000},
			{['c']='move',['p']=codod, ['a']=z_axis, ['t']=16.098942, ['s']=0.000000},
			{['c']='turn',['p']=codod, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=codod, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=codod, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=muslod, ['a']=x_axis, ['t']=-1.935165, ['s']=0.000000},
			{['c']='move',['p']=muslod, ['a']=y_axis, ['t']=0.826780, ['s']=0.000000},
			{['c']='move',['p']=muslod, ['a']=z_axis, ['t']=10.755068, ['s']=0.000000},
			{['c']='turn',['p']=muslod, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=muslod, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=muslod, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=capa, ['a']=x_axis, ['t']=0.591780, ['s']=0.000000},
			{['c']='move',['p']=capa, ['a']=y_axis, ['t']=2.798884, ['s']=0.000000},
			{['c']='move',['p']=capa, ['a']=z_axis, ['t']=19.732761, ['s']=0.000000},
			{['c']='turn',['p']=capa, ['a']=x_axis, ['t']=0.581179, ['s']=0.904212},
			{['c']='turn',['p']=capa, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=capa, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=hombrerai, ['a']=x_axis, ['t']=2.282218, ['s']=0.000000},
			{['c']='move',['p']=hombrerai, ['a']=y_axis, ['t']=-1.398321, ['s']=0.088601},
			{['c']='move',['p']=hombrerai, ['a']=z_axis, ['t']=19.132450, ['s']=1.842327},
			{['c']='turn',['p']=hombrerai, ['a']=x_axis, ['t']=0.088985, ['s']=1.136210},
			{['c']='turn',['p']=hombrerai, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=hombrerai, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=torso, ['a']=x_axis, ['t']=-0.039681, ['s']=0.000000},
			{['c']='move',['p']=torso, ['a']=y_axis, ['t']=0.623314, ['s']=0.000000},
			{['c']='move',['p']=torso, ['a']=z_axis, ['t']=19.103046, ['s']=0.000000},
			{['c']='turn',['p']=torso, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=torso, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=torso, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=baculo, ['a']=x_axis, ['t']=-3.450746, ['s']=0.000000},
			{['c']='move',['p']=baculo, ['a']=y_axis, ['t']=-12.148682, ['s']=0.000000},
			{['c']='move',['p']=baculo, ['a']=z_axis, ['t']=12.881951, ['s']=0.000000},
			{['c']='turn',['p']=baculo, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=baculo, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=baculo, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=hombrerad, ['a']=x_axis, ['t']=-2.598452, ['s']=0.000000},
			{['c']='move',['p']=hombrerad, ['a']=y_axis, ['t']=1.830054, ['s']=0.088601},
			{['c']='move',['p']=hombrerad, ['a']=z_axis, ['t']=19.654274, ['s']=1.842327},
			{['c']='turn',['p']=hombrerad, ['a']=x_axis, ['t']=0.088985, ['s']=1.136210},
			{['c']='turn',['p']=hombrerad, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=hombrerad, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=coxisi, ['a']=x_axis, ['t']=1.453300, ['s']=0.000000},
			{['c']='move',['p']=coxisi, ['a']=y_axis, ['t']=0.933399, ['s']=0.000000},
			{['c']='move',['p']=coxisi, ['a']=z_axis, ['t']=13.372475, ['s']=0.000000},
			{['c']='turn',['p']=coxisi, ['a']=x_axis, ['t']=-0.811031, ['s']=4.606888},
			{['c']='turn',['p']=coxisi, ['a']=y_axis, ['t']=-0.000000, ['s']=0.000000},
			{['c']='turn',['p']=coxisi, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=brazoi, ['a']=x_axis, ['t']=-0.299553, ['s']=0.000000},
			{['c']='move',['p']=brazoi, ['a']=y_axis, ['t']=-3.924590, ['s']=0.000000},
			{['c']='move',['p']=brazoi, ['a']=z_axis, ['t']=14.023690, ['s']=0.000000},
			{['c']='turn',['p']=brazoi, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=brazoi, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=brazoi, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
		}
	},
	{
		['time'] = 11,
		['commands'] = {
			{['c']='turn',['p']=rodillad, ['a']=x_axis, ['t']=0.229184, ['s']=0.472270},
			{['c']='turn',['p']=rodillad, ['a']=y_axis, ['t']=-0.000000, ['s']=0.000000},
			{['c']='turn',['p']=rodillad, ['a']=z_axis, ['t']=-0.000000, ['s']=0.000000},
			{['c']='turn',['p']=rodillai, ['a']=x_axis, ['t']=0.615227, ['s']=0.923226},
			{['c']='turn',['p']=rodillai, ['a']=y_axis, ['t']=-0.000000, ['s']=0.000000},
			{['c']='turn',['p']=rodillai, ['a']=z_axis, ['t']=-0.000000, ['s']=0.000000},
			{['c']='turn',['p']=coxisd, ['a']=x_axis, ['t']=-0.803582, ['s']=4.427788},
			{['c']='turn',['p']=coxisd, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=coxisd, ['a']=z_axis, ['t']=-0.000000, ['s']=0.000000},
			{['c']='turn',['p']=capa, ['a']=x_axis, ['t']=0.912723, ['s']=0.904212},
			{['c']='turn',['p']=capa, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=capa, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=hombrerai, ['a']=y_axis, ['t']=-1.365834, ['s']=0.088601},
			{['c']='move',['p']=hombrerai, ['a']=z_axis, ['t']=19.807970, ['s']=1.842327},
			{['c']='turn',['p']=hombrerai, ['a']=x_axis, ['t']=-0.327625, ['s']=1.136210},
			{['c']='turn',['p']=hombrerai, ['a']=y_axis, ['t']=-0.000000, ['s']=0.000000},
			{['c']='turn',['p']=hombrerai, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=hombrerad, ['a']=y_axis, ['t']=1.797567, ['s']=0.088601},
			{['c']='move',['p']=hombrerad, ['a']=z_axis, ['t']=18.978754, ['s']=1.842327},
			{['c']='turn',['p']=hombrerad, ['a']=x_axis, ['t']=-0.327625, ['s']=1.136210},
			{['c']='turn',['p']=hombrerad, ['a']=y_axis, ['t']=-0.000000, ['s']=0.000000},
			{['c']='turn',['p']=hombrerad, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=coxisi, ['a']=x_axis, ['t']=0.878161, ['s']=4.606888},
			{['c']='turn',['p']=coxisi, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=coxisi, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
		}
	},
	{
		['time'] = 22,
		['commands'] = {
		}
	},
}

Animations['resetAnimation'] = {
	{
		['time'] = 0,
		['commands'] = {
			{['c']='turn',['p']=torso, ['a']=x_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=torso, ['a']=y_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=torso, ['a']=z_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='move',['p']=torso, ['a']=x_axis, ['t']=-0.039681, ['s']=6.000000},
			{['c']='move',['p']=torso, ['a']=y_axis, ['t']=0.623314, ['s']=6.000000},
			{['c']='move',['p']=torso, ['a']=z_axis, ['t']=19.103046, ['s']=6.000000},
			{['c']='turn',['p']=capa, ['a']=x_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=capa, ['a']=y_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=capa, ['a']=z_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='move',['p']=capa, ['a']=x_axis, ['t']=0.800064, ['s']=6.000000},
			{['c']='move',['p']=capa, ['a']=y_axis, ['t']=2.654924, ['s']=6.000000},
			{['c']='move',['p']=capa, ['a']=z_axis, ['t']=19.923941, ['s']=6.000000},
			{['c']='turn',['p']=manoi, ['a']=x_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=manoi, ['a']=y_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=manoi, ['a']=z_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='move',['p']=manoi, ['a']=x_axis, ['t']=-3.542562, ['s']=6.000000},
			{['c']='move',['p']=manoi, ['a']=y_axis, ['t']=-4.788315, ['s']=6.000000},
			{['c']='move',['p']=manoi, ['a']=z_axis, ['t']=12.707001, ['s']=6.000000},
			{['c']='turn',['p']=tobilloi, ['a']=x_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=tobilloi, ['a']=y_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=tobilloi, ['a']=z_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='move',['p']=tobilloi, ['a']=x_axis, ['t']=2.004678, ['s']=6.000000},
			{['c']='move',['p']=tobilloi, ['a']=y_axis, ['t']=0.428671, ['s']=6.000000},
			{['c']='move',['p']=tobilloi, ['a']=z_axis, ['t']=1.736589, ['s']=6.000000},
			{['c']='turn',['p']=hombroi, ['a']=x_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=hombroi, ['a']=y_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=hombroi, ['a']=z_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='move',['p']=hombroi, ['a']=x_axis, ['t']=2.800478, ['s']=6.000000},
			{['c']='move',['p']=hombroi, ['a']=y_axis, ['t']=-1.224536, ['s']=6.000000},
			{['c']='move',['p']=hombroi, ['a']=z_axis, ['t']=19.157877, ['s']=6.000000},
			{['c']='turn',['p']=antebrazoi, ['a']=x_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=antebrazoi, ['a']=y_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=antebrazoi, ['a']=z_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='move',['p']=antebrazoi, ['a']=x_axis, ['t']=2.336121, ['s']=6.000000},
			{['c']='move',['p']=antebrazoi, ['a']=y_axis, ['t']=-2.341893, ['s']=6.000000},
			{['c']='move',['p']=antebrazoi, ['a']=z_axis, ['t']=17.029856, ['s']=6.000000},
			{['c']='turn',['p']=hombrerad, ['a']=x_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=hombrerad, ['a']=y_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=hombrerad, ['a']=z_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='move',['p']=hombrerad, ['a']=x_axis, ['t']=-2.598452, ['s']=6.000000},
			{['c']='move',['p']=hombrerad, ['a']=y_axis, ['t']=1.846854, ['s']=6.000000},
			{['c']='move',['p']=hombrerad, ['a']=z_axis, ['t']=19.509790, ['s']=6.000000},
			{['c']='turn',['p']=rodillad, ['a']=x_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=rodillad, ['a']=y_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=rodillad, ['a']=z_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='move',['p']=rodillad, ['a']=x_axis, ['t']=-1.935164, ['s']=6.000000},
			{['c']='move',['p']=rodillad, ['a']=y_axis, ['t']=0.466305, ['s']=6.000000},
			{['c']='move',['p']=rodillad, ['a']=z_axis, ['t']=7.537112, ['s']=6.000000},
			{['c']='turn',['p']=codod, ['a']=x_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=codod, ['a']=y_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=codod, ['a']=z_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='move',['p']=codod, ['a']=x_axis, ['t']=-2.468157, ['s']=6.000000},
			{['c']='move',['p']=codod, ['a']=y_axis, ['t']=5.864190, ['s']=6.000000},
			{['c']='move',['p']=codod, ['a']=z_axis, ['t']=16.098942, ['s']=6.000000},
			{['c']='turn',['p']=munecai, ['a']=x_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=munecai, ['a']=y_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=munecai, ['a']=z_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='move',['p']=munecai, ['a']=x_axis, ['t']=-2.198336, ['s']=6.000000},
			{['c']='move',['p']=munecai, ['a']=y_axis, ['t']=-4.597720, ['s']=6.000000},
			{['c']='move',['p']=munecai, ['a']=z_axis, ['t']=13.116478, ['s']=6.000000},
			{['c']='turn',['p']=brazod, ['a']=x_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=brazod, ['a']=y_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=brazod, ['a']=z_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='move',['p']=brazod, ['a']=x_axis, ['t']=-3.422251, ['s']=6.000000},
			{['c']='move',['p']=brazod, ['a']=y_axis, ['t']=4.418612, ['s']=6.000000},
			{['c']='move',['p']=brazod, ['a']=z_axis, ['t']=14.488000, ['s']=6.000000},
			{['c']='turn',['p']=rodillai, ['a']=x_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=rodillai, ['a']=y_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=rodillai, ['a']=z_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='move',['p']=rodillai, ['a']=x_axis, ['t']=2.004676, ['s']=6.000000},
			{['c']='move',['p']=rodillai, ['a']=y_axis, ['t']=0.461302, ['s']=6.000000},
			{['c']='move',['p']=rodillai, ['a']=z_axis, ['t']=7.534532, ['s']=6.000000},
			{['c']='turn',['p']=espinillad, ['a']=x_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=espinillad, ['a']=y_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=espinillad, ['a']=z_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='move',['p']=espinillad, ['a']=x_axis, ['t']=-1.935164, ['s']=6.000000},
			{['c']='move',['p']=espinillad, ['a']=y_axis, ['t']=0.392661, ['s']=6.000000},
			{['c']='move',['p']=espinillad, ['a']=z_axis, ['t']=4.615707, ['s']=6.000000},
			{['c']='turn',['p']=hombrod, ['a']=x_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=hombrod, ['a']=y_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=hombrod, ['a']=z_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='move',['p']=hombrod, ['a']=x_axis, ['t']=-3.450633, ['s']=6.000000},
			{['c']='move',['p']=hombrod, ['a']=y_axis, ['t']=2.200593, ['s']=6.000000},
			{['c']='move',['p']=hombrod, ['a']=z_axis, ['t']=19.399679, ['s']=6.000000},
			{['c']='turn',['p']=codoi, ['a']=x_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=codoi, ['a']=y_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=codoi, ['a']=z_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='move',['p']=codoi, ['a']=x_axis, ['t']=1.603498, ['s']=6.000000},
			{['c']='move',['p']=codoi, ['a']=y_axis, ['t']=-3.365687, ['s']=6.000000},
			{['c']='move',['p']=codoi, ['a']=z_axis, ['t']=14.659117, ['s']=6.000000},
			{['c']='turn',['p']=muslod, ['a']=x_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=muslod, ['a']=y_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=muslod, ['a']=z_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='move',['p']=muslod, ['a']=x_axis, ['t']=-1.935165, ['s']=6.000000},
			{['c']='move',['p']=muslod, ['a']=y_axis, ['t']=0.826780, ['s']=6.000000},
			{['c']='move',['p']=muslod, ['a']=z_axis, ['t']=10.755068, ['s']=6.000000},
			{['c']='turn',['p']=pied, ['a']=x_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=pied, ['a']=y_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=pied, ['a']=z_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='move',['p']=pied, ['a']=x_axis, ['t']=-2.011032, ['s']=6.000000},
			{['c']='move',['p']=pied, ['a']=y_axis, ['t']=-0.434670, ['s']=6.000000},
			{['c']='move',['p']=pied, ['a']=z_axis, ['t']=1.165964, ['s']=6.000000},
			{['c']='turn',['p']=piei, ['a']=x_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=piei, ['a']=y_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=piei, ['a']=z_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='move',['p']=piei, ['a']=x_axis, ['t']=2.011117, ['s']=6.000000},
			{['c']='move',['p']=piei, ['a']=y_axis, ['t']=-0.474862, ['s']=6.000000},
			{['c']='move',['p']=piei, ['a']=z_axis, ['t']=1.247835, ['s']=6.000000},
			{['c']='turn',['p']=munecad, ['a']=x_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=munecad, ['a']=y_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=munecad, ['a']=z_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='move',['p']=munecad, ['a']=x_axis, ['t']=-4.380530, ['s']=6.000000},
			{['c']='move',['p']=munecad, ['a']=y_axis, ['t']=2.924250, ['s']=6.000000},
			{['c']='move',['p']=munecad, ['a']=z_axis, ['t']=13.203008, ['s']=6.000000},
			{['c']='turn',['p']=baculo, ['a']=x_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=baculo, ['a']=y_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=baculo, ['a']=z_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='move',['p']=baculo, ['a']=x_axis, ['t']=-3.450746, ['s']=6.000000},
			{['c']='move',['p']=baculo, ['a']=y_axis, ['t']=-12.148682, ['s']=6.000000},
			{['c']='move',['p']=baculo, ['a']=z_axis, ['t']=12.881951, ['s']=6.000000},
			{['c']='turn',['p']=hombrerai, ['a']=x_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=hombrerai, ['a']=y_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=hombrerai, ['a']=z_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='move',['p']=hombrerai, ['a']=x_axis, ['t']=2.282218, ['s']=6.000000},
			{['c']='move',['p']=hombrerai, ['a']=y_axis, ['t']=-1.415122, ['s']=6.000000},
			{['c']='move',['p']=hombrerai, ['a']=z_axis, ['t']=19.276934, ['s']=6.000000},
			{['c']='turn',['p']=flare, ['a']=x_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=flare, ['a']=y_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=flare, ['a']=z_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='move',['p']=flare, ['a']=x_axis, ['t']=-3.314389, ['s']=6.000000},
			{['c']='move',['p']=flare, ['a']=y_axis, ['t']=-15.534762, ['s']=6.000000},
			{['c']='move',['p']=flare, ['a']=z_axis, ['t']=12.652086, ['s']=6.000000},
			{['c']='turn',['p']=brazoi, ['a']=x_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=brazoi, ['a']=y_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=brazoi, ['a']=z_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='move',['p']=brazoi, ['a']=x_axis, ['t']=-0.299553, ['s']=6.000000},
			{['c']='move',['p']=brazoi, ['a']=y_axis, ['t']=-3.924590, ['s']=6.000000},
			{['c']='move',['p']=brazoi, ['a']=z_axis, ['t']=14.023690, ['s']=6.000000},
			{['c']='turn',['p']=coxisd, ['a']=x_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=coxisd, ['a']=y_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=coxisd, ['a']=z_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='move',['p']=coxisd, ['a']=x_axis, ['t']=-1.373554, ['s']=6.000000},
			{['c']='move',['p']=coxisd, ['a']=y_axis, ['t']=0.933399, ['s']=6.000000},
			{['c']='move',['p']=coxisd, ['a']=z_axis, ['t']=13.372475, ['s']=6.000000},
			{['c']='turn',['p']=musloi, ['a']=x_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=musloi, ['a']=y_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=musloi, ['a']=z_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='move',['p']=musloi, ['a']=x_axis, ['t']=2.004676, ['s']=6.000000},
			{['c']='move',['p']=musloi, ['a']=y_axis, ['t']=0.678733, ['s']=6.000000},
			{['c']='move',['p']=musloi, ['a']=z_axis, ['t']=10.765301, ['s']=6.000000},
			{['c']='turn',['p']=coxisi, ['a']=x_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=coxisi, ['a']=y_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=coxisi, ['a']=z_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='move',['p']=coxisi, ['a']=x_axis, ['t']=1.453300, ['s']=6.000000},
			{['c']='move',['p']=coxisi, ['a']=y_axis, ['t']=0.933399, ['s']=6.000000},
			{['c']='move',['p']=coxisi, ['a']=z_axis, ['t']=13.372475, ['s']=6.000000},
			{['c']='turn',['p']=arma, ['a']=x_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=arma, ['a']=y_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=arma, ['a']=z_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='move',['p']=arma, ['a']=x_axis, ['t']=-3.321328, ['s']=6.000000},
			{['c']='move',['p']=arma, ['a']=y_axis, ['t']=-15.197103, ['s']=6.000000},
			{['c']='move',['p']=arma, ['a']=z_axis, ['t']=12.447304, ['s']=6.000000},
			{['c']='turn',['p']=cabeza, ['a']=x_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=cabeza, ['a']=y_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=cabeza, ['a']=z_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='move',['p']=cabeza, ['a']=x_axis, ['t']=-0.041069, ['s']=6.000000},
			{['c']='move',['p']=cabeza, ['a']=y_axis, ['t']=-0.075735, ['s']=6.000000},
			{['c']='move',['p']=cabeza, ['a']=z_axis, ['t']=22.499687, ['s']=6.000000},
			{['c']='turn',['p']=antebrazod, ['a']=x_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=antebrazod, ['a']=y_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=antebrazod, ['a']=z_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='move',['p']=antebrazod, ['a']=x_axis, ['t']=-3.066971, ['s']=6.000000},
			{['c']='move',['p']=antebrazod, ['a']=y_axis, ['t']=3.936662, ['s']=6.000000},
			{['c']='move',['p']=antebrazod, ['a']=z_axis, ['t']=17.952236, ['s']=6.000000},
			{['c']='turn',['p']=tobillod, ['a']=x_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=tobillod, ['a']=y_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=tobillod, ['a']=z_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='move',['p']=tobillod, ['a']=x_axis, ['t']=-1.935164, ['s']=6.000000},
			{['c']='move',['p']=tobillod, ['a']=y_axis, ['t']=0.225276, ['s']=6.000000},
			{['c']='move',['p']=tobillod, ['a']=z_axis, ['t']=1.705102, ['s']=6.000000},
			{['c']='turn',['p']=espinillai, ['a']=x_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=espinillai, ['a']=y_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=espinillai, ['a']=z_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='move',['p']=espinillai, ['a']=x_axis, ['t']=2.004678, ['s']=6.000000},
			{['c']='move',['p']=espinillai, ['a']=y_axis, ['t']=0.492724, ['s']=6.000000},
			{['c']='move',['p']=espinillai, ['a']=z_axis, ['t']=4.612370, ['s']=6.000000},
			{['c']='turn',['p']=root, ['a']=x_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=root, ['a']=y_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=root, ['a']=z_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='move',['p']=root, ['a']=x_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='move',['p']=root, ['a']=y_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='move',['p']=root, ['a']=z_axis, ['t']=0.458571, ['s']=6.000000},
			{['c']='turn',['p']=manod, ['a']=x_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=manod, ['a']=y_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=manod, ['a']=z_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='move',['p']=manod, ['a']=x_axis, ['t']=-4.202384, ['s']=6.000000},
			{['c']='move',['p']=manod, ['a']=y_axis, ['t']=1.940246, ['s']=6.000000},
			{['c']='move',['p']=manod, ['a']=z_axis, ['t']=12.759720, ['s']=6.000000},
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
    Spin(arma, y_axis, math.rad(120))
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
	end
end

local function RestorePose()
	Signal(SIG_WALK)
	SetSignalMask(SIG_WALK)
	PlayAnimation('resetAnimation')
end

function script.StartMoving(heading)
	StartThread (Walk)
	Turn(torso, z_axis, heading, math.rad(225))
end

function script.StopMoving()
	isMoving = false
	StartThread(RestorePose)
end

--called after the weapon has fired
function script.FireWeapon1()
end


---AIMING & SHOOTING---
function script.AimFromWeapon1() 
	return torso
end


function script.QueryWeapon1() 
	return flare
end


function script.AimWeapon1( heading, pitch )
	--make sure the aiming animation is only run once
	Signal(SIG_AIM)
	SetSignalMask(SIG_AIM)
	Turn(torso, z_axis, heading, math.rad(350))
	--wait until the weapon is pointed in the right direction
	WaitForTurn (torso, z_axis)
	return true
end


----death animation
function script.Killed(recentDamage, maxHealth)
	Explode (torso, SFX.SHATTER)
	Explode (hombrerad, SFX.FIRE)
	Explode (hombrerai, SFX.FIRE)
	Explode (baculo, SFX.FIRE)
end
            
