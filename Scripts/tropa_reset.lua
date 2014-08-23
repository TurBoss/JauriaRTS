local antebrazod = piece('antebrazod');
local antebrazoi = piece('antebrazoi');
local arma = piece('arma');
local arracada = piece('arracada');
local bola = piece('bola');
local brazod = piece('brazod');
local brazoi = piece('brazoi');
local Cabeza = piece('Cabeza');
local cadera = piece('cadera');
local carga = piece('carga');
local cintura = piece('cintura');
local cinturon = piece('cinturon');
local codera = piece('codera');
local craneo = piece('craneo');
local cuello = piece('cuello');
local dientes = piece('dientes');
local dispositivo = piece('dispositivo');
local empunadura = piece('empunadura');
local entrepiernad = piece('entrepiernad');
local entrepiernai = piece('entrepiernai');
local hierro = piece('hierro');
local mira = piece('mira');
local municion = piece('municion');
local ojod = piece('ojod');
local ojoi = piece('ojoi');
local pied = piece('pied');
local piei = piece('piei');
local piernad = piece('piernad');
local piernai = piece('piernai');
local root = piece('root');
local torso = piece('torso');
local visor = piece('visor');
local Animations = {};

Animations['myAnimation'] = {
	{
		['time'] = 0,
		['commands'] = {
			{['c']='turn',['p']=pied, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=pied, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=pied, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=pied, ['a']=x_axis, ['t']=-1.941753, ['s']=0.000000},
			{['c']='move',['p']=pied, ['a']=y_axis, ['t']=3.250208, ['s']=0.000000},
			{['c']='move',['p']=pied, ['a']=z_axis, ['t']=1.250294, ['s']=0.000000},
			{['c']='turn',['p']=cadera, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=cadera, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=cadera, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=cadera, ['a']=x_axis, ['t']=-0.504765, ['s']=0.000000},
			{['c']='move',['p']=cadera, ['a']=y_axis, ['t']=2.940243, ['s']=0.000000},
			{['c']='move',['p']=cadera, ['a']=z_axis, ['t']=14.134670, ['s']=0.000000},
			{['c']='turn',['p']=cinturon, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=cinturon, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=cinturon, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=cinturon, ['a']=x_axis, ['t']=-0.162837, ['s']=0.000000},
			{['c']='move',['p']=cinturon, ['a']=y_axis, ['t']=5.404164, ['s']=0.000000},
			{['c']='move',['p']=cinturon, ['a']=z_axis, ['t']=12.302763, ['s']=0.000000},
			{['c']='turn',['p']=hierro, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=hierro, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=hierro, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=hierro, ['a']=x_axis, ['t']=3.749247, ['s']=0.000000},
			{['c']='move',['p']=hierro, ['a']=y_axis, ['t']=-4.322881, ['s']=0.000000},
			{['c']='move',['p']=hierro, ['a']=z_axis, ['t']=14.217409, ['s']=0.000000},
			{['c']='turn',['p']=torso, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=torso, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=torso, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=torso, ['a']=x_axis, ['t']=-0.013728, ['s']=0.000000},
			{['c']='move',['p']=torso, ['a']=y_axis, ['t']=2.400993, ['s']=0.000000},
			{['c']='move',['p']=torso, ['a']=z_axis, ['t']=19.260654, ['s']=0.000000},
			{['c']='turn',['p']=cuello, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=cuello, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=cuello, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=cuello, ['a']=x_axis, ['t']=0.205570, ['s']=0.000000},
			{['c']='move',['p']=cuello, ['a']=y_axis, ['t']=1.483704, ['s']=0.000000},
			{['c']='move',['p']=cuello, ['a']=z_axis, ['t']=22.262360, ['s']=0.000000},
			{['c']='turn',['p']=piei, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=piei, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=piei, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=piei, ['a']=x_axis, ['t']=1.987443, ['s']=0.000000},
			{['c']='move',['p']=piei, ['a']=y_axis, ['t']=3.274037, ['s']=0.000000},
			{['c']='move',['p']=piei, ['a']=z_axis, ['t']=1.305861, ['s']=0.000000},
			{['c']='turn',['p']=ojoi, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=ojoi, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=ojoi, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=ojoi, ['a']=x_axis, ['t']=0.817501, ['s']=0.000000},
			{['c']='move',['p']=ojoi, ['a']=y_axis, ['t']=-1.352767, ['s']=0.000000},
			{['c']='move',['p']=ojoi, ['a']=z_axis, ['t']=23.992849, ['s']=0.000000},
			{['c']='turn',['p']=bola, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=bola, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=bola, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=bola, ['a']=x_axis, ['t']=3.703964, ['s']=0.000000},
			{['c']='move',['p']=bola, ['a']=y_axis, ['t']=-9.444649, ['s']=0.000000},
			{['c']='move',['p']=bola, ['a']=z_axis, ['t']=14.006070, ['s']=0.000000},
			{['c']='turn',['p']=ojod, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=ojod, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=ojod, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=ojod, ['a']=x_axis, ['t']=-0.422123, ['s']=0.000000},
			{['c']='move',['p']=ojod, ['a']=y_axis, ['t']=-1.387787, ['s']=0.000000},
			{['c']='move',['p']=ojod, ['a']=z_axis, ['t']=23.937740, ['s']=0.000000},
			{['c']='turn',['p']=root, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=root, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=root, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=root, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=root, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=root, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=visor, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=visor, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=visor, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=visor, ['a']=x_axis, ['t']=0.624877, ['s']=0.000000},
			{['c']='move',['p']=visor, ['a']=y_axis, ['t']=-0.908258, ['s']=0.000000},
			{['c']='move',['p']=visor, ['a']=z_axis, ['t']=23.989622, ['s']=0.000000},
			{['c']='turn',['p']=piernad, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=piernad, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=piernad, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=piernad, ['a']=x_axis, ['t']=-2.003636, ['s']=0.000000},
			{['c']='move',['p']=piernad, ['a']=y_axis, ['t']=2.653216, ['s']=0.000000},
			{['c']='move',['p']=piernad, ['a']=z_axis, ['t']=6.152243, ['s']=0.000000},
			{['c']='turn',['p']=empunadura, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=empunadura, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=empunadura, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=empunadura, ['a']=x_axis, ['t']=0.368397, ['s']=0.000000},
			{['c']='move',['p']=empunadura, ['a']=y_axis, ['t']=-1.215092, ['s']=0.000000},
			{['c']='move',['p']=empunadura, ['a']=z_axis, ['t']=12.929713, ['s']=0.000000},
			{['c']='turn',['p']=mira, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=mira, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=mira, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=mira, ['a']=x_axis, ['t']=3.901023, ['s']=0.000000},
			{['c']='move',['p']=mira, ['a']=y_axis, ['t']=-5.792147, ['s']=0.000000},
			{['c']='move',['p']=mira, ['a']=z_axis, ['t']=16.789503, ['s']=0.000000},
			{['c']='turn',['p']=entrepiernai, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=entrepiernai, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=entrepiernai, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=entrepiernai, ['a']=x_axis, ['t']=2.568464, ['s']=0.000000},
			{['c']='move',['p']=entrepiernai, ['a']=y_axis, ['t']=2.885471, ['s']=0.000000},
			{['c']='move',['p']=entrepiernai, ['a']=z_axis, ['t']=12.721426, ['s']=0.000000},
			{['c']='turn',['p']=arracada, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=arracada, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=arracada, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=arracada, ['a']=x_axis, ['t']=-1.650434, ['s']=0.000000},
			{['c']='move',['p']=arracada, ['a']=y_axis, ['t']=-0.214336, ['s']=0.000000},
			{['c']='move',['p']=arracada, ['a']=z_axis, ['t']=25.235758, ['s']=0.000000},
			{['c']='turn',['p']=brazoi, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=brazoi, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=brazoi, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=brazoi, ['a']=x_axis, ['t']=5.222472, ['s']=0.000000},
			{['c']='move',['p']=brazoi, ['a']=y_axis, ['t']=7.172369, ['s']=0.000000},
			{['c']='move',['p']=brazoi, ['a']=z_axis, ['t']=18.163763, ['s']=0.000000},
			{['c']='turn',['p']=antebrazoi, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=antebrazoi, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=antebrazoi, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=antebrazoi, ['a']=x_axis, ['t']=3.341789, ['s']=0.000000},
			{['c']='move',['p']=antebrazoi, ['a']=y_axis, ['t']=2.765300, ['s']=0.000000},
			{['c']='move',['p']=antebrazoi, ['a']=z_axis, ['t']=19.764357, ['s']=0.000000},
			{['c']='turn',['p']=antebrazod, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=antebrazod, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=antebrazod, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=antebrazod, ['a']=x_axis, ['t']=-2.710367, ['s']=0.000000},
			{['c']='move',['p']=antebrazod, ['a']=y_axis, ['t']=1.137495, ['s']=0.000000},
			{['c']='move',['p']=antebrazod, ['a']=z_axis, ['t']=19.833593, ['s']=0.000000},
			{['c']='turn',['p']=cintura, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=cintura, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=cintura, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=cintura, ['a']=x_axis, ['t']=0.049909, ['s']=0.000000},
			{['c']='move',['p']=cintura, ['a']=y_axis, ['t']=2.848086, ['s']=0.000000},
			{['c']='move',['p']=cintura, ['a']=z_axis, ['t']=14.392459, ['s']=0.000000},
			{['c']='turn',['p']=codera, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=codera, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=codera, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=codera, ['a']=x_axis, ['t']=-4.888641, ['s']=0.000000},
			{['c']='move',['p']=codera, ['a']=y_axis, ['t']=3.143493, ['s']=0.000000},
			{['c']='move',['p']=codera, ['a']=z_axis, ['t']=15.832232, ['s']=0.000000},
			{['c']='turn',['p']=dispositivo, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=dispositivo, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=dispositivo, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=dispositivo, ['a']=x_axis, ['t']=1.833184, ['s']=0.000000},
			{['c']='move',['p']=dispositivo, ['a']=y_axis, ['t']=-0.105012, ['s']=0.000000},
			{['c']='move',['p']=dispositivo, ['a']=z_axis, ['t']=24.231228, ['s']=0.000000},
			{['c']='turn',['p']=municion, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=municion, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=municion, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=municion, ['a']=x_axis, ['t']=-2.419168, ['s']=0.000000},
			{['c']='move',['p']=municion, ['a']=y_axis, ['t']=3.087358, ['s']=0.000000},
			{['c']='move',['p']=municion, ['a']=z_axis, ['t']=11.226493, ['s']=0.000000},
			{['c']='turn',['p']=brazod, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=brazod, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=brazod, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=brazod, ['a']=x_axis, ['t']=-4.588409, ['s']=0.000000},
			{['c']='move',['p']=brazod, ['a']=y_axis, ['t']=2.581352, ['s']=0.000000},
			{['c']='move',['p']=brazod, ['a']=z_axis, ['t']=16.027489, ['s']=0.000000},
			{['c']='turn',['p']=piernai, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=piernai, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=piernai, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=piernai, ['a']=x_axis, ['t']=1.926878, ['s']=0.000000},
			{['c']='move',['p']=piernai, ['a']=y_axis, ['t']=2.501865, ['s']=0.000000},
			{['c']='move',['p']=piernai, ['a']=z_axis, ['t']=6.185473, ['s']=0.000000},
			{['c']='turn',['p']=arma, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=arma, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=arma, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=arma, ['a']=x_axis, ['t']=3.422498, ['s']=0.000000},
			{['c']='move',['p']=arma, ['a']=y_axis, ['t']=3.137511, ['s']=0.000000},
			{['c']='move',['p']=arma, ['a']=z_axis, ['t']=15.745967, ['s']=0.000000},
			{['c']='turn',['p']=dientes, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=dientes, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=dientes, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=dientes, ['a']=x_axis, ['t']=0.473283, ['s']=0.000000},
			{['c']='move',['p']=dientes, ['a']=y_axis, ['t']=-1.588123, ['s']=0.000000},
			{['c']='move',['p']=dientes, ['a']=z_axis, ['t']=22.824200, ['s']=0.000000},
			{['c']='turn',['p']=craneo, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=craneo, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=craneo, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=craneo, ['a']=x_axis, ['t']=0.173268, ['s']=0.000000},
			{['c']='move',['p']=craneo, ['a']=y_axis, ['t']=0.927343, ['s']=0.000000},
			{['c']='move',['p']=craneo, ['a']=z_axis, ['t']=24.823709, ['s']=0.000000},
			{['c']='turn',['p']=Cabeza, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=Cabeza, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=Cabeza, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=Cabeza, ['a']=x_axis, ['t']=0.180301, ['s']=0.000000},
			{['c']='move',['p']=Cabeza, ['a']=y_axis, ['t']=0.780342, ['s']=0.000000},
			{['c']='move',['p']=Cabeza, ['a']=z_axis, ['t']=22.064262, ['s']=0.000000},
			{['c']='turn',['p']=entrepiernad, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=entrepiernad, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=entrepiernad, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=entrepiernad, ['a']=x_axis, ['t']=-2.656764, ['s']=0.000000},
			{['c']='move',['p']=entrepiernad, ['a']=y_axis, ['t']=3.066900, ['s']=0.000000},
			{['c']='move',['p']=entrepiernad, ['a']=z_axis, ['t']=12.906281, ['s']=0.000000},
			{['c']='turn',['p']=carga, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=carga, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=carga, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=carga, ['a']=x_axis, ['t']=3.753169, ['s']=0.000000},
			{['c']='move',['p']=carga, ['a']=y_axis, ['t']=4.641995, ['s']=0.000000},
			{['c']='move',['p']=carga, ['a']=z_axis, ['t']=13.342980, ['s']=0.000000},
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
            