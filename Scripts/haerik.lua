local antebrazod = piece('antebrazod');
local antebrazoi = piece('antebrazoi');
local baculo = piece('baculo');
local brazod = piece('brazod');
local brazoi = piece('brazoi');
local cabeza = piece('cabeza');
local codod = piece('codod');
local codoi = piece('codoi');
local coxisd = piece('coxisd');
local coxisi = piece('coxisi');
local escudo = piece('escudo');
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

Animations['moveAnimation'] = {
	{
		['time'] = 0,
		['commands'] = {
			{['c']='turn',['p']=antebrazod, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=antebrazod, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=antebrazod, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=antebrazod, ['a']=x_axis, ['t']=-4.315905, ['s']=0.000000},
			{['c']='move',['p']=antebrazod, ['a']=y_axis, ['t']=0.930981, ['s']=0.000000},
			{['c']='move',['p']=antebrazod, ['a']=z_axis, ['t']=15.817292, ['s']=0.000000},
			{['c']='turn',['p']=musloi, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=musloi, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=musloi, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=musloi, ['a']=x_axis, ['t']=1.655478, ['s']=0.000000},
			{['c']='move',['p']=musloi, ['a']=y_axis, ['t']=0.786520, ['s']=0.000000},
			{['c']='move',['p']=musloi, ['a']=z_axis, ['t']=9.422586, ['s']=0.000000},
			{['c']='turn',['p']=rodillad, ['a']=x_axis, ['t']=0.703513, ['s']=0.718604},
			{['c']='turn',['p']=rodillad, ['a']=y_axis, ['t']=-0.000000, ['s']=0.000000},
			{['c']='turn',['p']=rodillad, ['a']=z_axis, ['t']=-0.000000, ['s']=0.000000},
			{['c']='move',['p']=rodillad, ['a']=x_axis, ['t']=-1.667206, ['s']=0.000000},
			{['c']='move',['p']=rodillad, ['a']=y_axis, ['t']=0.818181, ['s']=0.000000},
			{['c']='move',['p']=rodillad, ['a']=z_axis, ['t']=6.428613, ['s']=0.000000},
			{['c']='turn',['p']=coxisi, ['a']=x_axis, ['t']=0.626387, ['s']=4.943275},
			{['c']='turn',['p']=coxisi, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=coxisi, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=coxisi, ['a']=x_axis, ['t']=1.358673, ['s']=0.000000},
			{['c']='move',['p']=coxisi, ['a']=y_axis, ['t']=0.872624, ['s']=0.000000},
			{['c']='move',['p']=coxisi, ['a']=z_axis, ['t']=12.214789, ['s']=0.000000},
			{['c']='turn',['p']=hombroi, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=hombroi, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=hombroi, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=hombroi, ['a']=x_axis, ['t']=3.043508, ['s']=0.000000},
			{['c']='move',['p']=hombroi, ['a']=y_axis, ['t']=0.392690, ['s']=0.000000},
			{['c']='move',['p']=hombroi, ['a']=z_axis, ['t']=17.854479, ['s']=0.000000},
			{['c']='turn',['p']=piei, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=piei, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=piei, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=piei, ['a']=x_axis, ['t']=1.683364, ['s']=0.000000},
			{['c']='move',['p']=piei, ['a']=y_axis, ['t']=0.185631, ['s']=0.000000},
			{['c']='move',['p']=piei, ['a']=z_axis, ['t']=0.479909, ['s']=0.000000},
			{['c']='turn',['p']=tobillod, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=tobillod, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=tobillod, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=tobillod, ['a']=x_axis, ['t']=-1.667206, ['s']=0.000000},
			{['c']='move',['p']=tobillod, ['a']=y_axis, ['t']=0.647804, ['s']=0.000000},
			{['c']='move',['p']=tobillod, ['a']=z_axis, ['t']=0.977156, ['s']=0.000000},
			{['c']='turn',['p']=baculo, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=baculo, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=baculo, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=baculo, ['a']=x_axis, ['t']=-7.545904, ['s']=0.000000},
			{['c']='move',['p']=baculo, ['a']=y_axis, ['t']=-4.625867, ['s']=0.000000},
			{['c']='move',['p']=baculo, ['a']=z_axis, ['t']=37.005939, ['s']=0.000000},
			{['c']='turn',['p']=hombrod, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=hombrod, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=hombrod, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=hombrod, ['a']=x_axis, ['t']=-3.251515, ['s']=0.000000},
			{['c']='move',['p']=hombrod, ['a']=y_axis, ['t']=0.975896, ['s']=0.000000},
			{['c']='move',['p']=hombrod, ['a']=z_axis, ['t']=17.834492, ['s']=0.000000},
			{['c']='turn',['p']=codod, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=codod, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=codod, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=codod, ['a']=x_axis, ['t']=-5.155097, ['s']=0.000000},
			{['c']='move',['p']=codod, ['a']=y_axis, ['t']=0.894818, ['s']=0.000000},
			{['c']='move',['p']=codod, ['a']=z_axis, ['t']=13.989861, ['s']=0.000000},
			{['c']='turn',['p']=hombrerai, ['a']=x_axis, ['t']=-0.092998, ['s']=0.316824},
			{['c']='turn',['p']=hombrerai, ['a']=y_axis, ['t']=-0.000000, ['s']=0.000000},
			{['c']='turn',['p']=hombrerai, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=hombrerai, ['a']=x_axis, ['t']=3.781284, ['s']=0.000000},
			{['c']='move',['p']=hombrerai, ['a']=y_axis, ['t']=0.905355, ['s']=0.000000},
			{['c']='move',['p']=hombrerai, ['a']=z_axis, ['t']=18.654293, ['s']=0.000000},
			{['c']='turn',['p']=flare, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=flare, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=flare, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=flare, ['a']=x_axis, ['t']=-7.571626, ['s']=0.000000},
			{['c']='move',['p']=flare, ['a']=y_axis, ['t']=-4.227624, ['s']=0.000000},
			{['c']='move',['p']=flare, ['a']=z_axis, ['t']=38.106503, ['s']=0.000000},
			{['c']='turn',['p']=brazoi, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=brazoi, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=brazoi, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=brazoi, ['a']=x_axis, ['t']=1.726647, ['s']=0.000000},
			{['c']='move',['p']=brazoi, ['a']=y_axis, ['t']=-3.977535, ['s']=0.000000},
			{['c']='move',['p']=brazoi, ['a']=z_axis, ['t']=14.977045, ['s']=0.000000},
			{['c']='turn',['p']=coxisd, ['a']=x_axis, ['t']=-0.898278, ['s']=5.252048},
			{['c']='turn',['p']=coxisd, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=coxisd, ['a']=z_axis, ['t']=-0.000000, ['s']=0.000000},
			{['c']='move',['p']=coxisd, ['a']=x_axis, ['t']=-1.473394, ['s']=0.000000},
			{['c']='move',['p']=coxisd, ['a']=y_axis, ['t']=0.872624, ['s']=0.000000},
			{['c']='move',['p']=coxisd, ['a']=z_axis, ['t']=12.214789, ['s']=0.000000},
			{['c']='turn',['p']=pied, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=pied, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=pied, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=pied, ['a']=x_axis, ['t']=-1.738134, ['s']=0.000000},
			{['c']='move',['p']=pied, ['a']=y_axis, ['t']=0.092540, ['s']=0.000000},
			{['c']='move',['p']=pied, ['a']=z_axis, ['t']=0.352864, ['s']=0.000000},
			{['c']='turn',['p']=munecai, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=munecai, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=munecai, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=munecai, ['a']=x_axis, ['t']=-0.094574, ['s']=0.000000},
			{['c']='move',['p']=munecai, ['a']=y_axis, ['t']=-4.641912, ['s']=0.000000},
			{['c']='move',['p']=munecai, ['a']=z_axis, ['t']=14.563506, ['s']=0.000000},
			{['c']='turn',['p']=antebrazoi, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=antebrazoi, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=antebrazoi, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=antebrazoi, ['a']=x_axis, ['t']=3.392581, ['s']=0.000000},
			{['c']='move',['p']=antebrazoi, ['a']=y_axis, ['t']=-1.499269, ['s']=0.000000},
			{['c']='move',['p']=antebrazoi, ['a']=z_axis, ['t']=16.639915, ['s']=0.000000},
			{['c']='turn',['p']=manod, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=manod, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=manod, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=manod, ['a']=x_axis, ['t']=-6.983781, ['s']=0.000000},
			{['c']='move',['p']=manod, ['a']=y_axis, ['t']=-3.434555, ['s']=0.000000},
			{['c']='move',['p']=manod, ['a']=z_axis, ['t']=13.410853, ['s']=0.000000},
			{['c']='turn',['p']=espinillai, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=espinillai, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=espinillai, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=espinillai, ['a']=x_axis, ['t']=1.655480, ['s']=0.000000},
			{['c']='move',['p']=espinillai, ['a']=y_axis, ['t']=0.720211, ['s']=0.000000},
			{['c']='move',['p']=espinillai, ['a']=z_axis, ['t']=3.810639, ['s']=0.000000},
			{['c']='turn',['p']=escudo, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=escudo, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=escudo, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=escudo, ['a']=x_axis, ['t']=0.399408, ['s']=0.000000},
			{['c']='move',['p']=escudo, ['a']=y_axis, ['t']=-5.231913, ['s']=0.000000},
			{['c']='move',['p']=escudo, ['a']=z_axis, ['t']=12.904409, ['s']=0.000000},
			{['c']='turn',['p']=rodillai, ['a']=x_axis, ['t']=0.620510, ['s']=0.000000},
			{['c']='turn',['p']=rodillai, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=rodillai, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=rodillai, ['a']=x_axis, ['t']=1.655479, ['s']=0.000000},
			{['c']='move',['p']=rodillai, ['a']=y_axis, ['t']=0.722067, ['s']=0.000000},
			{['c']='move',['p']=rodillai, ['a']=z_axis, ['t']=6.438481, ['s']=0.000000},
			{['c']='turn',['p']=root, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=root, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=root, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=root, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=root, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=root, ['a']=z_axis, ['t']=-0.115540, ['s']=0.000000},
			{['c']='turn',['p']=codoi, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=codoi, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=codoi, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=codoi, ['a']=x_axis, ['t']=3.548532, ['s']=0.000000},
			{['c']='move',['p']=codoi, ['a']=y_axis, ['t']=-3.422338, ['s']=0.000000},
			{['c']='move',['p']=codoi, ['a']=z_axis, ['t']=15.381695, ['s']=0.000000},
			{['c']='turn',['p']=cabeza, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=cabeza, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=cabeza, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=cabeza, ['a']=x_axis, ['t']=0.119906, ['s']=0.000000},
			{['c']='move',['p']=cabeza, ['a']=y_axis, ['t']=0.724030, ['s']=0.000000},
			{['c']='move',['p']=cabeza, ['a']=z_axis, ['t']=20.792585, ['s']=0.000000},
			{['c']='turn',['p']=torso, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=torso, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=torso, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=torso, ['a']=x_axis, ['t']=-0.037098, ['s']=0.000000},
			{['c']='move',['p']=torso, ['a']=y_axis, ['t']=1.063795, ['s']=0.000000},
			{['c']='move',['p']=torso, ['a']=z_axis, ['t']=17.572229, ['s']=0.000000},
			{['c']='turn',['p']=brazod, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=brazod, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=brazod, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=brazod, ['a']=x_axis, ['t']=-5.936362, ['s']=0.000000},
			{['c']='move',['p']=brazod, ['a']=y_axis, ['t']=-0.668778, ['s']=0.000000},
			{['c']='move',['p']=brazod, ['a']=z_axis, ['t']=13.689430, ['s']=0.000000},
			{['c']='turn',['p']=espinillad, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=espinillad, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=espinillad, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=espinillad, ['a']=x_axis, ['t']=-1.667206, ['s']=0.000000},
			{['c']='move',['p']=espinillad, ['a']=y_axis, ['t']=0.733336, ['s']=0.000000},
			{['c']='move',['p']=espinillad, ['a']=z_axis, ['t']=3.617776, ['s']=0.000000},
			{['c']='turn',['p']=manoi, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=manoi, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=manoi, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=manoi, ['a']=x_axis, ['t']=-1.235705, ['s']=0.000000},
			{['c']='move',['p']=manoi, ['a']=y_axis, ['t']=-4.814503, ['s']=0.000000},
			{['c']='move',['p']=manoi, ['a']=z_axis, ['t']=14.481218, ['s']=0.000000},
			{['c']='turn',['p']=muslod, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=muslod, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=muslod, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=muslod, ['a']=x_axis, ['t']=-1.667207, ['s']=0.000000},
			{['c']='move',['p']=muslod, ['a']=y_axis, ['t']=0.877295, ['s']=0.000000},
			{['c']='move',['p']=muslod, ['a']=z_axis, ['t']=9.408985, ['s']=0.000000},
			{['c']='turn',['p']=munecad, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=munecad, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=munecad, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=munecad, ['a']=x_axis, ['t']=-6.625601, ['s']=0.000000},
			{['c']='move',['p']=munecad, ['a']=y_axis, ['t']=-2.532308, ['s']=0.000000},
			{['c']='move',['p']=munecad, ['a']=z_axis, ['t']=13.442167, ['s']=0.000000},
			{['c']='turn',['p']=hombrerad, ['a']=x_axis, ['t']=0.092721, ['s']=0.757785},
			{['c']='turn',['p']=hombrerad, ['a']=y_axis, ['t']=-0.000000, ['s']=0.000000},
			{['c']='turn',['p']=hombrerad, ['a']=z_axis, ['t']=-0.000000, ['s']=0.000000},
			{['c']='move',['p']=hombrerad, ['a']=x_axis, ['t']=-2.700723, ['s']=0.000000},
			{['c']='move',['p']=hombrerad, ['a']=y_axis, ['t']=1.115616, ['s']=0.000000},
			{['c']='move',['p']=hombrerad, ['a']=z_axis, ['t']=17.851349, ['s']=0.000000},
			{['c']='turn',['p']=tobilloi, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=tobilloi, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=tobilloi, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=tobilloi, ['a']=x_axis, ['t']=1.655480, ['s']=0.000000},
			{['c']='move',['p']=tobilloi, ['a']=y_axis, ['t']=0.817993, ['s']=0.000000},
			{['c']='move',['p']=tobilloi, ['a']=z_axis, ['t']=1.201134, ['s']=0.000000},
		}
	},
	{
		['time'] = 9,
		['commands'] = {
			{['c']='turn',['p']=rodillad, ['a']=x_axis, ['t']=0.487932, ['s']=0.718604},
			{['c']='turn',['p']=rodillad, ['a']=y_axis, ['t']=-0.000000, ['s']=0.000000},
			{['c']='turn',['p']=rodillad, ['a']=z_axis, ['t']=-0.000000, ['s']=0.000000},
			{['c']='turn',['p']=coxisi, ['a']=x_axis, ['t']=-0.856595, ['s']=4.943275},
			{['c']='turn',['p']=coxisi, ['a']=y_axis, ['t']=-0.000000, ['s']=0.000000},
			{['c']='turn',['p']=coxisi, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=hombrerai, ['a']=x_axis, ['t']=-0.188046, ['s']=0.316824},
			{['c']='turn',['p']=hombrerai, ['a']=y_axis, ['t']=-0.000000, ['s']=0.000000},
			{['c']='turn',['p']=hombrerai, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=coxisd, ['a']=x_axis, ['t']=0.677337, ['s']=5.252048},
			{['c']='turn',['p']=coxisd, ['a']=y_axis, ['t']=-0.000000, ['s']=0.000000},
			{['c']='turn',['p']=coxisd, ['a']=z_axis, ['t']=-0.000000, ['s']=0.000000},
			{['c']='turn',['p']=hombrerad, ['a']=x_axis, ['t']=0.320057, ['s']=0.757785},
			{['c']='turn',['p']=hombrerad, ['a']=y_axis, ['t']=-0.000000, ['s']=0.000000},
			{['c']='turn',['p']=hombrerad, ['a']=z_axis, ['t']=-0.000000, ['s']=0.000000},
		}
	},
	{
		['time'] = 18,
		['commands'] = {
		}
	},
}

