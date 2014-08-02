local unitName = "st6"

unitDef = {
	name                = "ST-6",
	description         = "SpaceTron",
	objectName          = "st6.dae",
	script              = "st6.lua",

	bmcode				= [[1]], -- ?????

	builder				= false,
	buildPic            = "st6.png",
	buildTime           = 10,
	canAttack           = true,

	----cost
	
	buildCostEnergy     = 0,
	buildCostMetal      = 2500,
	
	----health
	
	maxDamage           = 10000,
	idleAutoHeal        = 0,
	
	----movement
	
	maxVelocity         = 4,
	acceleration        = 0.2,
	brakeRate           = 3.75,
	moverate1           = [[3]],
	footprintx          = 3,
	footprintZ          = 3,
	Upright 			= false,
	maneuverleashlength = 1280,
	collide             = true,
	collision 			= true,
	steeringmode        = [[1]],
	TEDClass            = [[VTOL]],
	turnRate            = 200,
	turnRadius		  	= 35,
	
	----aircraft related
	
	canFly              = true,
	dontLand		 	= true,
	cruiseAlt           = 200,
	hoverAttack         = true,
	airStrafe			= true,
	bankscale           = 1,
	maxBank				= 0.2,
	maxPitch			= 0.2,

	sightDistance       = 1000,
	canGuard            = true,
	canMove             = true,
	canPatrol           = true,
	canstop             = [[0]],
	category            = [[AIR]],
	mass                = 2000,


	weapons = {
		[1]={name  = "weaponst61",
			onlyTargetCategory = [[LAND AIR]],
		},
		[2]={name  = "weaponst62",
			onlyTargetCategory = [[AIR]],
			slaveTo = 1,
			maxAngleDif = 220,
			mainDir = [[1 0 0]],
		},
		[3]={name  = "weaponst62",
			onlyTargetCategory = [[AIR]],
			slaveTo = 1,
			maxAngleDif = 220,
			mainDir = [[-1 0 0]],
		},
	},
}

return lowerkeys({ [unitName] = unitDef })
