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
local mira = piece('mira');
local flare = piece('flare');
local Animations = {};

local SIG_WALK = 1	--signal for the walk animation thread

Animations['moveAnimation'] = {
	{
		['time'] = 0,
		['commands'] = {
			{['c']='move',['p']=cuello, ['a']=x_axis, ['t']=0.205570, ['s']=0.000000},
			{['c']='move',['p']=cuello, ['a']=y_axis, ['t']=1.483704, ['s']=0.000000},
			{['c']='move',['p']=cuello, ['a']=z_axis, ['t']=22.262360, ['s']=0.000000},
			{['c']='turn',['p']=cuello, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=cuello, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=cuello, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=visor, ['a']=x_axis, ['t']=0.624877, ['s']=0.000000},
			{['c']='move',['p']=visor, ['a']=y_axis, ['t']=-0.908258, ['s']=0.000000},
			{['c']='move',['p']=visor, ['a']=z_axis, ['t']=23.989622, ['s']=0.000000},
			{['c']='turn',['p']=visor, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=visor, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=visor, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=antebrazod, ['a']=x_axis, ['t']=-2.710367, ['s']=0.000000},
			{['c']='move',['p']=antebrazod, ['a']=y_axis, ['t']=1.137495, ['s']=0.000000},
			{['c']='move',['p']=antebrazod, ['a']=z_axis, ['t']=19.833593, ['s']=0.000000},
			{['c']='turn',['p']=antebrazod, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=antebrazod, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=antebrazod, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=pied, ['a']=x_axis, ['t']=-1.941753, ['s']=0.000000},
			{['c']='move',['p']=pied, ['a']=y_axis, ['t']=3.250208, ['s']=0.000000},
			{['c']='move',['p']=pied, ['a']=z_axis, ['t']=1.250294, ['s']=0.000000},
			{['c']='turn',['p']=pied, ['a']=x_axis, ['t']=-0.228208, ['s']=0.000000},
			{['c']='turn',['p']=pied, ['a']=y_axis, ['t']=0.036454, ['s']=0.000000},
			{['c']='turn',['p']=pied, ['a']=z_axis, ['t']=-0.009234, ['s']=0.000000},
			{['c']='move',['p']=bola, ['a']=x_axis, ['t']=3.703964, ['s']=0.000000},
			{['c']='move',['p']=bola, ['a']=y_axis, ['t']=-9.444648, ['s']=0.000000},
			{['c']='move',['p']=bola, ['a']=z_axis, ['t']=14.006068, ['s']=0.000000},
			{['c']='turn',['p']=bola, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=bola, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=bola, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=arma, ['a']=x_axis, ['t']=3.422498, ['s']=0.000000},
			{['c']='move',['p']=arma, ['a']=y_axis, ['t']=3.137511, ['s']=0.000000},
			{['c']='move',['p']=arma, ['a']=z_axis, ['t']=15.745967, ['s']=0.000000},
			{['c']='turn',['p']=arma, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=arma, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=arma, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=ojoi, ['a']=x_axis, ['t']=0.817501, ['s']=0.000000},
			{['c']='move',['p']=ojoi, ['a']=y_axis, ['t']=-1.352767, ['s']=0.000000},
			{['c']='move',['p']=ojoi, ['a']=z_axis, ['t']=23.992849, ['s']=0.000000},
			{['c']='turn',['p']=ojoi, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=ojoi, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=ojoi, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=entrepiernai, ['a']=x_axis, ['t']=2.568464, ['s']=0.000000},
			{['c']='move',['p']=entrepiernai, ['a']=y_axis, ['t']=2.885471, ['s']=0.000000},
			{['c']='move',['p']=entrepiernai, ['a']=z_axis, ['t']=12.721425, ['s']=0.000000},
			{['c']='turn',['p']=entrepiernai, ['a']=x_axis, ['t']=-0.251283, ['s']=2.686212},
			{['c']='turn',['p']=entrepiernai, ['a']=y_axis, ['t']=-0.022866, ['s']=0.050486},
			{['c']='turn',['p']=entrepiernai, ['a']=z_axis, ['t']=-0.017011, ['s']=0.089048},
			{['c']='move',['p']=craneo, ['a']=x_axis, ['t']=0.173268, ['s']=0.000000},
			{['c']='move',['p']=craneo, ['a']=y_axis, ['t']=0.927343, ['s']=0.000000},
			{['c']='move',['p']=craneo, ['a']=z_axis, ['t']=24.823709, ['s']=0.000000},
			{['c']='turn',['p']=craneo, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=craneo, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=craneo, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=hierro, ['a']=x_axis, ['t']=3.749246, ['s']=0.000000},
			{['c']='move',['p']=hierro, ['a']=y_axis, ['t']=-4.322881, ['s']=0.000000},
			{['c']='move',['p']=hierro, ['a']=z_axis, ['t']=14.217409, ['s']=0.000000},
			{['c']='turn',['p']=hierro, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=hierro, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=hierro, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=brazoi, ['a']=x_axis, ['t']=5.222472, ['s']=0.000000},
			{['c']='move',['p']=brazoi, ['a']=y_axis, ['t']=7.172369, ['s']=0.000000},
			{['c']='move',['p']=brazoi, ['a']=z_axis, ['t']=18.163763, ['s']=0.000000},
			{['c']='turn',['p']=brazoi, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=brazoi, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=brazoi, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=mira, ['a']=x_axis, ['t']=3.901023, ['s']=0.000000},
			{['c']='move',['p']=mira, ['a']=y_axis, ['t']=-5.792147, ['s']=0.000000},
			{['c']='move',['p']=mira, ['a']=z_axis, ['t']=16.789503, ['s']=0.000000},
			{['c']='turn',['p']=mira, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=mira, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=mira, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=cadera, ['a']=x_axis, ['t']=-0.504765, ['s']=0.000000},
			{['c']='move',['p']=cadera, ['a']=y_axis, ['t']=2.940243, ['s']=0.000000},
			{['c']='move',['p']=cadera, ['a']=z_axis, ['t']=14.134670, ['s']=0.000000},
			{['c']='turn',['p']=cadera, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=cadera, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=cadera, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=dispositivo, ['a']=x_axis, ['t']=1.833184, ['s']=0.000000},
			{['c']='move',['p']=dispositivo, ['a']=y_axis, ['t']=-0.105012, ['s']=0.000000},
			{['c']='move',['p']=dispositivo, ['a']=z_axis, ['t']=24.231228, ['s']=0.000000},
			{['c']='turn',['p']=dispositivo, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=dispositivo, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=dispositivo, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=empunadura, ['a']=x_axis, ['t']=0.368397, ['s']=0.000000},
			{['c']='move',['p']=empunadura, ['a']=y_axis, ['t']=-1.215092, ['s']=0.000000},
			{['c']='move',['p']=empunadura, ['a']=z_axis, ['t']=12.929713, ['s']=0.000000},
			{['c']='turn',['p']=empunadura, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=empunadura, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=empunadura, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=codera, ['a']=x_axis, ['t']=-4.888641, ['s']=0.000000},
			{['c']='move',['p']=codera, ['a']=y_axis, ['t']=3.143493, ['s']=0.000000},
			{['c']='move',['p']=codera, ['a']=z_axis, ['t']=15.832232, ['s']=0.000000},
			{['c']='turn',['p']=codera, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=codera, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=codera, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=Cabeza, ['a']=x_axis, ['t']=0.180301, ['s']=0.000000},
			{['c']='move',['p']=Cabeza, ['a']=y_axis, ['t']=0.780342, ['s']=0.000000},
			{['c']='move',['p']=Cabeza, ['a']=z_axis, ['t']=22.064262, ['s']=0.000000},
			{['c']='turn',['p']=Cabeza, ['a']=x_axis, ['t']=0.226993, ['s']=0.000000},
			{['c']='turn',['p']=Cabeza, ['a']=y_axis, ['t']=-0.000000, ['s']=0.000000},
			{['c']='turn',['p']=Cabeza, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=antebrazoi, ['a']=x_axis, ['t']=3.341789, ['s']=0.000000},
			{['c']='move',['p']=antebrazoi, ['a']=y_axis, ['t']=2.765300, ['s']=0.000000},
			{['c']='move',['p']=antebrazoi, ['a']=z_axis, ['t']=19.764357, ['s']=0.000000},
			{['c']='turn',['p']=antebrazoi, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=antebrazoi, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=antebrazoi, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=cintura, ['a']=x_axis, ['t']=0.049909, ['s']=0.000000},
			{['c']='move',['p']=cintura, ['a']=y_axis, ['t']=2.848086, ['s']=0.000000},
			{['c']='move',['p']=cintura, ['a']=z_axis, ['t']=14.392459, ['s']=0.000000},
			{['c']='turn',['p']=cintura, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=cintura, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=cintura, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=municion, ['a']=x_axis, ['t']=-2.419168, ['s']=0.000000},
			{['c']='move',['p']=municion, ['a']=y_axis, ['t']=3.087358, ['s']=0.000000},
			{['c']='move',['p']=municion, ['a']=z_axis, ['t']=11.226493, ['s']=0.000000},
			{['c']='turn',['p']=municion, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=municion, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=municion, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=piernad, ['a']=x_axis, ['t']=-2.003636, ['s']=0.000000},
			{['c']='move',['p']=piernad, ['a']=y_axis, ['t']=2.653216, ['s']=0.000000},
			{['c']='move',['p']=piernad, ['a']=z_axis, ['t']=6.152243, ['s']=0.000000},
			{['c']='turn',['p']=piernad, ['a']=x_axis, ['t']=1.310541, ['s']=0.000000},
			{['c']='turn',['p']=piernad, ['a']=y_axis, ['t']=-0.031942, ['s']=0.000000},
			{['c']='turn',['p']=piernad, ['a']=z_axis, ['t']=-0.012603, ['s']=0.000000},
			{['c']='move',['p']=brazod, ['a']=x_axis, ['t']=-4.588409, ['s']=0.000000},
			{['c']='move',['p']=brazod, ['a']=y_axis, ['t']=2.581352, ['s']=0.000000},
			{['c']='move',['p']=brazod, ['a']=z_axis, ['t']=16.027489, ['s']=0.000000},
			{['c']='turn',['p']=brazod, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=brazod, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=brazod, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=carga, ['a']=x_axis, ['t']=3.753169, ['s']=0.000000},
			{['c']='move',['p']=carga, ['a']=y_axis, ['t']=4.641995, ['s']=0.000000},
			{['c']='move',['p']=carga, ['a']=z_axis, ['t']=13.342978, ['s']=0.000000},
			{['c']='turn',['p']=carga, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=carga, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=carga, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=piei, ['a']=x_axis, ['t']=1.987443, ['s']=0.000000},
			{['c']='move',['p']=piei, ['a']=y_axis, ['t']=3.274037, ['s']=0.000000},
			{['c']='move',['p']=piei, ['a']=z_axis, ['t']=1.305860, ['s']=0.000000},
			{['c']='turn',['p']=piei, ['a']=x_axis, ['t']=-0.625104, ['s']=2.622325},
			{['c']='turn',['p']=piei, ['a']=y_axis, ['t']=-0.129184, ['s']=0.070083},
			{['c']='turn',['p']=piei, ['a']=z_axis, ['t']=0.092783, ['s']=0.473847},
			{['c']='move',['p']=torso, ['a']=x_axis, ['t']=-0.013728, ['s']=0.000000},
			{['c']='move',['p']=torso, ['a']=y_axis, ['t']=2.400993, ['s']=0.000000},
			{['c']='move',['p']=torso, ['a']=z_axis, ['t']=19.260654, ['s']=0.000000},
			{['c']='turn',['p']=torso, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=torso, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=torso, ['a']=z_axis, ['t']=-0.039187, ['s']=0.466403},
			{['c']='move',['p']=piernai, ['a']=x_axis, ['t']=1.926878, ['s']=0.000000},
			{['c']='move',['p']=piernai, ['a']=y_axis, ['t']=2.501865, ['s']=0.000000},
			{['c']='move',['p']=piernai, ['a']=z_axis, ['t']=6.185473, ['s']=0.000000},
			{['c']='turn',['p']=piernai, ['a']=x_axis, ['t']=0.781951, ['s']=0.653328},
			{['c']='turn',['p']=piernai, ['a']=y_axis, ['t']=0.002109, ['s']=0.027056},
			{['c']='turn',['p']=piernai, ['a']=z_axis, ['t']=-0.020377, ['s']=0.012122},
			{['c']='move',['p']=cinturon, ['a']=x_axis, ['t']=-0.162837, ['s']=0.000000},
			{['c']='move',['p']=cinturon, ['a']=y_axis, ['t']=5.404164, ['s']=0.000000},
			{['c']='move',['p']=cinturon, ['a']=z_axis, ['t']=12.302763, ['s']=0.000000},
			{['c']='turn',['p']=cinturon, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=cinturon, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=cinturon, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=dientes, ['a']=x_axis, ['t']=0.473283, ['s']=0.000000},
			{['c']='move',['p']=dientes, ['a']=y_axis, ['t']=-1.588123, ['s']=0.000000},
			{['c']='move',['p']=dientes, ['a']=z_axis, ['t']=22.824200, ['s']=0.000000},
			{['c']='turn',['p']=dientes, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=dientes, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=dientes, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=ojod, ['a']=x_axis, ['t']=-0.422123, ['s']=0.000000},
			{['c']='move',['p']=ojod, ['a']=y_axis, ['t']=-1.387787, ['s']=0.000000},
			{['c']='move',['p']=ojod, ['a']=z_axis, ['t']=23.937740, ['s']=0.000000},
			{['c']='turn',['p']=ojod, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=ojod, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=ojod, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=entrepiernad, ['a']=x_axis, ['t']=-2.656764, ['s']=0.000000},
			{['c']='move',['p']=entrepiernad, ['a']=y_axis, ['t']=3.066900, ['s']=0.000000},
			{['c']='move',['p']=entrepiernad, ['a']=z_axis, ['t']=12.906281, ['s']=0.000000},
			{['c']='turn',['p']=entrepiernad, ['a']=x_axis, ['t']=-0.002073, ['s']=5.212017},
			{['c']='turn',['p']=entrepiernad, ['a']=y_axis, ['t']=-0.035783, ['s']=0.035569},
			{['c']='turn',['p']=entrepiernad, ['a']=z_axis, ['t']=0.020366, ['s']=0.207205},
			{['c']='move',['p']=arracada, ['a']=x_axis, ['t']=-1.650434, ['s']=0.000000},
			{['c']='move',['p']=arracada, ['a']=y_axis, ['t']=-0.214336, ['s']=0.000000},
			{['c']='move',['p']=arracada, ['a']=z_axis, ['t']=25.235758, ['s']=0.000000},
			{['c']='turn',['p']=arracada, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=arracada, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=arracada, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=root, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=root, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=root, ['a']=z_axis, ['t']=-1.395436, ['s']=0.000000},
			{['c']='turn',['p']=root, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=root, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=root, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
		}
	},
	{
		['time'] = 4,
		['commands'] = {
			{['c']='turn',['p']=pied, ['a']=x_axis, ['t']=-0.453664, ['s']=3.381832},
			{['c']='turn',['p']=pied, ['a']=y_axis, ['t']=0.048299, ['s']=0.177667},
			{['c']='turn',['p']=pied, ['a']=z_axis, ['t']=-0.016362, ['s']=0.106918},
			{['c']='turn',['p']=entrepiernai, ['a']=x_axis, ['t']=0.524588, ['s']=5.819033},
			{['c']='turn',['p']=entrepiernai, ['a']=y_axis, ['t']=-0.004635, ['s']=0.136733},
			{['c']='turn',['p']=entrepiernai, ['a']=z_axis, ['t']=-0.028012, ['s']=0.082509},
			{['c']='turn',['p']=piernad, ['a']=x_axis, ['t']=0.975161, ['s']=2.515353},
			{['c']='turn',['p']=piernad, ['a']=y_axis, ['t']=-0.025738, ['s']=0.046533},
			{['c']='turn',['p']=piernad, ['a']=z_axis, ['t']=0.009074, ['s']=0.162577},
			{['c']='turn',['p']=torso, ['a']=z_axis, ['t']=0.042393, ['s']=0.611849},
			{['c']='turn',['p']=entrepiernad, ['a']=x_axis, ['t']=-0.782584, ['s']=5.853834},
			{['c']='turn',['p']=entrepiernad, ['a']=y_axis, ['t']=-0.010793, ['s']=0.187425},
			{['c']='turn',['p']=entrepiernad, ['a']=z_axis, ['t']=0.039055, ['s']=0.140166},
			{['c']='move',['p']=root, ['a']=z_axis, ['t']=-2.327252, ['s']=6.988622},
		}
	},
	{
		['time'] = 6,
		['commands'] = {
			{['c']='turn',['p']=pied, ['a']=x_axis, ['t']=-0.228208, ['s']=3.381832},
			{['c']='turn',['p']=pied, ['a']=y_axis, ['t']=0.036454, ['s']=0.177667},
			{['c']='turn',['p']=pied, ['a']=z_axis, ['t']=-0.009234, ['s']=0.106918},
			{['c']='turn',['p']=piei, ['a']=x_axis, ['t']=0.952992, ['s']=7.890482},
			{['c']='turn',['p']=piei, ['a']=y_axis, ['t']=-0.031639, ['s']=0.487724},
			{['c']='turn',['p']=piei, ['a']=z_axis, ['t']=-0.150170, ['s']=1.214766},
			{['c']='turn',['p']=piernai, ['a']=x_axis, ['t']=0.847399, ['s']=0.327240},
			{['c']='turn',['p']=piernai, ['a']=y_axis, ['t']=0.004918, ['s']=0.014044},
			{['c']='turn',['p']=piernai, ['a']=z_axis, ['t']=-0.021305, ['s']=0.004644},
		}
	},
	{
		['time'] = 8,
		['commands'] = {
			{['c']='turn',['p']=pied, ['a']=x_axis, ['t']=-0.459315, ['s']=1.733299},
			{['c']='turn',['p']=pied, ['a']=y_axis, ['t']=0.048111, ['s']=0.087429},
			{['c']='turn',['p']=pied, ['a']=z_axis, ['t']=-0.016861, ['s']=0.057203},
			{['c']='turn',['p']=entrepiernai, ['a']=x_axis, ['t']=0.178112, ['s']=2.598567},
			{['c']='turn',['p']=entrepiernai, ['a']=y_axis, ['t']=-0.013040, ['s']=0.063036},
			{['c']='turn',['p']=entrepiernai, ['a']=z_axis, ['t']=-0.023651, ['s']=0.032707},
			{['c']='turn',['p']=piernad, ['a']=x_axis, ['t']=0.855160, ['s']=0.900006},
			{['c']='turn',['p']=piernad, ['a']=y_axis, ['t']=-0.022310, ['s']=0.025707},
			{['c']='turn',['p']=piernad, ['a']=z_axis, ['t']=0.014619, ['s']=0.041594},
			{['c']='turn',['p']=torso, ['a']=z_axis, ['t']=0.039332, ['s']=0.022959},
			{['c']='turn',['p']=entrepiernad, ['a']=x_axis, ['t']=-0.368312, ['s']=3.107040},
			{['c']='turn',['p']=entrepiernad, ['a']=y_axis, ['t']=-0.022384, ['s']=0.086933},
			{['c']='turn',['p']=entrepiernad, ['a']=z_axis, ['t']=0.029829, ['s']=0.069191},
			{['c']='move',['p']=root, ['a']=z_axis, ['t']=-1.395436, ['s']=6.988622},
		}
	},
	{
		['time'] = 12,
		['commands'] = {
			{['c']='turn',['p']=pied, ['a']=x_axis, ['t']=-0.438772, ['s']=0.154071},
			{['c']='turn',['p']=pied, ['a']=y_axis, ['t']=0.047075, ['s']=0.007771},
			{['c']='turn',['p']=pied, ['a']=z_axis, ['t']=-0.016183, ['s']=0.005085},
			{['c']='turn',['p']=entrepiernai, ['a']=x_axis, ['t']=-0.725367, ['s']=6.776092},
			{['c']='turn',['p']=entrepiernai, ['a']=y_axis, ['t']=-0.026474, ['s']=0.100756},
			{['c']='turn',['p']=entrepiernai, ['a']=z_axis, ['t']=-0.003820, ['s']=0.148731},
			{['c']='turn',['p']=piernad, ['a']=x_axis, ['t']=0.201224, ['s']=4.904516},
			{['c']='turn',['p']=piernad, ['a']=y_axis, ['t']=0.010018, ['s']=0.242459},
			{['c']='turn',['p']=piernad, ['a']=z_axis, ['t']=0.039214, ['s']=0.184461},
			{['c']='turn',['p']=piei, ['a']=x_axis, ['t']=-0.243799, ['s']=5.983955},
			{['c']='turn',['p']=piei, ['a']=y_axis, ['t']=-0.141001, ['s']=0.546812},
			{['c']='turn',['p']=piei, ['a']=z_axis, ['t']=0.024751, ['s']=0.874606},
			{['c']='turn',['p']=torso, ['a']=z_axis, ['t']=-0.062387, ['s']=0.762888},
			{['c']='turn',['p']=piernai, ['a']=x_axis, ['t']=1.424489, ['s']=8.656351},
			{['c']='turn',['p']=piernai, ['a']=y_axis, ['t']=0.028012, ['s']=0.346413},
			{['c']='turn',['p']=piernai, ['a']=z_axis, ['t']=-0.019959, ['s']=0.020195},
			{['c']='turn',['p']=entrepiernad, ['a']=x_axis, ['t']=0.369520, ['s']=5.533741},
			{['c']='turn',['p']=entrepiernad, ['a']=y_axis, ['t']=-0.035897, ['s']=0.101349},
			{['c']='turn',['p']=entrepiernad, ['a']=z_axis, ['t']=0.007655, ['s']=0.166305},
		}
	},
	{
		['time'] = 14,
		['commands'] = {
			{['c']='turn',['p']=piernai, ['a']=x_axis, ['t']=0.816151, ['s']=4.562538},
			{['c']='turn',['p']=piernai, ['a']=y_axis, ['t']=0.003375, ['s']=0.184779},
			{['c']='turn',['p']=piernai, ['a']=z_axis, ['t']=-0.018160, ['s']=0.013497},
		}
	},
	{
		['time'] = 16,
		['commands'] = {
			{['c']='turn',['p']=pied, ['a']=x_axis, ['t']=0.185473, ['s']=9.363683},
			{['c']='turn',['p']=pied, ['a']=y_axis, ['t']=0.016272, ['s']=0.462044},
			{['c']='turn',['p']=pied, ['a']=z_axis, ['t']=-0.002307, ['s']=0.208145},
			{['c']='turn',['p']=entrepiernai, ['a']=x_axis, ['t']=-0.609445, ['s']=0.869414},
			{['c']='turn',['p']=entrepiernai, ['a']=y_axis, ['t']=-0.029598, ['s']=0.023427},
			{['c']='turn',['p']=entrepiernai, ['a']=z_axis, ['t']=-0.005138, ['s']=0.009881},
			{['c']='turn',['p']=piernad, ['a']=x_axis, ['t']=1.154610, ['s']=14.300784},
			{['c']='turn',['p']=piernad, ['a']=y_axis, ['t']=-0.020591, ['s']=0.459129},
			{['c']='turn',['p']=piernad, ['a']=z_axis, ['t']=-0.006765, ['s']=0.689681},
			{['c']='turn',['p']=torso, ['a']=z_axis, ['t']=0.023000, ['s']=0.640401},
			{['c']='turn',['p']=entrepiernad, ['a']=x_axis, ['t']=0.692863, ['s']=2.425070},
			{['c']='turn',['p']=entrepiernad, ['a']=y_axis, ['t']=-0.040525, ['s']=0.034712},
			{['c']='turn',['p']=entrepiernad, ['a']=z_axis, ['t']=-0.007261, ['s']=0.111876},
			{['c']='move',['p']=root, ['a']=z_axis, ['t']=-1.395436, ['s']=0.000001},
		}
	},
	{
		['time'] = 18,
		['commands'] = {
			{['c']='turn',['p']=pied, ['a']=x_axis, ['t']=-0.228208, ['s']=6.205228},
			{['c']='turn',['p']=pied, ['a']=y_axis, ['t']=0.036454, ['s']=0.302729},
			{['c']='turn',['p']=pied, ['a']=z_axis, ['t']=-0.009234, ['s']=0.103909},
			{['c']='turn',['p']=piei, ['a']=x_axis, ['t']=-0.100639, ['s']=2.147394},
			{['c']='turn',['p']=piei, ['a']=y_axis, ['t']=-0.143200, ['s']=0.032984},
			{['c']='turn',['p']=piei, ['a']=z_axis, ['t']=-0.001987, ['s']=0.401060},
			{['c']='turn',['p']=piernai, ['a']=x_axis, ['t']=0.651286, ['s']=2.472977},
			{['c']='turn',['p']=piernai, ['a']=y_axis, ['t']=-0.003302, ['s']=0.100154},
			{['c']='turn',['p']=piernai, ['a']=z_axis, ['t']=-0.017952, ['s']=0.003112},
			{['c']='turn',['p']=piernad, ['a']=x_axis, ['t']=1.310541, ['s']=2.338967},
			{['c']='turn',['p']=piernad, ['a']=y_axis, ['t']=-0.031942, ['s']=0.170268},
			{['c']='turn',['p']=piernad, ['a']=z_axis, ['t']=-0.012603, ['s']=0.087581},
		}
	},
	{
		['time'] = 20,
		['commands'] = {
		}
	},
}

Animations['resetAnimation'] = {
	{
		['time'] = 0,
		['commands'] = {
			{['c']='turn',['p']=pied, ['a']=x_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=pied, ['a']=y_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=pied, ['a']=z_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='move',['p']=pied, ['a']=x_axis, ['t']=-1.941753, ['s']=6.000000},
			{['c']='move',['p']=pied, ['a']=y_axis, ['t']=3.250208, ['s']=6.000000},
			{['c']='move',['p']=pied, ['a']=z_axis, ['t']=1.250294, ['s']=6.000000},
			{['c']='turn',['p']=cadera, ['a']=x_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=cadera, ['a']=y_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=cadera, ['a']=z_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='move',['p']=cadera, ['a']=x_axis, ['t']=-0.504765, ['s']=6.000000},
			{['c']='move',['p']=cadera, ['a']=y_axis, ['t']=2.940243, ['s']=6.000000},
			{['c']='move',['p']=cadera, ['a']=z_axis, ['t']=14.134670, ['s']=6.000000},
			{['c']='turn',['p']=cinturon, ['a']=x_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=cinturon, ['a']=y_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=cinturon, ['a']=z_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='move',['p']=cinturon, ['a']=x_axis, ['t']=-0.162837, ['s']=6.000000},
			{['c']='move',['p']=cinturon, ['a']=y_axis, ['t']=5.404164, ['s']=6.000000},
			{['c']='move',['p']=cinturon, ['a']=z_axis, ['t']=12.302763, ['s']=6.000000},
			{['c']='turn',['p']=hierro, ['a']=x_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=hierro, ['a']=y_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=hierro, ['a']=z_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='move',['p']=hierro, ['a']=x_axis, ['t']=3.749247, ['s']=6.000000},
			{['c']='move',['p']=hierro, ['a']=y_axis, ['t']=-4.322881, ['s']=6.000000},
			{['c']='move',['p']=hierro, ['a']=z_axis, ['t']=14.217409, ['s']=6.000000},
			{['c']='turn',['p']=torso, ['a']=x_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=torso, ['a']=y_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=torso, ['a']=z_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='move',['p']=torso, ['a']=x_axis, ['t']=-0.013728, ['s']=6.000000},
			{['c']='move',['p']=torso, ['a']=y_axis, ['t']=2.400993, ['s']=6.000000},
			{['c']='move',['p']=torso, ['a']=z_axis, ['t']=19.260654, ['s']=6.000000},
			{['c']='turn',['p']=cuello, ['a']=x_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=cuello, ['a']=y_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=cuello, ['a']=z_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='move',['p']=cuello, ['a']=x_axis, ['t']=0.205570, ['s']=6.000000},
			{['c']='move',['p']=cuello, ['a']=y_axis, ['t']=1.483704, ['s']=6.000000},
			{['c']='move',['p']=cuello, ['a']=z_axis, ['t']=22.262360, ['s']=6.000000},
			{['c']='turn',['p']=piei, ['a']=x_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=piei, ['a']=y_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=piei, ['a']=z_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='move',['p']=piei, ['a']=x_axis, ['t']=1.987443, ['s']=6.000000},
			{['c']='move',['p']=piei, ['a']=y_axis, ['t']=3.274037, ['s']=6.000000},
			{['c']='move',['p']=piei, ['a']=z_axis, ['t']=1.305861, ['s']=6.000000},
			{['c']='turn',['p']=ojoi, ['a']=x_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=ojoi, ['a']=y_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=ojoi, ['a']=z_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='move',['p']=ojoi, ['a']=x_axis, ['t']=0.817501, ['s']=6.000000},
			{['c']='move',['p']=ojoi, ['a']=y_axis, ['t']=-1.352767, ['s']=6.000000},
			{['c']='move',['p']=ojoi, ['a']=z_axis, ['t']=23.992849, ['s']=6.000000},
			{['c']='turn',['p']=bola, ['a']=x_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=bola, ['a']=y_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=bola, ['a']=z_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='move',['p']=bola, ['a']=x_axis, ['t']=3.703964, ['s']=6.000000},
			{['c']='move',['p']=bola, ['a']=y_axis, ['t']=-9.444649, ['s']=6.000000},
			{['c']='move',['p']=bola, ['a']=z_axis, ['t']=14.006070, ['s']=6.000000},
			{['c']='turn',['p']=ojod, ['a']=x_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=ojod, ['a']=y_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=ojod, ['a']=z_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='move',['p']=ojod, ['a']=x_axis, ['t']=-0.422123, ['s']=6.000000},
			{['c']='move',['p']=ojod, ['a']=y_axis, ['t']=-1.387787, ['s']=6.000000},
			{['c']='move',['p']=ojod, ['a']=z_axis, ['t']=23.937740, ['s']=6.000000},
			{['c']='turn',['p']=root, ['a']=x_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=root, ['a']=y_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=root, ['a']=z_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='move',['p']=root, ['a']=x_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='move',['p']=root, ['a']=y_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='move',['p']=root, ['a']=z_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=visor, ['a']=x_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=visor, ['a']=y_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=visor, ['a']=z_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='move',['p']=visor, ['a']=x_axis, ['t']=0.624877, ['s']=6.000000},
			{['c']='move',['p']=visor, ['a']=y_axis, ['t']=-0.908258, ['s']=6.000000},
			{['c']='move',['p']=visor, ['a']=z_axis, ['t']=23.989622, ['s']=6.000000},
			{['c']='turn',['p']=piernad, ['a']=x_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=piernad, ['a']=y_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=piernad, ['a']=z_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='move',['p']=piernad, ['a']=x_axis, ['t']=-2.003636, ['s']=6.000000},
			{['c']='move',['p']=piernad, ['a']=y_axis, ['t']=2.653216, ['s']=6.000000},
			{['c']='move',['p']=piernad, ['a']=z_axis, ['t']=6.152243, ['s']=6.000000},
			{['c']='turn',['p']=empunadura, ['a']=x_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=empunadura, ['a']=y_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=empunadura, ['a']=z_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='move',['p']=empunadura, ['a']=x_axis, ['t']=0.368397, ['s']=6.000000},
			{['c']='move',['p']=empunadura, ['a']=y_axis, ['t']=-1.215092, ['s']=6.000000},
			{['c']='move',['p']=empunadura, ['a']=z_axis, ['t']=12.929713, ['s']=6.000000},
			{['c']='turn',['p']=mira, ['a']=x_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=mira, ['a']=y_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=mira, ['a']=z_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='move',['p']=mira, ['a']=x_axis, ['t']=3.901023, ['s']=6.000000},
			{['c']='move',['p']=mira, ['a']=y_axis, ['t']=-5.792147, ['s']=6.000000},
			{['c']='move',['p']=mira, ['a']=z_axis, ['t']=16.789503, ['s']=6.000000},
			{['c']='turn',['p']=entrepiernai, ['a']=x_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=entrepiernai, ['a']=y_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=entrepiernai, ['a']=z_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='move',['p']=entrepiernai, ['a']=x_axis, ['t']=2.568464, ['s']=6.000000},
			{['c']='move',['p']=entrepiernai, ['a']=y_axis, ['t']=2.885471, ['s']=6.000000},
			{['c']='move',['p']=entrepiernai, ['a']=z_axis, ['t']=12.721426, ['s']=6.000000},
			{['c']='turn',['p']=arracada, ['a']=x_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=arracada, ['a']=y_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=arracada, ['a']=z_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='move',['p']=arracada, ['a']=x_axis, ['t']=-1.650434, ['s']=6.000000},
			{['c']='move',['p']=arracada, ['a']=y_axis, ['t']=-0.214336, ['s']=6.000000},
			{['c']='move',['p']=arracada, ['a']=z_axis, ['t']=25.235758, ['s']=6.000000},
			{['c']='turn',['p']=brazoi, ['a']=x_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=brazoi, ['a']=y_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=brazoi, ['a']=z_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='move',['p']=brazoi, ['a']=x_axis, ['t']=5.222472, ['s']=6.000000},
			{['c']='move',['p']=brazoi, ['a']=y_axis, ['t']=7.172369, ['s']=6.000000},
			{['c']='move',['p']=brazoi, ['a']=z_axis, ['t']=18.163763, ['s']=6.000000},
			{['c']='turn',['p']=antebrazoi, ['a']=x_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=antebrazoi, ['a']=y_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=antebrazoi, ['a']=z_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='move',['p']=antebrazoi, ['a']=x_axis, ['t']=3.341789, ['s']=6.000000},
			{['c']='move',['p']=antebrazoi, ['a']=y_axis, ['t']=2.765300, ['s']=6.000000},
			{['c']='move',['p']=antebrazoi, ['a']=z_axis, ['t']=19.764357, ['s']=6.000000},
			{['c']='turn',['p']=antebrazod, ['a']=x_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=antebrazod, ['a']=y_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=antebrazod, ['a']=z_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='move',['p']=antebrazod, ['a']=x_axis, ['t']=-2.710367, ['s']=6.000000},
			{['c']='move',['p']=antebrazod, ['a']=y_axis, ['t']=1.137495, ['s']=6.000000},
			{['c']='move',['p']=antebrazod, ['a']=z_axis, ['t']=19.833593, ['s']=6.000000},
			{['c']='turn',['p']=cintura, ['a']=x_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=cintura, ['a']=y_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=cintura, ['a']=z_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='move',['p']=cintura, ['a']=x_axis, ['t']=0.049909, ['s']=6.000000},
			{['c']='move',['p']=cintura, ['a']=y_axis, ['t']=2.848086, ['s']=6.000000},
			{['c']='move',['p']=cintura, ['a']=z_axis, ['t']=14.392459, ['s']=6.000000},
			{['c']='turn',['p']=codera, ['a']=x_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=codera, ['a']=y_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=codera, ['a']=z_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='move',['p']=codera, ['a']=x_axis, ['t']=-4.888641, ['s']=6.000000},
			{['c']='move',['p']=codera, ['a']=y_axis, ['t']=3.143493, ['s']=6.000000},
			{['c']='move',['p']=codera, ['a']=z_axis, ['t']=15.832232, ['s']=6.000000},
			{['c']='turn',['p']=dispositivo, ['a']=x_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=dispositivo, ['a']=y_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=dispositivo, ['a']=z_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='move',['p']=dispositivo, ['a']=x_axis, ['t']=1.833184, ['s']=6.000000},
			{['c']='move',['p']=dispositivo, ['a']=y_axis, ['t']=-0.105012, ['s']=6.000000},
			{['c']='move',['p']=dispositivo, ['a']=z_axis, ['t']=24.231228, ['s']=6.000000},
			{['c']='turn',['p']=municion, ['a']=x_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=municion, ['a']=y_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=municion, ['a']=z_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='move',['p']=municion, ['a']=x_axis, ['t']=-2.419168, ['s']=6.000000},
			{['c']='move',['p']=municion, ['a']=y_axis, ['t']=3.087358, ['s']=6.000000},
			{['c']='move',['p']=municion, ['a']=z_axis, ['t']=11.226493, ['s']=6.000000},
			{['c']='turn',['p']=brazod, ['a']=x_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=brazod, ['a']=y_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=brazod, ['a']=z_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='move',['p']=brazod, ['a']=x_axis, ['t']=-4.588409, ['s']=6.000000},
			{['c']='move',['p']=brazod, ['a']=y_axis, ['t']=2.581352, ['s']=6.000000},
			{['c']='move',['p']=brazod, ['a']=z_axis, ['t']=16.027489, ['s']=6.000000},
			{['c']='turn',['p']=piernai, ['a']=x_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=piernai, ['a']=y_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=piernai, ['a']=z_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='move',['p']=piernai, ['a']=x_axis, ['t']=1.926878, ['s']=6.000000},
			{['c']='move',['p']=piernai, ['a']=y_axis, ['t']=2.501865, ['s']=6.000000},
			{['c']='move',['p']=piernai, ['a']=z_axis, ['t']=6.185473, ['s']=6.000000},
			{['c']='turn',['p']=arma, ['a']=x_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=arma, ['a']=y_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=arma, ['a']=z_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='move',['p']=arma, ['a']=x_axis, ['t']=3.422498, ['s']=6.000000},
			{['c']='move',['p']=arma, ['a']=y_axis, ['t']=3.137511, ['s']=6.000000},
			{['c']='move',['p']=arma, ['a']=z_axis, ['t']=15.745967, ['s']=6.000000},
			{['c']='turn',['p']=dientes, ['a']=x_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=dientes, ['a']=y_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=dientes, ['a']=z_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='move',['p']=dientes, ['a']=x_axis, ['t']=0.473283, ['s']=6.000000},
			{['c']='move',['p']=dientes, ['a']=y_axis, ['t']=-1.588123, ['s']=6.000000},
			{['c']='move',['p']=dientes, ['a']=z_axis, ['t']=22.824200, ['s']=6.000000},
			{['c']='turn',['p']=craneo, ['a']=x_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=craneo, ['a']=y_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=craneo, ['a']=z_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='move',['p']=craneo, ['a']=x_axis, ['t']=0.173268, ['s']=6.000000},
			{['c']='move',['p']=craneo, ['a']=y_axis, ['t']=0.927343, ['s']=6.000000},
			{['c']='move',['p']=craneo, ['a']=z_axis, ['t']=24.823709, ['s']=6.000000},
			{['c']='turn',['p']=Cabeza, ['a']=x_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=Cabeza, ['a']=y_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=Cabeza, ['a']=z_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='move',['p']=Cabeza, ['a']=x_axis, ['t']=0.180301, ['s']=6.000000},
			{['c']='move',['p']=Cabeza, ['a']=y_axis, ['t']=0.780342, ['s']=6.000000},
			{['c']='move',['p']=Cabeza, ['a']=z_axis, ['t']=22.064262, ['s']=6.000000},
			{['c']='turn',['p']=entrepiernad, ['a']=x_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=entrepiernad, ['a']=y_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=entrepiernad, ['a']=z_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='move',['p']=entrepiernad, ['a']=x_axis, ['t']=-2.656764, ['s']=6.000000},
			{['c']='move',['p']=entrepiernad, ['a']=y_axis, ['t']=3.066900, ['s']=6.000000},
			{['c']='move',['p']=entrepiernad, ['a']=z_axis, ['t']=12.906281, ['s']=6.000000},
			{['c']='turn',['p']=carga, ['a']=x_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=carga, ['a']=y_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=carga, ['a']=z_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='move',['p']=carga, ['a']=x_axis, ['t']=3.753169, ['s']=6.000000},
			{['c']='move',['p']=carga, ['a']=y_axis, ['t']=4.641995, ['s']=6.000000},
			{['c']='move',['p']=carga, ['a']=z_axis, ['t']=13.342980, ['s']=6.000000},
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

local function startMove()
	Signal(SIG_WALK)
	SetSignalMask(SIG_WALK)
	while (true) do
		PlayAnimation('moveAnimation')
	end
end

local function resetMove()
	Sleep(1000)
	PlayAnimation('resetAnimation')
end

function script.StartMoving(heading)
	StartThread (startMove)
	Turn(root, z_axis, heading, math.rad(225))
end

function script.StopMoving()
	--Spring.Echo ("stopped walking!")
	Signal(SIG_WALK)
	StartThread(resetMove)
end

--called after the weapon has fired
function script.FireWeapon1()
end


---AIMING & SHOOTING---
function script.AimFromWeapon1() 
	return arma
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
end
            

