
local weaponName = "shieldhipso"

local weaponDef = {

	name					= "shieldhipso",
	weaponType				= "Shield",

	damage = {
		default = 10,
	},
	texture1				= "shield4",

	shield = {
		exterior			= true,
		alpha				= 0.2,
		badColor			= [[1 0.1 0.1]],
		goodColor			= [[0 0.2 1]],
		interceptType		= 511,
		power				= 1650,
		powerRegen		= 38,
		powerRegenEnergy	= 0,
		radius			= 130,
		repulser			= false,
		startingPower		= 1650,
		smart			= true,
		visible			= true,
		visibleHitFrames	= 4,
		visibleRepulse	= true,
	}

}
return lowerkeys({[weaponName] = weaponDef})
