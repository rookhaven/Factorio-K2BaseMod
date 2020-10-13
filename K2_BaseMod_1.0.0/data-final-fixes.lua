for _,item in pairs(data.raw["item"]) do
   item.stack_size = 200
end

data.raw["item"]["copper-plate"].stack_size = 200
data.raw["item"]["iron-plate"].stack_size = 200
data.raw["item"]["steel-plate"].stack_size = 200
data.raw["item"]["iron-ore"].stack_size = 200
data.raw["item"]["copper-ore"].stack_size = 200
data.raw["item"]["wood"].stack_size = 200
data.raw["item"]["coal"].stack_size = 200
data.raw["item"]["stone"].stack_size = 200
data.raw["item"]["stone-brick"].stack_size = 200
data.raw["item"]["copper-cable"].stack_size = 200
data.raw["item"]["iron-gear-wheel"].stack_size = 200
data.raw["rail-planner"]["rail"].stack_size = 500
data.raw["module"]["productivity-module"].stack_size = 200
data.raw["module"]["productivity-module-2"].stack_size = 200
data.raw["module"]["productivity-module-3"].stack_size = 200
data.raw["module"]["speed-module"].stack_size = 200
data.raw["module"]["speed-module-2"].stack_size = 200
data.raw["module"]["speed-module-3"].stack_size = 200
data.raw["ammo"]["piercing-rounds-magazine"].stack_size = 100
data.raw["ammo"]["piercing-rounds-magazine"].magazine_size = 100
data.raw["ammo"]["uranium-rounds-magazine"].stack_size = 100
data.raw["ammo"]["uranium-rounds-magazine"].magazine_size = 100
data.raw["ammo"]["atomic-bomb"].stack_size = 100
data.raw["ammo"]["artillery-shell"].stack_size = 100
data.raw["item"]["uranium-fuel-cell"].fuel_value = "100GJ"

if (mods['CityPeeps']) then
	data.raw["item"]["k2cp-datacron"].stack_size = 5000
	data.raw["item"]["k2cp-passenger"].stack_size = 1
	data.raw["item"]["k2cp-student"].stack_size = 1
	data.raw["item"]["k2cp-coin"].stack_size = 2000
	data.raw["item"]["k2cp-crate-meals"].stack_size = 2000
	data.raw["item"]["k2cp-crate-house"].stack_size = 2000
	data.raw["item"]["k2cp-crate-energy"].stack_size = 2000
	data.raw["item"]["k2cp-crate-school"].stack_size = 2000
	data.raw["item"]["k2cp-crate-military"].stack_size = 2000
	data.raw["item"]["k2cp-crate-medical"].stack_size = 2000
	data.raw["item"]["k2cp-crate-pleasure"].stack_size = 2000

end
