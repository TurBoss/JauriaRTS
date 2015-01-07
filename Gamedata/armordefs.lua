local armorDefs = {
	heavyarmor = {
		"fabricaporreton",
		"fabricacaos",
		"fabricaheks",
		"fabricaeurope",
		--------------
		"ftkt4",
		"enk3",
		"hdt6",
		"glz5",
		--------------
		"gheiknado",
		"chaerik",
		"dhipso",
		--------------
		"gjuggernaut",
		"harchaon",
		"dbesieger",
		"aadept",
		"fdesolator",
		--------------
		"fscorpio",
		"gtaurus",
		"hatlas",
	},
	lightarmor = {
		"cnm1",
		"bit0",
		"arc",
		"drk2",
		--------------
		"bheik",
		"ehekor",
		"fhaek",
		"aheiker",
		"hheibok",
		--------------
		"braider",
		"cmarauder",
		"eputris",
		--------------
		"aprospector",
		"bmilitia",
		"cberserker",
		"doverkraft",
		"evalkyria",
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
