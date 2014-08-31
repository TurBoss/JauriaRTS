local unitName = "putris"

local unitDef = {
	name = "Putris",
	Description = "Misile Launcher.",
	objectName = "putris.dae",
	script = "putris.lua",
	buildPic = "lz5.png",
	iconType = "lz5",

	--cost

	buildCostMetal = 480,
	buildCostEnergy = 0,
	buildTime = 24,

	--Health

	maxDamage = 2600,
	idleAutoHeal = 24,
	idleTime     = 3,

	--Movement

	mass=3200,
	Acceleration = 1,
	BrakeRate = 1,
	FootprintX = 3.5,
	FootprintZ = 3.5,
	MaxSlope = 12,
	MaxVelocity = 2.8,
	MaxWaterDepth = 20,
	MovementClass = "Default4x4",
	TurnRate = 600,

	sightDistance = 530,

	Category = [[LAND AIR]],

	CanAttack = true,
	CanGuard = true,
	CanMove = true,
	CanPatrol = true,
	CanStop = true,
	LeaveTracks = false, 


	explodeAs = "weaponlz5",
	weapons = {
		[1]={name  = "weaponputris",
			onlyTargetCategory = [[LAND]],
			maxAngleDif = 210,
			mainDir = [[-1 0 1]],
		},
	},
}

return lowerkeys({ [unitName] = unitDef })
