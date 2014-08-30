local unitName = "adept"

local unitDef = {
	name = "Adept",
	Description = "Recolector",
	objectName = "adept.dae",
	script = "adept.lua",
	buildPic = "rc.png",

	--cost

	buildCostMetal = 360,
	buildCostEnergy = 0,
	buildTime = 11.5,

	--Health

	maxDamage    = 3600,
	idleAutoHeal = 18,
	idleTime     = 3,
	--Movement

	mass=1800,
	Acceleration =0.5,
	BrakeRate = 0.5,
	FootprintX = 3,
	FootprintZ = 3,
	MaxVelocity = 3.2,
	MaxWaterDepth = 20,
	MovementClass = "Default3x3",
	TurnRate = 1000,

	sightDistance = 400,

	Category = [[LAND]],

	CanAttack = true,
	CanGuard = true,
	CanMove = true,
	CanPatrol = true,
	CanStop = true,
	LeaveTracks = false, 
	
		weapons = {
		[1]={name  = "weaponadept",
			onlyTargetCategory = [[LAND]],
			--maxAngleDif = 210,
			--mainDir = [[-1 0 1]],
		},
	},

	--building

	Builder = true,
	ShowNanoSpray = true,
	CanBeAssisted = true,  
	workerTime = 0.1,
	repairSpeed = 0,
	reclaimSpeed = 30,
	buildDistance = 160,
}

return lowerkeys({ [unitName] = unitDef })
