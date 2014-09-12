local armorDefs = {
	heavyarmor = {
		"fabricaporreton",
		"fabricacaos",
		"fabricaheks",
		--------------
		"ftkt4",
		"enk3",
		"hdt6",
		"glz5",
		--------------
		"heiknado",
		"haerik",
		"hipso",
		"heibok",
		--------------
		"gjuggernaut",
		"harchaon",
		"dbesieger",
		"aadept",
		"fdesolator",
	},
	lightarmor = {
		"cnm1",
		"bit0",
		"arc",
		"drk2",
		--------------
		"heik",
		"hekor",
		"haek",
		"heiker",
		--------------
		"braider",
		"cmarauder",
		"eputris",
	},
	torrearmor = {
		"torreta",
		"torretapro",
		"torrun",
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
