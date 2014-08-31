local unitName = "besieger"

local unitDef = {

	name = "Besieger",
	Description = "heavy Tank",
	objectName = "besieger.dae",
	script = "besieger.lua",
	buildPic = "tkt4.png",
	iconType = "tkt4",

	--cost

	buildCostMetal = 560,
	buildCostEnergy = 0,
	buildTime = 34,

	--Health

	maxDamage = 8000,
	idleAutoHeal = 20,
	idleTime     = 3,

	--Movement

	mass=3500,
	Acceleration = 0.5,
	BrakeRate = 0.5,
	FootprintX = 4,
	FootprintZ = 4,
	MaxSlope = 15,
	MaxVelocity = 3.4,
	MaxWaterDepth = 20,
	MovementClass = "Default4x4",
	TurnRate = 800,

	sightDistance = 520,

	Builder = false,
	CanAttack = true,
	CanGuard = true,
	CanMove = true,
	CanPatrol = true,
	CanStop = true,
	LeaveTracks = false, 
	
	sfxtypes = {
		explosiongenerators = {
			"custom:smoke3",
		},
	},
	weapons = {
		[1]={name  = "weaponbesieger",
			onlyTargetCategory = [[LAND]],
		},
	},

	Category = [[LAND]],


}

return lowerkeys({[unitName] = unitDef})
