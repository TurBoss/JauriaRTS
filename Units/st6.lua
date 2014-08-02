local unitName = "st6"

unitDef = {
	name                = "ST-6",
	description         = "SpaceTron",
	objectName          = "st6.dae",
	script              = "st6.lua",

	bmcode				= [[1]], -- ?????

	builder				= false,
	buildPic            = "st6.png",
	buildTime           = 50,
	canAttack           = true,

	----cost
	
	buildCostEnergy     = 0,
	buildCostMetal      = 3000,
	buildTime = 60,
	
	----health
	
	maxDamage           = 6000,
	idleAutoHeal        = 5,
	
	----movement
	
	maxVelocity         = 3.5,
	acceleration        = 0.2,
	brakeRate           = 3.75,
	moverate1           = [[3]],
	footprintx          = 4,
	footprintZ          = 4,
	Upright 			= false,
	maneuverleashlength = 1280,
	collide             = true,
	collision 			= true,
	steeringmode        = [[1]],
	TEDClass            = [[VTOL]],
	turnRate            = 800,
	turnRadius		  	= 20,
	
	----aircraft related
	
	canFly              = true,
	dontLand		 	= true,
	cruiseAlt           = 40,
	hoverAttack         = true,
	airStrafe			= true,
	bankscale           = 1,
	maxBank				= 5,
	maxPitch			= 5,

	sightDistance       = 600,
	canGuard            = true,
	canMove             = true,
	canPatrol           = true,
	canstop             = [[0]],
	category            = [[AIR]],
	mass                = 2000,


	weapons = {
		[1]={name  = "weaponst62",
			onlyTargetCategory = [[LAND AIR]],
		},
		[2]={name  = "weaponst61",
			onlyTargetCategory = [[LAND AIR]],
			slaveTo = 1,
			maxAngleDif = 220,
			mainDir = [[1 0 0]],
		},
		[3]={name  = "weaponst61",
			onlyTargetCategory = [[LAND AIR]],
			slaveTo = 1,
			maxAngleDif = 220,
			mainDir = [[-1 0 0]],
		},
	},
}

return lowerkeys({ [unitName] = unitDef })
