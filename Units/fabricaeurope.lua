local unitName = "fabricaeurope"

local unitDef = {
	
	-- Internal settings
	
	Category = "LAND",
	ObjectName = "fabricaeurope.dae",	
	TEDClass = "PLANT",
	script = "fabricaeurope.lua",
	buildPic = "placeholder.png",
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
	MetalMake = 5,
	
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
		"aprospector",
		"bmilitia",
		"cberserker",
		"doverkraft",
		"evalkyria",
		"fscorpio",
		"gtaurus",
		"hatlas",
	},
}

return lowerkeys({ [unitName] = unitDef })
