local unitName = "torreta"

local unitDef = {
	name				= "Torreta Jauria",
	Description			= "Torre defensora",
	objectName			= "torreta.dae",
	script			= "torreta.lua",
	buildPic			= "torreta.png",

	--cost

	buildCostMetal = 500,
	buildCostEnergy = 0,
	buildTime = 5,
	
	--Health

	maxDamage = 18000,
	idleAutoHeal = 48,
	idleTime     = 3,

	--Movement
	
	FootprintX = 7,
	FootprintZ = 7,
	
	maxSlope = 20,

	sightDistance = 500,

	CanAttack = true,
	CanGuard = true,
	CanMove = false,
	CanPatrol = true,
	CanStop = true,
	LeaveTracks = false,

	MetalMake = 0,

	weapons = {
	[1]={name  = "weapontorreta",
		onlyTargetCategory = [[LAND AIR]],
		},
	},

	Category = [[LAND]],

}

return lowerkeys({ [unitName] = unitDef })
