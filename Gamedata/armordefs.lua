local armorDefs = {
	heavyarmor = {
		"tkt3",
		"nk2",
	},
	lightarmor = {
		"nm1",
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
