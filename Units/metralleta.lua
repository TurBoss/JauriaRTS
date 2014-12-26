local unitName = "metralleta"

local unitDef = {
	name				= "metralleta",
	Description			= "metralleta",
	objectName			= "metralleta.dae",
	script			= "metralleta.lua",
	buildPic			= "metralleta.png",
	iconType = "towers",

	--cost

	buildCostMetal = 24000,
	buildCostEnergy = 0,
	buildTime = 150,
	
	reclaimable				=false,
	
	--Health

	maxDamage = 13000,
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
	[1]={name  = "weaponmetralleta",
		onlyTargetCategory = [[LAND AIR]],
		},
	},
	sfxtypes = {
		explosiongenerators = {
			"custom:smoke1",
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
			object = "metralleta.dae",
			reclaimable = true,
			reclaimTime = 600,
		},
	},
}

return lowerkeys({ [unitName] = unitDef })
