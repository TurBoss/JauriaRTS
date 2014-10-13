local unitName = "mortero"

local unitDef = {
	name				= "mortero",
	Description			= "mortero",
	objectName			= "mortero.dae",
	script			= "mortero.lua",
	buildPic			= "mortero.png",

	--cost

	buildCostMetal = 24000,
	buildCostEnergy = 0,
	buildTime = 150,
	
	--Health

	maxDamage = 26000,
	idleAutoHeal = 0,
	idleTime     = 0,

	--Movement
	
	FootprintX = 5,
	FootprintZ = 5,
	
	maxSlope = 20,

	sightDistance = 900,

	CanAttack = true,
	CanGuard = true,
	CanMove = false,
	CanPatrol = true,
	CanStop = true,
	LeaveTracks = false,

	MetalMake = 0,
	
Corpse = "DEAD",
	
	weapons = {
	[1]={name  = "weaponmortero",
		onlyTargetCategory = [[LAND AIR]],
		},
	},

	Category = [[LAND]],
	
	featureDefs = {
		DEAD = {
			description = [[Wreckage - Tower]],
			blocking = true,
			damage = 3250,
			energy = 0,
			--featureDead = [[HEAP]],
			footprintX = 5,
			footprintZ = 5,
			metal = 600,
			object = "mortero.dae",
			reclaimable = true,
			reclaimTime = 600,
		},
	},
}

return lowerkeys({ [unitName] = unitDef })