Animations['resetAnimation'] = {
	{
		['time'] = 0,
		['commands'] = {
			{['c']='turn',['p']=antebrazod, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=antebrazod, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=antebrazod, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=antebrazod, ['a']=x_axis, ['t']=-4.315905, ['s']=0.000000},
			{['c']='move',['p']=antebrazod, ['a']=y_axis, ['t']=0.930981, ['s']=0.000000},
			{['c']='move',['p']=antebrazod, ['a']=z_axis, ['t']=15.817292, ['s']=0.000000},
			{['c']='turn',['p']=musloi, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=musloi, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=musloi, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=musloi, ['a']=x_axis, ['t']=1.655478, ['s']=0.000000},
			{['c']='move',['p']=musloi, ['a']=y_axis, ['t']=0.786520, ['s']=0.000000},
			{['c']='move',['p']=musloi, ['a']=z_axis, ['t']=9.422586, ['s']=0.000000},
			{['c']='turn',['p']=rodillad, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=rodillad, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=rodillad, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=rodillad, ['a']=x_axis, ['t']=-1.667206, ['s']=0.000000},
			{['c']='move',['p']=rodillad, ['a']=y_axis, ['t']=0.818181, ['s']=0.000000},
			{['c']='move',['p']=rodillad, ['a']=z_axis, ['t']=6.428613, ['s']=0.000000},
			{['c']='turn',['p']=coxisi, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=coxisi, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=coxisi, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=coxisi, ['a']=x_axis, ['t']=1.358673, ['s']=0.000000},
			{['c']='move',['p']=coxisi, ['a']=y_axis, ['t']=0.872624, ['s']=0.000000},
			{['c']='move',['p']=coxisi, ['a']=z_axis, ['t']=12.214789, ['s']=0.000000},
			{['c']='turn',['p']=hombroi, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=hombroi, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=hombroi, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=hombroi, ['a']=x_axis, ['t']=3.043508, ['s']=0.000000},
			{['c']='move',['p']=hombroi, ['a']=y_axis, ['t']=0.392690, ['s']=0.000000},
			{['c']='move',['p']=hombroi, ['a']=z_axis, ['t']=17.854479, ['s']=0.000000},
			{['c']='turn',['p']=piei, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=piei, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=piei, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=piei, ['a']=x_axis, ['t']=1.683364, ['s']=0.000000},
			{['c']='move',['p']=piei, ['a']=y_axis, ['t']=0.185631, ['s']=0.000000},
			{['c']='move',['p']=piei, ['a']=z_axis, ['t']=0.479909, ['s']=0.000000},
			{['c']='turn',['p']=tobillod, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=tobillod, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=tobillod, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=tobillod, ['a']=x_axis, ['t']=-1.667206, ['s']=0.000000},
			{['c']='move',['p']=tobillod, ['a']=y_axis, ['t']=0.647804, ['s']=0.000000},
			{['c']='move',['p']=tobillod, ['a']=z_axis, ['t']=0.977156, ['s']=0.000000},
			{['c']='turn',['p']=baculo, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=baculo, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=baculo, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=baculo, ['a']=x_axis, ['t']=-7.545904, ['s']=0.000000},
			{['c']='move',['p']=baculo, ['a']=y_axis, ['t']=-4.625867, ['s']=0.000000},
			{['c']='move',['p']=baculo, ['a']=z_axis, ['t']=37.005939, ['s']=0.000000},
			{['c']='turn',['p']=hombrod, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=hombrod, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=hombrod, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=hombrod, ['a']=x_axis, ['t']=-3.251515, ['s']=0.000000},
			{['c']='move',['p']=hombrod, ['a']=y_axis, ['t']=0.975896, ['s']=0.000000},
			{['c']='move',['p']=hombrod, ['a']=z_axis, ['t']=17.834492, ['s']=0.000000},
			{['c']='turn',['p']=codod, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=codod, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=codod, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=codod, ['a']=x_axis, ['t']=-5.155097, ['s']=0.000000},
			{['c']='move',['p']=codod, ['a']=y_axis, ['t']=0.894818, ['s']=0.000000},
			{['c']='move',['p']=codod, ['a']=z_axis, ['t']=13.989861, ['s']=0.000000},
			{['c']='turn',['p']=hombrerai, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=hombrerai, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=hombrerai, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=hombrerai, ['a']=x_axis, ['t']=3.781284, ['s']=0.000000},
			{['c']='move',['p']=hombrerai, ['a']=y_axis, ['t']=0.905355, ['s']=0.000000},
			{['c']='move',['p']=hombrerai, ['a']=z_axis, ['t']=18.654293, ['s']=0.000000},
			{['c']='turn',['p']=flare, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=flare, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=flare, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=flare, ['a']=x_axis, ['t']=-7.571626, ['s']=0.000000},
			{['c']='move',['p']=flare, ['a']=y_axis, ['t']=-4.227624, ['s']=0.000000},
			{['c']='move',['p']=flare, ['a']=z_axis, ['t']=38.106503, ['s']=0.000000},
			{['c']='turn',['p']=brazoi, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=brazoi, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=brazoi, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=brazoi, ['a']=x_axis, ['t']=1.726647, ['s']=0.000000},
			{['c']='move',['p']=brazoi, ['a']=y_axis, ['t']=-3.977535, ['s']=0.000000},
			{['c']='move',['p']=brazoi, ['a']=z_axis, ['t']=14.977045, ['s']=0.000000},
			{['c']='turn',['p']=coxisd, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=coxisd, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=coxisd, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=coxisd, ['a']=x_axis, ['t']=-1.473394, ['s']=0.000000},
			{['c']='move',['p']=coxisd, ['a']=y_axis, ['t']=0.872624, ['s']=0.000000},
			{['c']='move',['p']=coxisd, ['a']=z_axis, ['t']=12.214789, ['s']=0.000000},
			{['c']='turn',['p']=pied, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=pied, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=pied, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=pied, ['a']=x_axis, ['t']=-1.738134, ['s']=0.000000},
			{['c']='move',['p']=pied, ['a']=y_axis, ['t']=0.092540, ['s']=0.000000},
			{['c']='move',['p']=pied, ['a']=z_axis, ['t']=0.352864, ['s']=0.000000},
			{['c']='turn',['p']=munecai, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=munecai, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=munecai, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=munecai, ['a']=x_axis, ['t']=-0.094574, ['s']=0.000000},
			{['c']='move',['p']=munecai, ['a']=y_axis, ['t']=-4.641912, ['s']=0.000000},
			{['c']='move',['p']=munecai, ['a']=z_axis, ['t']=14.563506, ['s']=0.000000},
			{['c']='turn',['p']=antebrazoi, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=antebrazoi, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=antebrazoi, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=antebrazoi, ['a']=x_axis, ['t']=3.392581, ['s']=0.000000},
			{['c']='move',['p']=antebrazoi, ['a']=y_axis, ['t']=-1.499269, ['s']=0.000000},
			{['c']='move',['p']=antebrazoi, ['a']=z_axis, ['t']=16.639915, ['s']=0.000000},
			{['c']='turn',['p']=manod, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=manod, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=manod, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=manod, ['a']=x_axis, ['t']=-6.983781, ['s']=0.000000},
			{['c']='move',['p']=manod, ['a']=y_axis, ['t']=-3.434555, ['s']=0.000000},
			{['c']='move',['p']=manod, ['a']=z_axis, ['t']=13.410853, ['s']=0.000000},
			{['c']='turn',['p']=espinillai, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=espinillai, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=espinillai, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=espinillai, ['a']=x_axis, ['t']=1.655480, ['s']=0.000000},
			{['c']='move',['p']=espinillai, ['a']=y_axis, ['t']=0.720211, ['s']=0.000000},
			{['c']='move',['p']=espinillai, ['a']=z_axis, ['t']=3.810639, ['s']=0.000000},
			{['c']='turn',['p']=escudo, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=escudo, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=escudo, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=escudo, ['a']=x_axis, ['t']=0.399408, ['s']=0.000000},
			{['c']='move',['p']=escudo, ['a']=y_axis, ['t']=-5.231913, ['s']=0.000000},
			{['c']='move',['p']=escudo, ['a']=z_axis, ['t']=12.904409, ['s']=0.000000},
			{['c']='turn',['p']=rodillai, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=rodillai, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=rodillai, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=rodillai, ['a']=x_axis, ['t']=1.655479, ['s']=0.000000},
			{['c']='move',['p']=rodillai, ['a']=y_axis, ['t']=0.722067, ['s']=0.000000},
			{['c']='move',['p']=rodillai, ['a']=z_axis, ['t']=6.438481, ['s']=0.000000},
			{['c']='turn',['p']=root, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=root, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=root, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=root, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=root, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=root, ['a']=z_axis, ['t']=-0.115540, ['s']=0.000000},
			{['c']='turn',['p']=codoi, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=codoi, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=codoi, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=codoi, ['a']=x_axis, ['t']=3.548532, ['s']=0.000000},
			{['c']='move',['p']=codoi, ['a']=y_axis, ['t']=-3.422338, ['s']=0.000000},
			{['c']='move',['p']=codoi, ['a']=z_axis, ['t']=15.381695, ['s']=0.000000},
			{['c']='turn',['p']=cabeza, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=cabeza, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=cabeza, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=cabeza, ['a']=x_axis, ['t']=0.119906, ['s']=0.000000},
			{['c']='move',['p']=cabeza, ['a']=y_axis, ['t']=0.724030, ['s']=0.000000},
			{['c']='move',['p']=cabeza, ['a']=z_axis, ['t']=20.792585, ['s']=0.000000},
			{['c']='turn',['p']=torso, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=torso, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=torso, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=torso, ['a']=x_axis, ['t']=-0.037098, ['s']=0.000000},
			{['c']='move',['p']=torso, ['a']=y_axis, ['t']=1.063795, ['s']=0.000000},
			{['c']='move',['p']=torso, ['a']=z_axis, ['t']=17.572229, ['s']=0.000000},
			{['c']='turn',['p']=brazod, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=brazod, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=brazod, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=brazod, ['a']=x_axis, ['t']=-5.936362, ['s']=0.000000},
			{['c']='move',['p']=brazod, ['a']=y_axis, ['t']=-0.668778, ['s']=0.000000},
			{['c']='move',['p']=brazod, ['a']=z_axis, ['t']=13.689430, ['s']=0.000000},
			{['c']='turn',['p']=espinillad, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=espinillad, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=espinillad, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=espinillad, ['a']=x_axis, ['t']=-1.667206, ['s']=0.000000},
			{['c']='move',['p']=espinillad, ['a']=y_axis, ['t']=0.733336, ['s']=0.000000},
			{['c']='move',['p']=espinillad, ['a']=z_axis, ['t']=3.617776, ['s']=0.000000},
			{['c']='turn',['p']=manoi, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=manoi, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=manoi, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=manoi, ['a']=x_axis, ['t']=-1.235705, ['s']=0.000000},
			{['c']='move',['p']=manoi, ['a']=y_axis, ['t']=-4.814503, ['s']=0.000000},
			{['c']='move',['p']=manoi, ['a']=z_axis, ['t']=14.481218, ['s']=0.000000},
			{['c']='turn',['p']=muslod, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=muslod, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=muslod, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=muslod, ['a']=x_axis, ['t']=-1.667207, ['s']=0.000000},
			{['c']='move',['p']=muslod, ['a']=y_axis, ['t']=0.877295, ['s']=0.000000},
			{['c']='move',['p']=muslod, ['a']=z_axis, ['t']=9.408985, ['s']=0.000000},
			{['c']='turn',['p']=munecad, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=munecad, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=munecad, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=munecad, ['a']=x_axis, ['t']=-6.625601, ['s']=0.000000},
			{['c']='move',['p']=munecad, ['a']=y_axis, ['t']=-2.532308, ['s']=0.000000},
			{['c']='move',['p']=munecad, ['a']=z_axis, ['t']=13.442167, ['s']=0.000000},
			{['c']='turn',['p']=hombrerad, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=hombrerad, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=hombrerad, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=hombrerad, ['a']=x_axis, ['t']=-2.700723, ['s']=0.000000},
			{['c']='move',['p']=hombrerad, ['a']=y_axis, ['t']=1.115616, ['s']=0.000000},
			{['c']='move',['p']=hombrerad, ['a']=z_axis, ['t']=17.851349, ['s']=0.000000},
			{['c']='turn',['p']=tobilloi, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=tobilloi, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=tobilloi, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=tobilloi, ['a']=x_axis, ['t']=1.655480, ['s']=0.000000},
			{['c']='move',['p']=tobilloi, ['a']=y_axis, ['t']=0.817993, ['s']=0.000000},
			{['c']='move',['p']=tobilloi, ['a']=z_axis, ['t']=1.201134, ['s']=0.000000},
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
		PlayAnimation('moveAnimation')
	end
end


function script.StartMoving(heading)
	StartThread (caminapalante)
	Turn(torso, z_axis, heading, math.rad(225))
end

function script.StopMoving()
	Signal(SIG_WALK)
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
            
