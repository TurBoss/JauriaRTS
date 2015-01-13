
--------------------------------------------------------------------------------
-- pieces
--------------------------------------------------------------------------------

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
local flare3 = piece('flare3');
local flare3 = piece('flare3');
local municiones = piece('municiones');
local piernad = piece('piernad');
local piernai = piece('piernai');
local pipa = piece('pipa');
local root = piece('root');
local tobillod = piece('tobillod');
local tobilloi = piece('tobilloi');

--------------------------------------------------------------------------------
-- constants
--------------------------------------------------------------------------------

local SIG_WALK = 1
local SIG_WALK1 = 2
local SIG_AIM = 4
local SIG_AIM1 = 8
local SIG_RESTORE = 16

local RESTORE_DELAY_SHOOT = 4000

--------------------------------------------------------------------------------
-- vars
--------------------------------------------------------------------------------

local isMoving, isShooting = false, false

--------------------------------------------------------------------------------
-- tables
--------------------------------------------------------------------------------

local Animations = {};

Animations['resetAnimation'] = {
	{
		['time'] = 0,
		['commands'] = {
			{['c']='move',['p']=craneo, ['a']=x_axis, ['t']=0.378767, ['s']=6.000000},
			{['c']='move',['p']=craneo, ['a']=y_axis, ['t']=-0.852009, ['s']=6.000000},
			{['c']='move',['p']=craneo, ['a']=z_axis, ['t']=94.113426, ['s']=6.000000},
			{['c']='turn',['p']=craneo, ['a']=x_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=craneo, ['a']=y_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=craneo, ['a']=z_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='move',['p']=culo, ['a']=x_axis, ['t']=0.204537, ['s']=6.000000},
			{['c']='move',['p']=culo, ['a']=y_axis, ['t']=2.848217, ['s']=6.000000},
			{['c']='move',['p']=culo, ['a']=z_axis, ['t']=62.305248, ['s']=6.000000},
			{['c']='turn',['p']=culo, ['a']=x_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=culo, ['a']=y_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=culo, ['a']=z_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='move',['p']=caderad, ['a']=x_axis, ['t']=-2.701097, ['s']=6.000000},
			{['c']='move',['p']=caderad, ['a']=y_axis, ['t']=4.306555, ['s']=6.000000},
			{['c']='move',['p']=caderad, ['a']=z_axis, ['t']=60.013725, ['s']=6.000000},
			{['c']='turn',['p']=caderad, ['a']=x_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=caderad, ['a']=y_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=caderad, ['a']=z_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='move',['p']=flare1, ['a']=x_axis, ['t']=-20.135452, ['s']=6.000000},
			{['c']='move',['p']=flare1, ['a']=y_axis, ['t']=-32.395126, ['s']=6.000000},
			{['c']='move',['p']=flare1, ['a']=z_axis, ['t']=71.698723, ['s']=6.000000},
			{['c']='turn',['p']=flare1, ['a']=x_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=flare1, ['a']=y_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=flare1, ['a']=z_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='move',['p']=piernai, ['a']=x_axis, ['t']=16.307835, ['s']=6.000000},
			{['c']='move',['p']=piernai, ['a']=y_axis, ['t']=2.955535, ['s']=6.000000},
			{['c']='move',['p']=piernai, ['a']=z_axis, ['t']=24.987669, ['s']=6.000000},
			{['c']='turn',['p']=piernai, ['a']=x_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=piernai, ['a']=y_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=piernai, ['a']=z_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='move',['p']=tobillod, ['a']=x_axis, ['t']=-17.533728, ['s']=6.000000},
			{['c']='move',['p']=tobillod, ['a']=y_axis, ['t']=3.140447, ['s']=6.000000},
			{['c']='move',['p']=tobillod, ['a']=z_axis, ['t']=5.941381, ['s']=6.000000},
			{['c']='turn',['p']=tobillod, ['a']=x_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=tobillod, ['a']=y_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=tobillod, ['a']=z_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='move',['p']=codo, ['a']=x_axis, ['t']=21.380478, ['s']=6.000000},
			{['c']='move',['p']=codo, ['a']=y_axis, ['t']=2.573098, ['s']=6.000000},
			{['c']='move',['p']=codo, ['a']=z_axis, ['t']=72.037674, ['s']=6.000000},
			{['c']='turn',['p']=codo, ['a']=x_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=codo, ['a']=y_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=codo, ['a']=z_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='move',['p']=flare2, ['a']=x_axis, ['t']=19.968786, ['s']=6.000000},
			{['c']='move',['p']=flare2, ['a']=y_axis, ['t']=-46.544083, ['s']=6.000000},
			{['c']='move',['p']=flare2, ['a']=z_axis, ['t']=75.018204, ['s']=6.000000},
			{['c']='turn',['p']=flare2, ['a']=x_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=flare2, ['a']=y_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=flare2, ['a']=z_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='move',['p']=pipa, ['a']=x_axis, ['t']=19.399315, ['s']=6.000000},
			{['c']='move',['p']=pipa, ['a']=y_axis, ['t']=-24.885750, ['s']=6.000000},
			{['c']='move',['p']=pipa, ['a']=z_axis, ['t']=75.721512, ['s']=6.000000},
			{['c']='turn',['p']=pipa, ['a']=x_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=pipa, ['a']=y_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=pipa, ['a']=z_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='move',['p']=codod, ['a']=x_axis, ['t']=-20.674490, ['s']=6.000000},
			{['c']='move',['p']=codod, ['a']=y_axis, ['t']=1.731280, ['s']=6.000000},
			{['c']='move',['p']=codod, ['a']=z_axis, ['t']=71.902641, ['s']=6.000000},
			{['c']='turn',['p']=codod, ['a']=x_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=codod, ['a']=y_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=codod, ['a']=z_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='move',['p']=piernad, ['a']=x_axis, ['t']=-15.599712, ['s']=6.000000},
			{['c']='move',['p']=piernad, ['a']=y_axis, ['t']=2.400909, ['s']=6.000000},
			{['c']='move',['p']=piernad, ['a']=z_axis, ['t']=25.167513, ['s']=6.000000},
			{['c']='turn',['p']=piernad, ['a']=x_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=piernad, ['a']=y_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=piernad, ['a']=z_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='move',['p']=antebrazod, ['a']=x_axis, ['t']=-18.750965, ['s']=6.000000},
			{['c']='move',['p']=antebrazod, ['a']=y_axis, ['t']=5.682662, ['s']=6.000000},
			{['c']='move',['p']=antebrazod, ['a']=z_axis, ['t']=91.947182, ['s']=6.000000},
			{['c']='turn',['p']=antebrazod, ['a']=x_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=antebrazod, ['a']=y_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=antebrazod, ['a']=z_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='move',['p']=tobilloi, ['a']=x_axis, ['t']=19.028309, ['s']=6.000000},
			{['c']='move',['p']=tobilloi, ['a']=y_axis, ['t']=3.355627, ['s']=6.000000},
			{['c']='move',['p']=tobilloi, ['a']=z_axis, ['t']=5.389016, ['s']=6.000000},
			{['c']='turn',['p']=tobilloi, ['a']=x_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=tobilloi, ['a']=y_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=tobilloi, ['a']=z_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='move',['p']=antebrazoi, ['a']=x_axis, ['t']=19.634659, ['s']=6.000000},
			{['c']='move',['p']=antebrazoi, ['a']=y_axis, ['t']=5.682662, ['s']=6.000000},
			{['c']='move',['p']=antebrazoi, ['a']=z_axis, ['t']=91.947182, ['s']=6.000000},
			{['c']='turn',['p']=antebrazoi, ['a']=x_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=antebrazoi, ['a']=y_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=antebrazoi, ['a']=z_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='move',['p']=caderai, ['a']=x_axis, ['t']=6.484725, ['s']=6.000000},
			{['c']='move',['p']=caderai, ['a']=y_axis, ['t']=4.110216, ['s']=6.000000},
			{['c']='move',['p']=caderai, ['a']=z_axis, ['t']=59.989300, ['s']=6.000000},
			{['c']='turn',['p']=caderai, ['a']=x_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=caderai, ['a']=y_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=caderai, ['a']=z_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='move',['p']=armadura, ['a']=x_axis, ['t']=0.069121, ['s']=6.000000},
			{['c']='move',['p']=armadura, ['a']=y_axis, ['t']=-0.004707, ['s']=6.000000},
			{['c']='move',['p']=armadura, ['a']=z_axis, ['t']=98.784737, ['s']=6.000000},
			{['c']='turn',['p']=armadura, ['a']=x_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=armadura, ['a']=y_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=armadura, ['a']=z_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='move',['p']=municiones, ['a']=x_axis, ['t']=-17.917780, ['s']=6.000000},
			{['c']='move',['p']=municiones, ['a']=y_axis, ['t']=2.851979, ['s']=6.000000},
			{['c']='move',['p']=municiones, ['a']=z_axis, ['t']=56.601585, ['s']=6.000000},
			{['c']='turn',['p']=municiones, ['a']=x_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=municiones, ['a']=y_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=municiones, ['a']=z_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='move',['p']=root, ['a']=x_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='move',['p']=root, ['a']=y_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='move',['p']=root, ['a']=z_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=root, ['a']=x_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=root, ['a']=y_axis, ['t']=0.000000, ['s']=6.000000},
			{['c']='turn',['p']=root, ['a']=z_axis, ['t']=0.000000, ['s']=6.000000},
		}
	},
}

