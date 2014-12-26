local unitName = "torreta"

local unitDef = {
	name				= "Torreta Jauria",
	Description			= "Torre defensora",
	objectName			= "torreta.dae",
	script				= "torreta.lua",
	buildPic			= "torreta.png",
	iconType = "towers",

	--cost

	buildCostMetal = 24000,
	buildCostEnergy = 0,
	buildTime = 150,
	
	reclaimable				=false,
	
	--Health

	maxDamage = 26000,
	idleAutoHeal = 0,
	idleTime     = 0,

	--Movement
	
	FootprintX = 5,
	FootprintZ = 5,
	
	maxSlope = 20,
	sightDistance = 500,

	CanAttack = true,
	CanGuard = true,
	CanMove = false,
	CanPatrol = true,
	CanStop = true,
	LeaveTracks = false,
	MetalMake = 0,
	YardMap ="ooo ooo ooo",
	
	Corpse = "DEAD",
	
	weapons = {
	[1]={name  = "weapontorreta",
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
			object = "torreta.dae",
			reclaimable = true,
			reclaimTime = 600,
		},
	},
}

return lowerkeys({ [unitName] = unitDef })
