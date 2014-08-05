
local weaponName = "weaponnm1shield"

local weaponDef = {
	
	name					= "Nm1-Shiel",
	weaponType				= "Shield",
	
	damage = {
		default = 10000,
	},
	repulsor				= true,
	visible					= true,
	
	texture1				= "shield4",
	
	radius					= 100,
	
	badColor				= [[ 1.0, 0.0, 0,0]],
	goodColot				= [[ 0.0, 1.0, 0.0]],
	
	badColor				= 0.2,
	
	visibleRepulse			= true,
	
	power					= 1000,
	
	
	
	
	
	
	IsShield				= true,
	--Smartshield				= false,
	
	--Exteriorshield			= true,
	--repulser				= false,
	--force					= 10000,
	
	--maxSpeed				= 1000,
	--visibleRepulse			= true,
	
	Visibleshield			= true,
	--Visibleshieldrepulse	= true,
	
	--visibleShieldHit		= true,
	--visibleShieldHitFrames	= 50,
	
	--interceptType			= 511,
	
	--startingPower			= 5000,
	--energyuse				= 0,
	Shieldradius			= 100,
	--power					= 5000,
	--powerregen				= 100,
	--powerregenenergy		= 100 / 20,
	--goodcolor				= "0.0 1.0 0.2",
	--badcolor				= "1.0 0 0",
	--alpha					= 0.5,
	
	
	
}
return lowerkeys({[weaponName] = weaponDef})
