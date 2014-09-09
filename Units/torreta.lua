local unitName = "torreta"

local unitDef = {
	name				= "Torreta Jauria",
	Description			= "Torre defensora",
	objectName			= "torreta.dae",
	script			= "torreta.lua",
	buildPic			= "torreta.png",

	--cost

	buildCostMetal = 20000,
	buildCostEnergy = 0,
	buildTime = 150,
	
	--Health

	maxDamage = 20000,
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

	weapons = {
	[1]={name  = "weapontorreta",
		onlyTargetCategory = [[LAND AIR]],
		},
	},

	Category = [[LAND]],

}

return lowerkeys({ [unitName] = unitDef })
