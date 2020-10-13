-- Base modifications
local rsc
rsc = util.table.deepcopy(data.raw["resource"]["iron-ore"])
rsc.minable.count = 15
rsc.minable.result = "iron-plate"
data:extend({rsc})

rsc = util.table.deepcopy(data.raw["resource"]["copper-ore"])
rsc.minable.count = 15
rsc.minable.result = "copper-plate"
data:extend({rsc})

rsc = util.table.deepcopy(data.raw["resource"]["coal"])
rsc.minable.count = 15
data:extend({rsc})

rsc = util.table.deepcopy(data.raw["resource"]["stone"])
rsc.minable.count = 15
data:extend({rsc})

rsc = util.table.deepcopy(data.raw["resource"]["uranium-ore"])
rsc.minable.count = 15
data:extend({rsc})