Animations['moveAnimation'] = {
	{
		['time'] = 0,
		['commands'] = {
			{['c']='move',['p']=piernad, ['a']=x_axis, ['t']=-15.599712, ['s']=0.000000},
			{['c']='move',['p']=piernad, ['a']=y_axis, ['t']=2.400909, ['s']=0.000000},
			{['c']='move',['p']=piernad, ['a']=z_axis, ['t']=25.167513, ['s']=0.000000},
			{['c']='turn',['p']=piernad, ['a']=x_axis, ['t']=0.802593, ['s']=0.802593},
			{['c']='turn',['p']=piernad, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=piernad, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=piernai, ['a']=x_axis, ['t']=16.307835, ['s']=0.000000},
			{['c']='move',['p']=piernai, ['a']=y_axis, ['t']=2.955535, ['s']=0.000000},
			{['c']='move',['p']=piernai, ['a']=z_axis, ['t']=24.987669, ['s']=0.000000},
			{['c']='turn',['p']=piernai, ['a']=x_axis, ['t']=0.072266, ['s']=0.520977},
			{['c']='turn',['p']=piernai, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=piernai, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=caderad, ['a']=x_axis, ['t']=-2.701097, ['s']=0.000000},
			{['c']='move',['p']=caderad, ['a']=y_axis, ['t']=4.306555, ['s']=0.000000},
			{['c']='move',['p']=caderad, ['a']=z_axis, ['t']=60.013725, ['s']=0.000000},
			{['c']='turn',['p']=caderad, ['a']=x_axis, ['t']=-0.637577, ['s']=1.262157},
			{['c']='turn',['p']=caderad, ['a']=y_axis, ['t']=-0.000000, ['s']=0.000000},
			{['c']='turn',['p']=caderad, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=tobillod, ['a']=x_axis, ['t']=-17.533728, ['s']=0.000000},
			{['c']='move',['p']=tobillod, ['a']=y_axis, ['t']=3.140447, ['s']=0.000000},
			{['c']='move',['p']=tobillod, ['a']=z_axis, ['t']=5.941381, ['s']=0.000000},
			{['c']='turn',['p']=tobillod, ['a']=x_axis, ['t']=-0.144890, ['s']=0.144890},
			{['c']='turn',['p']=tobillod, ['a']=y_axis, ['t']=-0.000000, ['s']=0.000000},
			{['c']='turn',['p']=tobillod, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=tobilloi, ['a']=x_axis, ['t']=19.028309, ['s']=0.000000},
			{['c']='move',['p']=tobilloi, ['a']=y_axis, ['t']=3.355627, ['s']=0.000000},
			{['c']='move',['p']=tobilloi, ['a']=z_axis, ['t']=5.389016, ['s']=0.000000},
			{['c']='turn',['p']=tobilloi, ['a']=x_axis, ['t']=-0.095820, ['s']=0.220277},
			{['c']='turn',['p']=tobilloi, ['a']=y_axis, ['t']=-0.000000, ['s']=0.000000},
			{['c']='turn',['p']=tobilloi, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=caderai, ['a']=x_axis, ['t']=6.484725, ['s']=0.000000},
			{['c']='move',['p']=caderai, ['a']=y_axis, ['t']=4.110216, ['s']=0.000000},
			{['c']='move',['p']=caderai, ['a']=z_axis, ['t']=59.989300, ['s']=0.000000},
			{['c']='turn',['p']=caderai, ['a']=x_axis, ['t']=0.615439, ['s']=1.201158},
			{['c']='turn',['p']=caderai, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=caderai, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
		}
	},
	{
		['time'] = 30,
		['commands'] = {
			{['c']='turn',['p']=piernad, ['a']=x_axis, ['t']=0.000000, ['s']=0.802593},
			{['c']='turn',['p']=piernad, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=piernad, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=piernai, ['a']=x_axis, ['t']=0.593243, ['s']=0.520977},
			{['c']='turn',['p']=piernai, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=piernai, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=caderad, ['a']=x_axis, ['t']=0.624580, ['s']=1.262157},
			{['c']='turn',['p']=caderad, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=caderad, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=tobillod, ['a']=x_axis, ['t']=0.000000, ['s']=0.144890},
			{['c']='turn',['p']=tobillod, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=tobillod, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=tobilloi, ['a']=x_axis, ['t']=-0.308573, ['s']=0.212753},
			{['c']='turn',['p']=tobilloi, ['a']=y_axis, ['t']=-0.000000, ['s']=0.000000},
			{['c']='turn',['p']=tobilloi, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=caderai, ['a']=x_axis, ['t']=-0.585719, ['s']=1.201158},
			{['c']='turn',['p']=caderai, ['a']=y_axis, ['t']=-0.000000, ['s']=0.000000},
			{['c']='turn',['p']=caderai, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
		}
	},
	{
		['time'] = 60,
		['commands'] = {
		}
	},
}

Animations['armsAnimation'] = {
	{
		['time'] = 0,
		['commands'] = {
			{['c']='move',['p']=antebrazoi, ['a']=x_axis, ['t']=19.634659, ['s']=0.000000},
			{['c']='move',['p']=antebrazoi, ['a']=y_axis, ['t']=5.682662, ['s']=0.000000},
			{['c']='move',['p']=antebrazoi, ['a']=z_axis, ['t']=91.947182, ['s']=0.000000},
			{['c']='turn',['p']=antebrazoi, ['a']=x_axis, ['t']=-0.294465, ['s']=0.777474},
			{['c']='turn',['p']=antebrazoi, ['a']=y_axis, ['t']=-0.000000, ['s']=0.000000},
			{['c']='turn',['p']=antebrazoi, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='move',['p']=antebrazod, ['a']=x_axis, ['t']=-18.750965, ['s']=0.000000},
			{['c']='move',['p']=antebrazod, ['a']=y_axis, ['t']=5.682662, ['s']=0.000000},
			{['c']='move',['p']=antebrazod, ['a']=z_axis, ['t']=91.947182, ['s']=0.000000},
			{['c']='turn',['p']=antebrazod, ['a']=x_axis, ['t']=0.229306, ['s']=0.544090},
			{['c']='turn',['p']=antebrazod, ['a']=y_axis, ['t']=-0.000000, ['s']=0.000000},
			{['c']='turn',['p']=antebrazod, ['a']=z_axis, ['t']=-0.000000, ['s']=0.000000},
		}
	},
	{
		['time'] = 30,
		['commands'] = {
			{['c']='turn',['p']=antebrazoi, ['a']=x_axis, ['t']=0.483009, ['s']=0.777474},
			{['c']='turn',['p']=antebrazoi, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=antebrazoi, ['a']=z_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=antebrazod, ['a']=x_axis, ['t']=-0.314784, ['s']=0.544090},
			{['c']='turn',['p']=antebrazod, ['a']=y_axis, ['t']=0.000000, ['s']=0.000000},
			{['c']='turn',['p']=antebrazod, ['a']=z_axis, ['t']=-0.000000, ['s']=0.000000},
		}
	},
	{
		['time'] = 60,
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

local function MoveArms()
	Signal(SIG_WALK1)
	SetSignalMask(SIG_WALK1)
	while true do
		if not isShooting then
			PlayAnimation('armsAnimation')
		end
		Sleep(0)
	end
end

local function RestorePose()
	Signal(SIG_WALK)
	Signal(SIG_WALK1)
	SetSignalMask(SIG_WALK)
	SetSignalMask(SIG_WALK1)
	PlayAnimation('resetAnimation')
end

local function RestoreShoot()
	Signal(SIG_RESTORE)
	SetSignalMask(SIG_RESTORE)
	Sleep(RESTORE_DELAY_SHOOT)
	isShooting = false
	
	PlayAnimation('resetAnimation')
	
	Turn(culo, z_axis, 0, math.rad(125))
end

function script.StartMoving(heading)
	
	Turn(culo, z_axis, heading, math.rad(125))
	
	StartThread (Walk)
	StartThread (MoveArms)
end

function script.StopMoving()
	isMoving = false
	StartThread(RestorePose)
end

---AIMING & SHOOTING---
function script.AimFromWeapon1()
	return armadura
end

function script.QueryWeapon1() 
	return flare1
end

function script.AimFromWeapon2()
	return armadura
end

function script.QueryWeapon2() 
	return flare2
end

function script.AimFromWeapon3()
	return armadura
end

function script.QueryWeapon3() 
	return flare3
end

function script.AimFromWeapon4()
	return armadura
end

function script.QueryWeapon4() 
	return flare4
end
--

function script.AimWeapon1( heading, pitch )
	--make sure the aiming animation is only run once
	Signal(SIG_AIM)
	SetSignalMask(SIG_AIM)
	isShooting = true
	Turn(armadura, z_axis, heading, math.rad(350))
	
	--wait until the weapon is pointed in the right direction
	WaitForTurn (armadura, z_axis)
	StartThread(RestoreShoot)
	return true
end

function script.AimWeapon2( heading, pitch )
	--make sure the aiming animation is only run once
	Signal(SIG_AIM1)
	SetSignalMask(SIG_AIM1)
	isShooting = true
	Turn(armadura, z_axis, heading, math.rad(350))
	
	--wait until the weapon is pointed in the right direction
	WaitForTurn (armadura, z_axis)
	StartThread(RestoreShoot)
	return true
end
function script.AimWeapon3( heading, pitch )
	--make sure the aiming animation is only run once
	Signal(SIG_AIM)
	SetSignalMask(SIG_AIM)
	isShooting = true
	Turn(armadura, z_axis, heading, math.rad(350))
	
	--wait until the weapon is pointed in the right direction
	WaitForTurn (armadura, z_axis)
	StartThread(RestoreShoot)
	return true
end

function script.AimWeapon4( heading, pitch )
	--make sure the aiming animation is only run once
	Signal(SIG_AIM1)
	SetSignalMask(SIG_AIM1)
	isShooting = true
	Turn(armadura, z_axis, heading, math.rad(350))
	
	--wait until the weapon is pointed in the right direction
	WaitForTurn (armadura, z_axis)
	StartThread(RestoreShoot)
	return true
end

--called after the weapon has fired
function script.FireWeapon1()
end

function script.FireWeapon2()
end
