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

	maxDamage = 5000,
	idleAutoHeal = 35,

	--Movement
	
	FootprintX = 4,
	FootprintZ = 4,
	
	maxSlope = 20,

	sightDistance = 700,-- distancia de vision

	CanAttack = true,
	CanGuard = true,
	CanMove = false,
	CanPatrol = true,
	CanStop = true,
	LeaveTracks = false,

	MetalMake = 5,

	weapons = {
	[1]={name  = "weapontorre",
		onlyTargetCategory = [[LAND]],
		},
	},

	Category = [[LAND]],

}

return lowerkeys({ [unitName] = unitDef })
