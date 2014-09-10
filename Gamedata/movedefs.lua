local moveDefs =
{
	{
	name = "Default1x1",
	footprintX = 1,
	maxWaterDepth = 10,
	maxSlope = 20,
	crushStrength = 100,
	},
	{
	name = "Default2x2",
	footprintX = 2,
	maxWaterDepth = 10,
	maxSlope = 20,
	crushStrength = 100,
	},
	
	{
	name = "Default3x3",
	footprintX = 3,
	maxWaterDepth = 10,
	maxSlope = 20,
	crushStrength = 100,
	},
	
	{
	name = "Default4x4",
	footprintX = 4,
	maxWaterDepth = 10,
	maxSlope = 20,
	crushStrength = 125,
	},
	
	{
	name = "Spider1x1",
	footprintX = 1,
	maxWaterDepth = 10,
	crushStrength = 10,
	maxHeightDif= 10,
	},
	
	{
	name = "Hover2x2",
	footprintX = 2,
	maxWaterDepth = 5000,
	maxSlope = 20,
	crushStrength = 25,
	hover = true,
	},
}

return moveDefs
