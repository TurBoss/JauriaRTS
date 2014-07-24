local unitName = "fabricaporreton"

local unitDef = {
	
	-- Internal settings
	
	Category = "LAND",
	ObjectName = "fabricaporreton.dae",	
	TEDClass = "PLANT",
	script = "fabricaporreton.lua",
	buildPic = "placeholder.png",
	
	-- Unit limitations and properties
	
	Description = "a simple factory that builds mobile units",
	MaxDamage = 10000,
	Name = "Fabrica",
	RadarDistance = 0,
	SightDistance = 500,
	Upright = 1,
	levelground = 1,
	
	--cost
	
	buildCostMetal = 200,
	buildCostEnergy = 0,
	buildTime = 25,
	
	--economy
	
	EnergyStorage = 0,
	EnergyUse = 0,
	MetalStorage = 0,
	EnergyMake = 0, 
	MakesMetal = 0, 
	MetalMake = 30,
	
	--Pathfinding and related
	
	FootprintX = 8,
	FootprintZ = 8,
	MaxSlope = 15,
	YardMap =" oooooooo occcccco occcccco occcccco occcccco occcccco occcccco occcccco",
	
	-- Building
	
	Builder = true,
	Reclaimable = false,
	ShowNanoSpray = true,
	CanBeAssisted = false,
	workerTime = 1,
	
	buildoptions = {
		"nm1",
		"nk2",
		"tkt3",
	},
}

return lowerkeys({ [unitName] = unitDef })
