local unitName = "fabricaheks"

local unitDef = {
	
	-- Internal settings
	
	Category = "LAND",
	ObjectName = "fabricaporreton.dae",	
	TEDClass = "PLANT",
	script = "fabricaheks.lua",
	buildPic = "fabricaheks.png",
	iconType = "factory",
	
	-- Unit limitations and properties
	
	Description = "A factory that builds mobile ground units.",
	MaxDamage = 15000,
	Name = "Heks Factory",
	RadarDistance = 0,
	SightDistance = 200,
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
	canMove = false,
	Reclaimable = false,
	ShowNanoSpray = true,
	CanBeAssisted = true,
	workerTime = 1,
	
	buildoptions = {
		"aheiker",
		"bheik",
		"chaerik",
		"dhipso",
		"ehekor",
		"fhaek",
		"gheiknado",
		"hheibok",
	},
}

return lowerkeys({ [unitName] = unitDef })
