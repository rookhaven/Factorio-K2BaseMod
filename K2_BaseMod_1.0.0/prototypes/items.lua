data:extend({

  {
    type = "item",
    name = "k2-logistic-chest-buffer-19",
    icon = "__base__/graphics/icons/logistic-chest-buffer.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "logistic-network",
    order = "b[storage]-d[logistic-chest-buffer]",
    place_result = "k2-logistic-chest-buffer-19",
    stack_size = 50
  },
  {
    type = "item",
    name = "k2-logistic-chest-buffer-18",
    icon = "__base__/graphics/icons/logistic-chest-buffer.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "logistic-network",
    order = "b[storage]-d[logistic-chest-buffer]",
    place_result = "k2-logistic-chest-buffer-18",
    stack_size = 50
  },
  {
    type = "item",
    name = "k2-logistic-chest-buffer-9",
    icon = "__base__/graphics/icons/logistic-chest-buffer.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "logistic-network",
    order = "b[storage]-d[logistic-chest-buffer]",
    place_result = "k2-logistic-chest-buffer-9",
    stack_size = 50
  },
  {
    type = "item",
    name = "k2-logistic-chest-buffer-7",
    icon = "__base__/graphics/icons/logistic-chest-buffer.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "logistic-network",
    order = "b[storage]-d[logistic-chest-buffer]",
    place_result = "k2-logistic-chest-buffer-7",
    stack_size = 50
  },
  {
    type = "item",
    name = "close-inserter",
    icon = "__base__/graphics/icons/fast-inserter.png",
    icon_size = 64,
    subgroup = "inserter",
    order = "e[close-inserter]",
    place_result = "close-inserter",
    stack_size = 100
  },
  {
    type = "item",
    name = "overflow-valve",
    icon = "__K2_BaseMod__/graphics/icon/overflow-valve.png",
    icon_size = 32,
    subgroup = "energy-pipe-distribution",
    order = "b[pipe]-c[pump]b",
    place_result = "overflow-valve",
    stack_size = 50
  },
  {
	type = "item",
	name = "k2-warehouse",
	icon = "__K2_BaseMod__/graphics/icon/warehouse.png",
	stack_size = 50,
	icon_size = 64,    
	subgroup = "storage",
	order = "a[items]-dz[big-container]",
	place_result = "k2-warehouse"
  },
  {
    type = "item",
    name = "k2-electric-mining-drill",
    icon = "__base__/graphics/icons/electric-mining-drill.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "extraction-machine",
    order = "a[items]-b[k2-electric-mining-drill]",
    place_result = "k2-electric-mining-drill",
    stack_size = 50
  },
  {
    type = "item",
    name = "k2-electric-furnace",
    icon = "__base__/graphics/icons/electric-furnace.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "smelting-machine",
    order = "c[k2-electric-furnace]",
    place_result = "k2-electric-furnace",
    stack_size = 50
  },
  {
    type = "item",
    name = "k2-logistic-chest-requester",
    icon = "__base__/graphics/icons/logistic-chest-requester.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "logistic-network",
    order = "b[storage]-e[k2-logistic-chest-requester]",
    place_result = "k2-logistic-chest-requester",
    stack_size = 50
  },
  {
	type = "item",
	name = "k2-fluid-burner",
	icon = "__K2_BaseMod__/graphics/entity/fluid-burner.png",
	icon_size = 64,
    subgroup = "smelting-machine",
	place_result = "k2-fluid-burner",
	stack_size = 50
  },
  {
    type = "module",
    name = "speed-module-3",
    localised_description = {"item-description.speed-module"},
    icon = "__base__/graphics/icons/speed-module-3.png",
    icon_size = 64,
    subgroup = "module",
    category = "speed",
    tier = 3,
    order = "a[speed]-c[speed-module-3]",
    stack_size = 5000,
    default_request_amount = 10,
    effect = { speed = {bonus = 0.5} }
  },

  {
    type = "module",
    name = "productivity-module-3",
    localised_description = {"item-description.productivity-module"},
    icon = "__base__/graphics/icons/productivity-module-3.png",
    icon_size = 64,
    subgroup = "module",
    category = "productivity",
    tier = 3,
    order = "c[productivity]-c[productivity-module-3]",
    stack_size = 5000,
    default_request_amount = 10,
    effect = { productivity = {bonus = 0.5} }
  }
  
})

for _,tree in pairs(data.raw["tree"]) do
   tree.collision_box = {{-0.05, -0.05}, {0.05, 0.05}}
end

