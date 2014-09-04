local antebrazod = piece('antebrazod');
local antebrazoi = piece('antebrazoi');
local arma = piece('arma');
local bola = piece('bola');
local brazod = piece('brazod');
local brazoi = piece('brazoi');
local Cabeza = piece('Cabeza');
local cinturon = piece('cinturon');
local codera = piece('codera');
local cuerpo = piece('cuerpo');
local dientes = piece('dientes');
local entrepiernad = piece('entrepiernad');
local entrepiernai = piece('entrepiernai');
local flare = piece('flare');
local hierro = piece('hierro');
local light = piece('light');
local mira = piece('mira');
local mochila = piece('mochila');
local ojos = piece('ojos');
local pied = piece('pied');
local piei = piece('piei');
local piernad = piece('piernad');
local piernai = piece('piernai');
local root = piece('root');
local visor = piece('visor');

local Animations = {};

local SIG_WALK = 1	--signal for the walk animation thread

Animations['moveAnimation'] = {
	{
		['time'] = 0,
		['commands'] = {
			{['c']='move',['p']=piernad, ['a']=x_axis, ['t']=-2.003636, ['s']=0.000000},
			{['c']='move',['p']=piernad, ['a']=y_axis, ['t']=2.653216, ['s']=0.000000},
			{['c']='move',['p']=piernad, ['a']=z_axis, ['t']=6.152239, ['s']=0.000000},
			{['c']='turn',['p']=piernad, ['a']=x_axis, ['t']=1.081178, ['s']=2.398036},
			{['c']='turn',['p']=piernad, ['a']=y_axis, ['t']=-0.000000, ['s']=0.000000},
			{['c']='turn',['p']=piernad, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=flare, ['a']=x_axis, ['t']=3.679390, ['s']=0.000000},
			{['c']='move',['p']=flare, ['a']=y_axis, ['t']=-16.624016, ['s']=0.000000},
			{['c']='move',['p']=flare, ['a']=z_axis, ['t']=13.846897, ['s']=0.000000},
			{['c']='turn',['p']=flare, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=flare, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=flare, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=mira, ['a']=x_axis, ['t']=3.901022, ['s']=0.000000},
			{['c']='move',['p']=mira, ['a']=y_axis, ['t']=-5.792148, ['s']=0.000000},
			{['c']='move',['p']=mira, ['a']=z_axis, ['t']=16.921490, ['s']=0.000000},
			{['c']='turn',['p']=mira, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=mira, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=mira, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=entrepiernai, ['a']=x_axis, ['t']=2.568464, ['s']=0.000000},
			{['c']='move',['p']=entrepiernai, ['a']=y_axis, ['t']=2.885471, ['s']=0.000000},
			{['c']='move',['p']=entrepiernai, ['a']=z_axis, ['t']=12.721424, ['s']=0.000000},
			{['c']='turn',['p']=entrepiernai, ['a']=x_axis, ['t']=0.123643, ['s']=4.318063},
			{['c']='turn',['p']=entrepiernai, ['a']=y_axis, ['t']=-0.000000, ['s']=0.000000},
			{['c']='turn',['p']=entrepiernai, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=Cabeza, ['a']=x_axis, ['t']=0.180301, ['s']=0.000000},
			{['c']='move',['p']=Cabeza, ['a']=y_axis, ['t']=0.893394, ['s']=0.000000},
			{['c']='move',['p']=Cabeza, ['a']=z_axis, ['t']=22.615835, ['s']=0.000000},
			{['c']='turn',['p']=Cabeza, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=Cabeza, ['a']=y_axis, ['t']=-0.000000, ['s']=0.000000},
			{['c']='turn',['p']=Cabeza, ['a']=z_axis, ['t']=0.333796, ['s']=1.363702},
			{['c']='move',['p']=cinturon, ['a']=x_axis, ['t']=-0.162837, ['s']=0.000000},
			{['c']='move',['p']=cinturon, ['a']=y_axis, ['t']=5.404164, ['s']=0.000000},
			{['c']='move',['p']=cinturon, ['a']=z_axis, ['t']=11.146599, ['s']=0.000000},
			{['c']='turn',['p']=cinturon, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=cinturon, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=cinturon, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=ojos, ['a']=x_axis, ['t']=-0.422123, ['s']=0.000000},
			{['c']='move',['p']=ojos, ['a']=y_axis, ['t']=-1.387787, ['s']=0.000000},
			{['c']='move',['p']=ojos, ['a']=z_axis, ['t']=24.069721, ['s']=0.000000},
			{['c']='turn',['p']=ojos, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=ojos, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=ojos, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=cuerpo, ['a']=x_axis, ['t']=-0.079993, ['s']=0.000000},
			{['c']='move',['p']=cuerpo, ['a']=y_axis, ['t']=2.526546, ['s']=0.000000},
			{['c']='move',['p']=cuerpo, ['a']=z_axis, ['t']=15.091851, ['s']=0.000000},
			{['c']='turn',['p']=cuerpo, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=cuerpo, ['a']=y_axis, ['t']=-0.000000, ['s']=0.000000},
			{['c']='turn',['p']=cuerpo, ['a']=z_axis, ['t']=0.094375, ['s']=0.316100},
			{['c']='move',['p']=piernai, ['a']=x_axis, ['t']=1.926878, ['s']=0.000000},
			{['c']='move',['p']=piernai, ['a']=y_axis, ['t']=2.501865, ['s']=0.000000},
			{['c']='move',['p']=piernai, ['a']=z_axis, ['t']=6.185470, ['s']=0.000000},
			{['c']='turn',['p']=piernai, ['a']=x_axis, ['t']=0.541867, ['s']=5.561445},
			{['c']='turn',['p']=piernai, ['a']=y_axis, ['t']=-0.000000, ['s']=0.000000},
			{['c']='turn',['p']=piernai, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=entrepiernad, ['a']=x_axis, ['t']=-2.656764, ['s']=0.000000},
			{['c']='move',['p']=entrepiernad, ['a']=y_axis, ['t']=3.066901, ['s']=0.000000},
			{['c']='move',['p']=entrepiernad, ['a']=z_axis, ['t']=12.906279, ['s']=0.000000},
			{['c']='turn',['p']=entrepiernad, ['a']=x_axis, ['t']=-0.821969, ['s']=1.694089},
			{['c']='turn',['p']=entrepiernad, ['a']=y_axis, ['t']=-0.000000, ['s']=0.000000},
			{['c']='turn',['p']=entrepiernad, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=brazoi, ['a']=x_axis, ['t']=5.222471, ['s']=0.000000},
			{['c']='move',['p']=brazoi, ['a']=y_axis, ['t']=7.172369, ['s']=0.000000},
			{['c']='move',['p']=brazoi, ['a']=z_axis, ['t']=18.295748, ['s']=0.000000},
			{['c']='turn',['p']=brazoi, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=brazoi, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=brazoi, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=antebrazoi, ['a']=x_axis, ['t']=3.341789, ['s']=0.000000},
			{['c']='move',['p']=antebrazoi, ['a']=y_axis, ['t']=3.627209, ['s']=0.000000},
			{['c']='move',['p']=antebrazoi, ['a']=z_axis, ['t']=20.679716, ['s']=0.000000},
			{['c']='turn',['p']=antebrazoi, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=antebrazoi, ['a']=y_axis, ['t']=-0.000000, ['s']=0.000000},
			{['c']='turn',['p']=antebrazoi, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=brazod, ['a']=x_axis, ['t']=-4.588409, ['s']=0.000000},
			{['c']='move',['p']=brazod, ['a']=y_axis, ['t']=2.581352, ['s']=0.000000},
			{['c']='move',['p']=brazod, ['a']=z_axis, ['t']=16.159475, ['s']=0.000000},
			{['c']='turn',['p']=brazod, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=brazod, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=brazod, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=hierro, ['a']=x_axis, ['t']=3.749246, ['s']=0.000000},
			{['c']='move',['p']=hierro, ['a']=y_axis, ['t']=-4.322882, ['s']=0.000000},
			{['c']='move',['p']=hierro, ['a']=z_axis, ['t']=14.349396, ['s']=0.000000},
			{['c']='turn',['p']=hierro, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=hierro, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=hierro, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=pied, ['a']=x_axis, ['t']=-1.941752, ['s']=0.000000},
			{['c']='move',['p']=pied, ['a']=y_axis, ['t']=3.250207, ['s']=0.000000},
			{['c']='move',['p']=pied, ['a']=z_axis, ['t']=1.250289, ['s']=0.000000},
			{['c']='turn',['p']=pied, ['a']=x_axis, ['t']=-0.047681, ['s']=0.476807},
			{['c']='turn',['p']=pied, ['a']=y_axis, ['t']=-0.000000, ['s']=0.000000},
			{['c']='turn',['p']=pied, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=visor, ['a']=x_axis, ['t']=0.624877, ['s']=0.000000},
			{['c']='move',['p']=visor, ['a']=y_axis, ['t']=-0.908259, ['s']=0.000000},
			{['c']='move',['p']=visor, ['a']=z_axis, ['t']=24.121603, ['s']=0.000000},
			{['c']='turn',['p']=visor, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=visor, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=visor, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=antebrazod, ['a']=x_axis, ['t']=-2.710367, ['s']=0.000000},
			{['c']='move',['p']=antebrazod, ['a']=y_axis, ['t']=1.250547, ['s']=0.000000},
			{['c']='move',['p']=antebrazod, ['a']=z_axis, ['t']=20.385168, ['s']=0.000000},
			{['c']='turn',['p']=antebrazod, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=antebrazod, ['a']=y_axis, ['t']=-0.000000, ['s']=0.000000},
			{['c']='turn',['p']=antebrazod, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=dientes, ['a']=x_axis, ['t']=0.473283, ['s']=0.000000},
			{['c']='move',['p']=dientes, ['a']=y_axis, ['t']=-1.588124, ['s']=0.000000},
			{['c']='move',['p']=dientes, ['a']=z_axis, ['t']=22.956181, ['s']=0.000000},
			{['c']='turn',['p']=dientes, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=dientes, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=dientes, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=piei, ['a']=x_axis, ['t']=1.987443, ['s']=0.000000},
			{['c']='move',['p']=piei, ['a']=y_axis, ['t']=3.274037, ['s']=0.000000},
			{['c']='move',['p']=piei, ['a']=z_axis, ['t']=1.305858, ['s']=0.000000},
			{['c']='turn',['p']=piei, ['a']=x_axis, ['t']=-0.693124, ['s']=1.694073},
			{['c']='turn',['p']=piei, ['a']=y_axis, ['t']=-0.000000, ['s']=0.000000},
			{['c']='turn',['p']=piei, ['a']=z_axis, ['t']=-0.000000, ['s']=0.000000},
			{['c']='move',['p']=mochila, ['a']=x_axis, ['t']=0.205570, ['s']=0.000000},
			{['c']='move',['p']=mochila, ['a']=y_axis, ['t']=1.305298, ['s']=0.000000},
			{['c']='move',['p']=mochila, ['a']=z_axis, ['t']=22.872080, ['s']=0.000000},
			{['c']='turn',['p']=mochila, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=mochila, ['a']=y_axis, ['t']=-0.000000, ['s']=0.000000},
			{['c']='turn',['p']=mochila, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=codera, ['a']=x_axis, ['t']=-4.888641, ['s']=0.000000},
			{['c']='move',['p']=codera, ['a']=y_axis, ['t']=2.925162, ['s']=0.000000},
			{['c']='move',['p']=codera, ['a']=z_axis, ['t']=16.019499, ['s']=0.000000},
			{['c']='turn',['p']=codera, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=codera, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=codera, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=root, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=root, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=root, ['a']=z_axis, ['t']=-1.156165, ['s']=0.000000},
			{['c']='turn',['p']=root, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=root, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=root, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=arma, ['a']=x_axis, ['t']=3.422498, ['s']=0.000000},
			{['c']='move',['p']=arma, ['a']=y_axis, ['t']=3.137511, ['s']=0.000000},
			{['c']='move',['p']=arma, ['a']=z_axis, ['t']=15.877952, ['s']=0.000000},
			{['c']='turn',['p']=arma, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=arma, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=arma, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=bola, ['a']=x_axis, ['t']=3.703963, ['s']=0.000000},
			{['c']='move',['p']=bola, ['a']=y_axis, ['t']=-9.444649, ['s']=0.000000},
			{['c']='move',['p']=bola, ['a']=z_axis, ['t']=14.138057, ['s']=0.000000},
			{['c']='turn',['p']=bola, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=bola, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=bola, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=light, ['a']=x_axis, ['t']=2.253601, ['s']=0.000000},
			{['c']='move',['p']=light, ['a']=y_axis, ['t']=-0.373005, ['s']=0.000000},
			{['c']='move',['p']=light, ['a']=z_axis, ['t']=23.150826, ['s']=0.000000},
			{['c']='turn',['p']=light, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=light, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=light, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
		}
	},
	{
		['time'] = 3,
		['commands'] = {
			{['c']='turn',['p']=piernad, ['a']=x_axis, ['t']=0.805605, ['s']=4.133602},
			{['c']='turn',['p']=entrepiernai, ['a']=x_axis, ['t']=-0.360546, ['s']=7.262832},
			{['c']='turn',['p']=Cabeza, ['a']=z_axis, ['t']=0.164581, ['s']=2.538221},
			{['c']='turn',['p']=cuerpo, ['a']=z_axis, ['t']=0.051433, ['s']=0.644126},
			{['c']='turn',['p']=piernai, ['a']=x_axis, ['t']=1.364700, ['s']=12.342499},
			{['c']='turn',['p']=entrepiernad, ['a']=x_axis, ['t']=-0.599665, ['s']=3.334563},
			{['c']='turn',['p']=pied, ['a']=x_axis, ['t']=-0.119475, ['s']=1.076911},
			{['c']='turn',['p']=piei, ['a']=x_axis, ['t']=-0.608420, ['s']=1.270554},
			{['c']='turn',['p']=piei, ['a']=y_axis, ['t']=-0.000000, ['s']=0.000000},
			{['c']='turn',['p']=piei, ['a']=z_axis, ['t']=-0.000000, ['s']=0.000000},
		}
	},
	{
		['time'] = 5,
		['commands'] = {
			{['c']='turn',['p']=piernad, ['a']=x_axis, ['t']=0.593211, ['s']=3.185901},
			{['c']='turn',['p']=entrepiernai, ['a']=x_axis, ['t']=-0.715815, ['s']=5.329038},
			{['c']='turn',['p']=Cabeza, ['a']=z_axis, ['t']=0.000000, ['s']=2.468721},
			{['c']='turn',['p']=cuerpo, ['a']=z_axis, ['t']=0.003499, ['s']=0.719007},
			{['c']='turn',['p']=piernai, ['a']=x_axis, ['t']=1.488726, ['s']=1.860380},
			{['c']='turn',['p']=entrepiernad, ['a']=x_axis, ['t']=-0.363388, ['s']=3.544157},
			{['c']='turn',['p']=pied, ['a']=x_axis, ['t']=-0.210252, ['s']=1.361657},
			{['c']='turn',['p']=piei, ['a']=x_axis, ['t']=-0.523716, ['s']=1.270555},
			{['c']='turn',['p']=piei, ['a']=y_axis, ['t']=-0.000000, ['s']=0.000000},
			{['c']='turn',['p']=piei, ['a']=z_axis, ['t']=-0.000000, ['s']=0.000000},
		}
	},
	{
		['time'] = 7,
		['commands'] = {
			{['c']='turn',['p']=piernad, ['a']=x_axis, ['t']=0.446354, ['s']=0.550714},
			{['c']='turn',['p']=entrepiernai, ['a']=x_axis, ['t']=-0.924540, ['s']=0.782718},
			{['c']='turn',['p']=Cabeza, ['a']=z_axis, ['t']=-0.300359, ['s']=1.126347},
			{['c']='turn',['p']=cuerpo, ['a']=z_axis, ['t']=-0.148990, ['s']=0.571836},
			{['c']='turn',['p']=piernai, ['a']=x_axis, ['t']=1.566675, ['s']=0.292308},
			{['c']='turn',['p']=entrepiernad, ['a']=x_axis, ['t']=0.279249, ['s']=2.409890},
			{['c']='turn',['p']=pied, ['a']=x_axis, ['t']=-0.596724, ['s']=1.449270},
		}
	},
	{
		['time'] = 15,
		['commands'] = {
			{['c']='turn',['p']=piernad, ['a']=x_axis, ['t']=1.392693, ['s']=4.055739},
			{['c']='turn',['p']=entrepiernai, ['a']=x_axis, ['t']=-0.443997, ['s']=2.059467},
			{['c']='turn',['p']=Cabeza, ['a']=z_axis, ['t']=0.000000, ['s']=1.287253},
			{['c']='turn',['p']=cuerpo, ['a']=z_axis, ['t']=-0.026505, ['s']=0.524938},
			{['c']='turn',['p']=piernai, ['a']=x_axis, ['t']=0.740411, ['s']=3.541129},
			{['c']='turn',['p']=entrepiernad, ['a']=x_axis, ['t']=-0.225693, ['s']=2.164038},
			{['c']='turn',['p']=pied, ['a']=x_axis, ['t']=-0.810899, ['s']=0.917892},
			{['c']='turn',['p']=piei, ['a']=x_axis, ['t']=-0.315475, ['s']=0.892464},
			{['c']='turn',['p']=piei, ['a']=y_axis, ['t']=-0.000000, ['s']=0.000000},
			{['c']='turn',['p']=piei, ['a']=z_axis, ['t']=-0.000000, ['s']=0.000000},
		}
	},
	{
		['time'] = 22,
		['commands'] = {
			{['c']='turn',['p']=piernad, ['a']=x_axis, ['t']=1.391043, ['s']=0.006187},
			{['c']='turn',['p']=entrepiernai, ['a']=x_axis, ['t']=0.524771, ['s']=3.632880},
			{['c']='turn',['p']=Cabeza, ['a']=z_axis, ['t']=0.373018, ['s']=1.398818},
			{['c']='turn',['p']=cuerpo, ['a']=z_axis, ['t']=0.125985, ['s']=0.571836},
			{['c']='turn',['p']=piernai, ['a']=x_axis, ['t']=0.027612, ['s']=2.672998},
			{['c']='turn',['p']=entrepiernad, ['a']=x_axis, ['t']=-1.006002, ['s']=2.926160},
			{['c']='turn',['p']=pied, ['a']=x_axis, ['t']=0.000000, ['s']=3.040870},
			{['c']='turn',['p']=piei, ['a']=x_axis, ['t']=-0.523716, ['s']=0.780906},
			{['c']='turn',['p']=piei, ['a']=y_axis, ['t']=-0.000000, ['s']=0.000000},
			{['c']='turn',['p']=piei, ['a']=z_axis, ['t']=-0.000000, ['s']=0.000000},
		}
	},
	{
		['time'] = 30,
		['commands'] = {
		}
	},
}

Animations['resetAnimation'] = {
	{
		['time'] = 0,
		['commands'] = {
			{['c']='move',['p']=piernad, ['a']=x_axis, ['t']=-2.003636, ['s']=0.000000},
			{['c']='move',['p']=piernad, ['a']=y_axis, ['t']=2.653216, ['s']=0.000000},
			{['c']='move',['p']=piernad, ['a']=z_axis, ['t']=6.152239, ['s']=0.000000},
			{['c']='turn',['p']=piernad, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=piernad, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=piernad, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=flare, ['a']=x_axis, ['t']=3.679390, ['s']=0.000000},
			{['c']='move',['p']=flare, ['a']=y_axis, ['t']=-16.624016, ['s']=0.000000},
			{['c']='move',['p']=flare, ['a']=z_axis, ['t']=13.846897, ['s']=0.000000},
			{['c']='turn',['p']=flare, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=flare, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=flare, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=mira, ['a']=x_axis, ['t']=3.901022, ['s']=0.000000},
			{['c']='move',['p']=mira, ['a']=y_axis, ['t']=-5.792148, ['s']=0.000000},
			{['c']='move',['p']=mira, ['a']=z_axis, ['t']=16.921490, ['s']=0.000000},
			{['c']='turn',['p']=mira, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=mira, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=mira, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=entrepiernai, ['a']=x_axis, ['t']=2.568464, ['s']=0.000000},
			{['c']='move',['p']=entrepiernai, ['a']=y_axis, ['t']=2.885471, ['s']=0.000000},
			{['c']='move',['p']=entrepiernai, ['a']=z_axis, ['t']=12.721424, ['s']=0.000000},
			{['c']='turn',['p']=entrepiernai, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=entrepiernai, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=entrepiernai, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=Cabeza, ['a']=x_axis, ['t']=0.180301, ['s']=0.000000},
			{['c']='move',['p']=Cabeza, ['a']=y_axis, ['t']=0.893394, ['s']=0.000000},
			{['c']='move',['p']=Cabeza, ['a']=z_axis, ['t']=22.615835, ['s']=0.000000},
			{['c']='turn',['p']=Cabeza, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=Cabeza, ['a']=y_axis, ['t']=-0.000000, ['s']=0.000000},
			{['c']='turn',['p']=Cabeza, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=cinturon, ['a']=x_axis, ['t']=-0.162837, ['s']=0.000000},
			{['c']='move',['p']=cinturon, ['a']=y_axis, ['t']=5.404164, ['s']=0.000000},
			{['c']='move',['p']=cinturon, ['a']=z_axis, ['t']=12.302764, ['s']=0.000000},
			{['c']='turn',['p']=cinturon, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=cinturon, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=cinturon, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=ojos, ['a']=x_axis, ['t']=-0.422123, ['s']=0.000000},
			{['c']='move',['p']=ojos, ['a']=y_axis, ['t']=-1.387787, ['s']=0.000000},
			{['c']='move',['p']=ojos, ['a']=z_axis, ['t']=24.069721, ['s']=0.000000},
			{['c']='turn',['p']=ojos, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=ojos, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=ojos, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=cuerpo, ['a']=x_axis, ['t']=-0.079993, ['s']=0.000000},
			{['c']='move',['p']=cuerpo, ['a']=y_axis, ['t']=2.526546, ['s']=0.000000},
			{['c']='move',['p']=cuerpo, ['a']=z_axis, ['t']=15.091851, ['s']=0.000000},
			{['c']='turn',['p']=cuerpo, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=cuerpo, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=cuerpo, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=piernai, ['a']=x_axis, ['t']=1.926878, ['s']=0.000000},
			{['c']='move',['p']=piernai, ['a']=y_axis, ['t']=2.501865, ['s']=0.000000},
			{['c']='move',['p']=piernai, ['a']=z_axis, ['t']=6.185470, ['s']=0.000000},
			{['c']='turn',['p']=piernai, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=piernai, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=piernai, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=entrepiernad, ['a']=x_axis, ['t']=-2.656764, ['s']=0.000000},
			{['c']='move',['p']=entrepiernad, ['a']=y_axis, ['t']=3.066901, ['s']=0.000000},
			{['c']='move',['p']=entrepiernad, ['a']=z_axis, ['t']=12.906279, ['s']=0.000000},
			{['c']='turn',['p']=entrepiernad, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=entrepiernad, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=entrepiernad, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=brazoi, ['a']=x_axis, ['t']=5.222471, ['s']=0.000000},
			{['c']='move',['p']=brazoi, ['a']=y_axis, ['t']=7.172369, ['s']=0.000000},
			{['c']='move',['p']=brazoi, ['a']=z_axis, ['t']=18.295748, ['s']=0.000000},
			{['c']='turn',['p']=brazoi, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=brazoi, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=brazoi, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=antebrazoi, ['a']=x_axis, ['t']=3.341789, ['s']=0.000000},
			{['c']='move',['p']=antebrazoi, ['a']=y_axis, ['t']=3.627209, ['s']=0.000000},
			{['c']='move',['p']=antebrazoi, ['a']=z_axis, ['t']=20.679716, ['s']=0.000000},
			{['c']='turn',['p']=antebrazoi, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=antebrazoi, ['a']=y_axis, ['t']=-0.000000, ['s']=0.000000},
			{['c']='turn',['p']=antebrazoi, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=brazod, ['a']=x_axis, ['t']=-4.588409, ['s']=0.000000},
			{['c']='move',['p']=brazod, ['a']=y_axis, ['t']=2.581352, ['s']=0.000000},
			{['c']='move',['p']=brazod, ['a']=z_axis, ['t']=16.159475, ['s']=0.000000},
			{['c']='turn',['p']=brazod, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=brazod, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=brazod, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=hierro, ['a']=x_axis, ['t']=3.749246, ['s']=0.000000},
			{['c']='move',['p']=hierro, ['a']=y_axis, ['t']=-4.322882, ['s']=0.000000},
			{['c']='move',['p']=hierro, ['a']=z_axis, ['t']=14.349396, ['s']=0.000000},
			{['c']='turn',['p']=hierro, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=hierro, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=hierro, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=pied, ['a']=x_axis, ['t']=-1.941752, ['s']=0.000000},
			{['c']='move',['p']=pied, ['a']=y_axis, ['t']=3.250207, ['s']=0.000000},
			{['c']='move',['p']=pied, ['a']=z_axis, ['t']=1.250289, ['s']=0.000000},
			{['c']='turn',['p']=pied, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=pied, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=pied, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=visor, ['a']=x_axis, ['t']=0.624877, ['s']=0.000000},
			{['c']='move',['p']=visor, ['a']=y_axis, ['t']=-0.908259, ['s']=0.000000},
			{['c']='move',['p']=visor, ['a']=z_axis, ['t']=24.121603, ['s']=0.000000},
			{['c']='turn',['p']=visor, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=visor, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=visor, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=antebrazod, ['a']=x_axis, ['t']=-2.710367, ['s']=0.000000},
			{['c']='move',['p']=antebrazod, ['a']=y_axis, ['t']=1.250547, ['s']=0.000000},
			{['c']='move',['p']=antebrazod, ['a']=z_axis, ['t']=20.385168, ['s']=0.000000},
			{['c']='turn',['p']=antebrazod, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=antebrazod, ['a']=y_axis, ['t']=-0.000000, ['s']=0.000000},
			{['c']='turn',['p']=antebrazod, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=dientes, ['a']=x_axis, ['t']=0.473283, ['s']=0.000000},
			{['c']='move',['p']=dientes, ['a']=y_axis, ['t']=-1.588124, ['s']=0.000000},
			{['c']='move',['p']=dientes, ['a']=z_axis, ['t']=22.956181, ['s']=0.000000},
			{['c']='turn',['p']=dientes, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=dientes, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=dientes, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=piei, ['a']=x_axis, ['t']=1.987443, ['s']=0.000000},
			{['c']='move',['p']=piei, ['a']=y_axis, ['t']=3.274037, ['s']=0.000000},
			{['c']='move',['p']=piei, ['a']=z_axis, ['t']=1.305858, ['s']=0.000000},
			{['c']='turn',['p']=piei, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=piei, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=piei, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=mochila, ['a']=x_axis, ['t']=0.205570, ['s']=0.000000},
			{['c']='move',['p']=mochila, ['a']=y_axis, ['t']=1.305298, ['s']=0.000000},
			{['c']='move',['p']=mochila, ['a']=z_axis, ['t']=22.872080, ['s']=0.000000},
			{['c']='turn',['p']=mochila, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=mochila, ['a']=y_axis, ['t']=-0.000000, ['s']=0.000000},
			{['c']='turn',['p']=mochila, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=codera, ['a']=x_axis, ['t']=-4.888641, ['s']=0.000000},
			{['c']='move',['p']=codera, ['a']=y_axis, ['t']=2.925162, ['s']=0.000000},
			{['c']='move',['p']=codera, ['a']=z_axis, ['t']=16.019499, ['s']=0.000000},
			{['c']='turn',['p']=codera, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=codera, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=codera, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=root, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=root, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=root, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=root, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=root, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=root, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=arma, ['a']=x_axis, ['t']=3.422498, ['s']=0.000000},
			{['c']='move',['p']=arma, ['a']=y_axis, ['t']=3.137511, ['s']=0.000000},
			{['c']='move',['p']=arma, ['a']=z_axis, ['t']=15.877952, ['s']=0.000000},
			{['c']='turn',['p']=arma, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=arma, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=arma, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=bola, ['a']=x_axis, ['t']=3.703963, ['s']=0.000000},
			{['c']='move',['p']=bola, ['a']=y_axis, ['t']=-9.444649, ['s']=0.000000},
			{['c']='move',['p']=bola, ['a']=z_axis, ['t']=14.138057, ['s']=0.000000},
			{['c']='turn',['p']=bola, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=bola, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=bola, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=light, ['a']=x_axis, ['t']=2.253601, ['s']=0.000000},
			{['c']='move',['p']=light, ['a']=y_axis, ['t']=-0.373005, ['s']=0.000000},
			{['c']='move',['p']=light, ['a']=z_axis, ['t']=24.306992, ['s']=0.000000},
			{['c']='turn',['p']=light, ['a']=x_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=light, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=light, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
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
            

