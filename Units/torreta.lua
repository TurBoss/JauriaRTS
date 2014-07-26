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

	maxDamage = 7300,
	idleAutoHeal = 25,

	--Movement
	
	FootprintX = 4,
	FootprintZ = 4,
	
	maxSlope = 20,

	sightDistance = 500,

	CanAttack = true,
	CanGuard = true,
	CanMove = false,
	CanPatrol = true,
	CanStop = true,
	LeaveTracks = false,

	MetalMake = 1,

	weapons = {
	[1]={name  = "weapontorre",
		onlyTargetCategory = [[LAND]],
		},
	},

	Category = [[LAND]],

}

return lowerkeys({ [unitName] = unitDef })
