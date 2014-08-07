
local weaponName = "shieldhekor"

local weaponDef = {
	
	name					= "Shield-Hekor",
	weaponType				= "Shield",
	
	damage = {
		default = 10,
	},
	texture1				= "shield4",
	
	exteriorShield			= true,
	shieldAlpha				= 0.5,
	shieldBadColor			= [[1 0.1 0.1]],
	shieldGoodColor			= [[0.1 0.1 1]],
	InterceptType			= 511,
	shieldInterceptType		= 511,
	shieldPower				= 1900,
	shieldPowerRegen		= 90,
	shieldPowerRegenEnergy	= 0,
	shieldRadius			= 100,
	shieldRepulser			= false,
	--shieldforce				= 10000,
	--shieldmaxspeed			= 10000,
	shieldStartingPower		= 1600,
	smartShield				= true,
	visibleShield			= true,
	visibleShieldHitFrames	= 4,
	visibleShieldRepulse	= true,
	
}
return lowerkeys({[weaponName] = weaponDef})
