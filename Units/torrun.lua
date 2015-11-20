local unitName = "torrun"

local unitDef = {
	name				= "Torrun de cartun",
	Description			= "Torrun loco",
	objectName			= "torrun.dae",
	script			= "torrun.lua",
	buildPic			= "torrun.png",
	iconType = "towers",

	--cost

	buildCostMetal = 25000,
	buildCostEnergy = 0,
	buildTime = 120,
	
	reclaimable				=false,
	
	--Health

	maxDamage = 36000,
	idleAutoHeal = 0,

	--Movement
	
	FootprintX = 3.5,
	FootprintZ = 3.5,
	
	maxSlope = 20,

	sightDistance = 500,

	CanAttack = true,
	CanGuard = true,
	CanMove = false,
	CanPatrol = true,
	CanStop = true,
	LeaveTracks = false,

	weapons = {
	[1]={name  = "misil",
		onlyTargetCategory = [[LAND AIR]],
		},
	},

	Category = [[LAND]],

}

return lowerkeys({ [unitName] = unitDef })
