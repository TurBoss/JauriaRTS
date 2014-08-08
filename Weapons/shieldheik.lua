
local weaponName = "shieldheik"

local weaponDef = {
	
	name					= "Shield-Heik",
	weaponType				= "Shield",
	
	damage = {
		default = 10,
	},
	texture1				= "shield4",
	
	exteriorShield			= true,
	shieldAlpha				= 0.8,
	shieldBadColor			= [[1 0.1 0.1]],
	shieldGoodColor			= [[0.1 0.1 1]],
	InterceptType			= 511,
	shieldInterceptType		= 511,
	shieldPower				= 680,
	shieldPowerRegen		= 60,
	shieldPowerRegenEnergy	= 0,
	shieldRadius			= 58,
	shieldRepulser			= false,
	--shieldforce				= 10000,
	--shieldmaxspeed			= 10000,
	shieldStartingPower		= 1650,
	smartShield				= true,
	visibleShield			= true,
	visibleShieldHitFrames	= 4,
	visibleShieldRepulse	= true,
	
}
return lowerkeys({[weaponName] = weaponDef})
