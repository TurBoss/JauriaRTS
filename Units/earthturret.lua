local unitName = "earthturret"

local unitDef = {
	name				= "EarthTurret",
	Description			= "The Earth Turret is a natural defense obsrtuction that can help you defend your base. However, it may also attack you!",
	objectName			= "earthturret.dae",
	script			= "earthturret.lua",
	buildPic			= "earthturret1.png",
	iconType = "towers",

	--cost

	buildCostMetal = 25000,
	buildCostEnergy = 0,
	buildTime = 150,
	
	reclaimable				=false,
	
	--Health

	maxDamage = 36000,
	idleAutoHeal = 0,
	idleTime     = 0,

	--Movement
	
	FootprintX = 5,
	FootprintZ = 5,
	collisionvolumeoffsets = "0 0 0",
	collisionvolumescales = "100 220 100",
	collisionvolumetype = "cylY",
	
	maxSlope = 20,

	sightDistance = 400,

	CanAttack = true,
	CanGuard = true,
	CanMove = false,
	CanPatrol = true,
	CanStop = true,
	LeaveTracks = false,

	MetalMake = 0,

	weapons = {
		[1]={name  = "weaponearthturret",
			onlyTargetCategory = [[LAND AIR]],
		},
		[2]={name  = "weaponearthturret",
			onlyTargetCategory = [[LAND AIR]],
		},
	},
	sfxtypes = {
		explosiongenerators = {
			"custom:smoke1",
		},
	},
	Category = [[LAND]],

}

return lowerkeys({ [unitName] = unitDef })
