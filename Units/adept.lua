local unitName = "aadept"

local unitDef = {
	name = "Adept",
	Description = "Armored Construction Bot",
	objectName = "adept.dae",
	script = "adept.lua",
	buildPic = "aadept.png",
	iconType = "cons",

	--cost

	buildCostMetal = 200,
	buildCostEnergy = 0,
	buildTime = 10,

	--Health

	maxDamage    = 6800,
	idleAutoHeal = 20,
	idleTime     = 3,

	--Movement

	mass=1800,
	Acceleration =0.5,
	BrakeRate = 0.5,
	FootprintX = 3,
	FootprintZ = 3,
	MaxVelocity = 3.4,
	MaxWaterDepth = 20,
	MovementClass = "Default3x3",

	TurnInPlace = false,
	turnInPlaceSpeedLimit  = 2,

	TurnRate = 400,

	sightDistance = 400,

	Category = [[LAND]],

	CanAttack = true,
	CanGuard = true,
	CanMove = true,
	CanPatrol = true,
	CanStop = true,
	LeaveTracks = false,

	sfxtypes = {
		explosiongenerators = {
			"custom:smoke1",
		},
	},
	
	--building

	Builder = true,
	ShowNanoSpray = true,
	CanBeAssisted = true,
	workerTime = 0.50,
	repairSpeed = 1,
	reclaimSpeed = 30,
	buildDistance = 160,
}

return lowerkeys({ [unitName] = unitDef })
