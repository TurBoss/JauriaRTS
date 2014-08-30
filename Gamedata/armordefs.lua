local armorDefs = {
	heavyarmor = {
		"tkt3",
		"nk2",
		"torreta",
		"st6",
		--------------
		"heiknado",
		"haerik",
		"hipso",
		"heibok",
		--------------
		"juggernaut",
		"archaon",
		"besieger",
		"chosen",
		"adept",
	},
	lightarmor = {
		"nm1",
		"it0",
		"rc",
		"rk2",
		--------------
		"heik",
		"hekor",
		"haek",
		"heiker",
		--------------
		"raider",
		"disruptor",
		"putris",
	},
	torrearmor = {
		"torreta",
	},
}

if not(Game) or not(Game.version) then
  for categoryName, categoryTable in pairs(armorDefs) do
    local t = {}
    for _, unitName in pairs(categoryTable) do
      t[unitName] = 1
    end
    armorDefs[categoryName] = t
  end
end

return armorDefs
