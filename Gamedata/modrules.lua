local modrules = {

	experience = {
		experienceMult = 1.0; -- defaults to 1.0
		-- these are all used in the following form:
		-- value = defValue * (1 + (scale * (exp / (exp + 1))))
		powerScale = 0.3; -- defaults to 1.0
		healthScale = 0; -- defaults to 0.7
		reloadScale = 0; -- defaults to 0.4
	},
	
	reclaim = {
		multiReclaim = 1,
		reclaimMethod = 0,
		allowAllies = false,
		allowEnemies = false,
	},
	
	featureLOS = {
		featureVisibility = 0,
	}
}

return modrules
