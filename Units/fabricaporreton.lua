local unitName = "fabricaporreton"

local unitDef = {
	
	-- Internal settings
	
	Category = "LAND",
	ObjectName = "fabricaporreton.dae",	
	TEDClass = "PLANT",
	script = "fabricaporreton.lua",
	buildPic = "fabricaporreton.png",
	iconType = "factory",
	
	-- Unit limitations and properties
	
	Description = "a simple factory that builds mobile units",
	MaxDamage = 20000,
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
	MetalMake = 2.5,
	
	--Pathfinding and related
	
	FootprintX = 8,
	FootprintZ = 8,
	MaxSlope = 15,
	YardMap =" oooooooo occcccco occcccco occcccco occcccco occcccco occcccco occcccco",
	
	-- Building
	
	Builder = true,
	canMove = true,
	Reclaimable = false,
	ShowNanoSpray = true,
	CanBeAssisted = true,
	workerTime = 1,
	
	buildoptions = {
		"arc",
		"bit0",
		"cnm1",
		"drk2",
		"enk3",
		"ftkt4",
		"glz5",
		"hdt6",
	},
}

return lowerkeys({ [unitName] = unitDef })
