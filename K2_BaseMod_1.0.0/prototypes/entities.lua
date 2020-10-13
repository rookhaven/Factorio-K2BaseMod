local hit_effects = require("__base__/prototypes/entity/demo-hit-effects")
local sounds      = require("__base__/prototypes/entity/demo-sounds")

-- Base modifications
local ent
ent = util.table.deepcopy(data.raw["train-stop"]["train-stop"])
ent.color={r=0,  g=0, b=0.45, a=0.5}
data:extend({ent})

ent = util.table.deepcopy(data.raw["locomotive"]["locomotive"])
ent.color={r=0,  g=0, b=0.45, a=0.5}
data:extend({ent})

ent = util.table.deepcopy(data.raw["gun"]["submachine-gun"])
ent.attack_parameters.range = 40
ent.attack_parameters.movement_slow_down_factor = 0.05
data:extend({ent})

ent = util.table.deepcopy(data.raw["ammo-turret"]["gun-turret"])
ent.attack_parameters.range = 32
ent.max_health = 600
data:extend({ent})

ent = util.table.deepcopy(data.raw["electric-turret"]["laser-turret"])
ent.energy_source.drain = "6kW"
ent.attack_parameters.range = 40
ent.attack_parameters.energy_consumption = "200kJ"
data:extend({ent})

ent = util.table.deepcopy(data.raw["construction-robot"]["construction-robot"])
ent.max_health = 200
ent.max_payload_size = 10
ent.speed = 0.2
ent.max_energy = "5MJ"
ent.energy_per_move = "1kJ"
data:extend({ent})

ent = util.table.deepcopy(data.raw["logistic-robot"]["logistic-robot"])
ent.max_health = 200
ent.max_payload_size = 10
ent.speed = 0.2
ent.max_energy = "5MJ"
ent.energy_per_move = "1kJ"
data:extend({ent})

ent = util.table.deepcopy(data.raw["beacon"]["beacon"])
ent.supply_area_distance = 15
ent.energy_usage = "120kW"
ent.module_specification.module_slots = 4
ent.collision_box = {{-1.7, -1.7}, {1.7, 1.7}}
ent.selection_box = {{-2, -2}, {2, 2}}
--ent.drawing_box = {{-1.5, -2.2}, {1.5, 1.3}}
ent.drawing_box = {{-2, -2.7}, {2, 1.8}}
data:extend({ent})

ent = util.table.deepcopy(data.raw["electric-pole"]["small-electric-pole"])
ent.maximum_wire_distance = 50
ent.supply_area_distance = 25
data:extend({ent})

ent = util.table.deepcopy(data.raw["underground-belt"]["underground-belt"])
ent.max_distance = 200
data:extend({ent})

ent = util.table.deepcopy(data.raw["underground-belt"]["fast-underground-belt"])
ent.max_distance = 200
data:extend({ent})

ent = util.table.deepcopy(data.raw["underground-belt"]["express-underground-belt"])
ent.max_distance = 200
data:extend({ent})

ent = util.table.deepcopy(data.raw["pipe-to-ground"]["pipe-to-ground"])
ent.fluid_box.pipe_connections[2].max_underground_distance = 200
data:extend({ent})

ent = util.table.deepcopy(data.raw["inserter"]["fast-inserter"])
ent.name = "close-inserter"
ent.minable.result = "close-inserter"
ent.insert_position = {0, 0.8}
ent.rotation_speed = ent.rotation_speed * 2
ent.extension_speed = ent.extension_speed * 2
ent.stack = true
ent.energy_per_movement = "500W"
ent.energy_per_rotation = "500W"
ent.energy_source.drain = "0.01kW"
ent.circuit_wire_max_distance = 400
data:extend({ent})

ent = util.table.deepcopy(data.raw["inserter"]["fast-inserter"])
ent.rotation_speed = ent.rotation_speed * 2
ent.extension_speed = ent.extension_speed * 2
ent.stack = true
ent.energy_per_movement = "500W"
ent.energy_per_rotation = "500W"
ent.energy_source.drain = "0.1kW"
ent.circuit_wire_max_distance = 400
data:extend({ent})

ent = util.table.deepcopy(data.raw["inserter"]["filter-inserter"])
ent.rotation_speed = ent.rotation_speed * 2
ent.extension_speed = ent.extension_speed * 2
ent.stack = true
ent.energy_per_movement = "500W"
ent.energy_per_rotation = "500W"
ent.energy_source.drain = "0.1kW"
ent.circuit_wire_max_distance = 400
data:extend({ent})

ent = util.table.deepcopy(data.raw["inserter"]["long-handed-inserter"])
ent.rotation_speed = ent.rotation_speed * 2
ent.extension_speed = ent.extension_speed * 2
ent.stack = true
ent.energy_per_movement = "500W"
ent.energy_per_rotation = "500W"
ent.energy_source.drain = "0.1kW"
ent.circuit_wire_max_distance = 400
data:extend({ent})

ent = util.table.deepcopy(data.raw["assembling-machine"]["assembling-machine-1"])
ent.energy_usage = "60kW"
ent.crafting_speed = 1
data:extend({ent})

ent = util.table.deepcopy(data.raw["assembling-machine"]["assembling-machine-2"])
ent.energy_usage = "60kW"
ent.module_specification.module_slots = 4
ent.crafting_speed = 2
data:extend({ent})

ent = util.table.deepcopy(data.raw["assembling-machine"]["assembling-machine-3"])
ent.energy_usage = "60kW"
ent.module_specification.module_slots = 4
ent.crafting_speed = 4
data:extend({ent})

ent = util.table.deepcopy(data.raw["assembling-machine"]["chemical-plant"])
ent.energy_usage = "90kW"
ent.crafting_speed = 2
data:extend({ent})

ent = util.table.deepcopy(data.raw["mining-drill"]["electric-mining-drill"])
ent.name = "k2-electric-mining-drill"
ent.minable.result = "k2-electric-mining-drill"
ent.mining_speed = 2
ent.energy_usage = "640kW"
ent.resource_searching_radius = 10.49
data:extend({ent})

ent = util.table.deepcopy(data.raw["furnace"]["electric-furnace"])
ent.name = "k2-electric-furnace"
ent.minable.result = "k2-electric-furnace"
ent.energy_usage = "640kW"
ent.module_specification.module_slots = 4
ent.crafting_speed = 10
data:extend({ent})

ent = util.table.deepcopy(data.raw["accumulator"]["accumulator"])
ent.energy_source.buffer_capacity = "50MJ"
ent.energy_source.input_flow_limit = "1MW"
ent.energy_source.output_flow_limit = "1MW"
data:extend({ent})

ent = util.table.deepcopy(data.raw["solar-panel"]["solar-panel"])
ent.production = "4MW"
data:extend({ent})

ent = util.table.deepcopy(data.raw["unit"]["small-biter"])
ent.max_health = ent.max_health * 4
ent.healing_per_tick = ent.healing_per_tick * 1.25
ent.pollution_to_join_attack = 100
ent.vision_distance = 40
data:extend({ent})

ent = util.table.deepcopy(data.raw["unit"]["small-spitter"])
ent.max_health = ent.max_health * 4
ent.healing_per_tick = ent.healing_per_tick * 1.25
ent.pollution_to_join_attack = 100
ent.vision_distance = 40
ent.attack_parameters.range = ent.attack_parameters.range + 5
data:extend({ent})

ent = util.table.deepcopy(data.raw["unit"]["medium-biter"])
ent.max_health = ent.max_health * 4
ent.healing_per_tick = ent.healing_per_tick * 1.25
ent.pollution_to_join_attack = 100
ent.vision_distance = 40
data:extend({ent})

ent = util.table.deepcopy(data.raw["unit"]["medium-spitter"])
ent.max_health = ent.max_health * 4
ent.healing_per_tick = ent.healing_per_tick * 1.25
ent.pollution_to_join_attack = 100
ent.vision_distance = 40
ent.attack_parameters.range = ent.attack_parameters.range + 5
data:extend({ent})

ent = util.table.deepcopy(data.raw["unit"]["big-biter"])
ent.max_health = ent.max_health * 4
ent.healing_per_tick = ent.healing_per_tick * 2
ent.pollution_to_join_attack = 200
ent.vision_distance = 40
data:extend({ent})

ent = util.table.deepcopy(data.raw["unit"]["big-spitter"])
ent.max_health = ent.max_health * 4
ent.healing_per_tick = ent.healing_per_tick * 2
ent.pollution_to_join_attack = 200
ent.vision_distance = 40
ent.attack_parameters.range = ent.attack_parameters.range + 5
data:extend({ent})

ent = util.table.deepcopy(data.raw["unit"]["behemoth-biter"])
ent.max_health = ent.max_health * 2
ent.healing_per_tick = ent.healing_per_tick * 2
ent.pollution_to_join_attack = 400
ent.vision_distance = 40
data:extend({ent})

-- Various Sized Logistic Buffer Chests
ent = util.table.deepcopy(data.raw["logistic-container"]["logistic-chest-buffer"])
ent.name = "k2-logistic-chest-buffer-19"
ent.minable = {mining_time = 0.1, result = "k2-logistic-chest-buffer-19"}
ent.collision_box = {{-9.5, -0.5}, {9.5, 0.5}}
ent.selection_box = {{-9.5, -0.5}, {9.5, 0.5}}
data:extend({ent})

ent = util.table.deepcopy(data.raw["logistic-container"]["logistic-chest-buffer"])
ent.name = "k2-logistic-chest-buffer-18"
ent.minable = {mining_time = 0.1, result = "k2-logistic-chest-buffer-18"}
ent.collision_box = {{-9, -0.5}, {9, 0.5}}
ent.selection_box = {{-9, -0.5}, {9, 0.5}}
data:extend({ent})

ent = util.table.deepcopy(data.raw["logistic-container"]["logistic-chest-buffer"])
ent.name = "k2-logistic-chest-buffer-9"
ent.minable = {mining_time = 0.1, result = "k2-logistic-chest-buffer-9"}
ent.collision_box = {{-4.5, -0.5}, {4.5, 0.5}}
ent.selection_box = {{-4.5, -0.5}, {4.5, 0.5}}
data:extend({ent})

ent = util.table.deepcopy(data.raw["logistic-container"]["logistic-chest-buffer"])
ent.name = "k2-logistic-chest-buffer-7"
ent.minable = {mining_time = 0.1, result = "k2-logistic-chest-buffer-7"}
ent.collision_box = {{-3.5, -0.5}, {3.5, 0.5}}
ent.selection_box = {{-3.5, -0.5}, {3.5, 0.5}}
data:extend({ent})

-- Overflow Valve ----------------------------------------------------------
ent = util.table.deepcopy(data.raw["storage-tank"]["storage-tank"])
ent.name = "overflow-valve"
ent.icon = "__K2_BaseMod__/graphics/icon/overflow-valve.png"
ent.icon_size = 32
ent.icon_mipmaps = nil
ent.corpse = "pipe-remnants"
ent.max_health = data.raw["pipe"]["pipe"].max_health
ent.resistances = data.raw["pipe"]["pipe"].resistances
ent.fast_replaceable_group = data.raw["pipe"]["pipe"].fast_replaceable_group
ent.collision_box = data.raw["pipe"]["pipe"].collision_box
ent.selection_box = data.raw["pipe"]["pipe"].selection_box
ent.minable = {mining_time = 1, result = "overflow-valve"}
ent.two_direction_only = false
ent.working_sound = nil
ent.fluid_box =
{
  base_area = 1,
  base_level = 0.8,
  pipe_covers = pipecoverspictures(),
  pipe_connections =
  {
    { position = {0, 1}, type="output" },
    { position = {0, -1} }
  },
}
ent.pictures.picture =
{
  sheet =
  {
    filename = "__K2_BaseMod__/graphics/entity/overflow-valve.png",
    priority = "extra-high",
    frames = 4,
    width = 58,
    height = 55,
    shift = {0.28125, -0.078125}
  }
}
data:extend({ent})

-- Double Size Requester Chest----------------------------------------------
ent = util.table.deepcopy(data.raw["logistic-container"]["logistic-chest-requester"])
ent.name = "k2-logistic-chest-requester"
ent.minable = {mining_time = 1, result = "k2-logistic-chest-requester"}
ent.collision_box = {{-0.7, -0.7}, {0.7, 0.7}}
ent.selection_box = {{-1, -1}, {1, 1}}
ent.animation =
{
  layers =
  {
	{
	  filename = "__base__/graphics/entity/logistic-chest/logistic-chest-requester.png",
	  priority = "extra-high",
	  width = 34,
	  height = 38,
	  frame_count = 7,
	  shift = util.by_pixel(0, -2),
	  scale = 1,
	  hr_version =
	  {
		filename = "__base__/graphics/entity/logistic-chest/hr-logistic-chest-requester.png",
		priority = "extra-high",
		width = 66,
		height = 74,
		frame_count = 7,
		shift = util.by_pixel(0, -2),
		scale = 1
	  }
	},
	{
	  filename = "__base__/graphics/entity/logistic-chest/logistic-chest-shadow.png",
	  priority = "extra-high",
	  width = 56,
	  height = 24,
	  repeat_count = 7,
	  shift = util.by_pixel(12, 5),
	  draw_as_shadow = true,
	  scale = 1,
	  hr_version =
	  {
		filename = "__base__/graphics/entity/logistic-chest/hr-logistic-chest-shadow.png",
		priority = "extra-high",
		width = 112,
		height = 46,
		repeat_count = 7,
		shift = util.by_pixel(12, 4.5),
		draw_as_shadow = true,
		scale = 1
	  }
	}
  }
}
data:extend({ent})

-- Warehouse  ----------------------------------------------
data:extend(
{
	{
		type = "logistic-container",
		name = "k2-warehouse",
		icon = "__K2_BaseMod__/graphics/icon/warehouse.png",
		icon_size = 64,
		flags = {"placeable-player", "player-creation"},
		minable = {mining_time = 1, result = "k2-warehouse"},
		max_health = 1500,
		corpse = "big-remnants",
		collision_box = {{-2.75, -2.75}, {2.75, 2.75}},
		selection_box = {{-3, -3}, {3, 3}},
		damaged_trigger_effect = hit_effects.entity(),
		resistances = 
		{
			{type = "physical",percent = 50},
			{type = "fire",percent = 75},
			{type = "impact",percent = 75}
		},
		fast_replaceable_group = "container",
		inventory_size = 500,
		logistic_mode = "active-provider",
--		scale_info_icons = kr_icons_size,
		open_sound = { filename = "__base__/sound/metallic-chest-open.ogg", volume=0.65 },
		close_sound = { filename = "__base__/sound/metallic-chest-close.ogg", volume = 0.7 },
		vehicle_impact_sound = sounds.generic_impact,
		opened_duration = logistic_chest_opened_duration,
		picture =
		{
			filename = "__K2_BaseMod__/graphics/entity/warehouse.png",
			priority = "extra-high",
			width = 213,
			height = 213,
			scale = 1.2,
		},
		circuit_wire_connection_point = circuit_connector_definitions["chest"].points,
		circuit_connector_sprites = circuit_connector_definitions["chest"].sprites,
		circuit_wire_max_distance = 20,
		open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.75 },
		close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 }
	},
})

-- Fluid Burner ----------------------------------------------
data:extend(
{  
	{
		type = "furnace",
		name = "k2-fluid-burner",
		icon = "__K2_BaseMod__/graphics/entity/fluid-burner.png",
		icon_size = 64,
		flags = {"placeable-neutral", "placeable-player", "player-creation"},
		minable = {mining_time = 0.5, result = "k2-fluid-burner"},
		max_health = 250,
		corpse = "medium-remnants",
		dying_explosion = "medium-explosion",
		resistances = 
		{
			{type = "physical", percent = 50},
			{type = "fire", percent = 95}
		},
		fluid_boxes =
		{
			{
				production_type = "input",
				pipe_covers = pipecoverspictures(),
				pipe_picture = assembler3pipepictures(),
				base_area = 5,
				base_level = -1,
				pipe_connections = {{ type="input", position = {0.5, 1.5} }}
			},						
			off_when_no_fluid_recipe = false
		},
		collision_box = {{-0.9, -0.9}, {0.9, 0.9}},
		selection_box = {{-1, -1}, {1, 1}},
		animation =
		{
			north =
			{
				layers =
				{
					{
						filename = "__K2_BaseMod__/graphics/icon/fluid-burner-n.png",
						width = 75,
						height = 150,
						frame_count = 1,
						shift = {0, -1},
						hr_version =
						{
							filename = "__K2_BaseMod__/graphics/icon/hr-fluid-burner-n.png",
							width = 150,
							height = 300,
							scale = 0.5,
							frame_count = 1,
							shift = {0, -1}
						}
					},
					{
						filename = "__K2_BaseMod__/graphics/icon/fluid-burner-sh.png",
						priority = "high",
						scale = scale,
						width = 129,
						height = 47,
						shift = {1.1, 0.25},
						frame_count = 1,
						draw_as_shadow = true,
						hr_version =
						{
							filename = "__K2_BaseMod__/graphics/icon/hr-fluid-burner-sh.png",
							priority = "high",
							scale = scale,
							width = 258,
							height = 94,
							shift = {1.1, 0.25},
							frame_count = 1,
							draw_as_shadow = true,
							scale = 0.5
						}
					}
				}
			},
			east =
			{
				layers =
				{
					{
						filename = "__K2_BaseMod__/graphics/icon/fluid-burner-e.png",
						width = 75,
						height = 150,
						frame_count = 1,
						shift = {0, -1},
						hr_version =
						{
							filename = "__K2_BaseMod__/graphics/icon/hr-fluid-burner-e.png",
							width = 150,
							height = 300,
							scale = 0.5,
							frame_count = 1,
							shift = {0, -1}
						}
					},
					{
						filename = "__K2_BaseMod__/graphics/icon/fluid-burner-sh.png",
						priority = "high",
						scale = scale,
						width = 129,
						height = 47,
						shift = {1.1, 0.25},
						frame_count = 1,
						draw_as_shadow = true,
						hr_version =
						{
							filename = "__K2_BaseMod__/graphics/icon/hr-fluid-burner-sh.png",
							priority = "high",
							scale = scale,
							width = 258,
							height = 94,
							shift = {1.1, 0.25},
							frame_count = 1,
							draw_as_shadow = true,
							scale = 0.5
						}
					}
				}
			},
			south =
			{
				layers =
				{
					{
						filename = "__K2_BaseMod__/graphics/icon/fluid-burner-s.png",
						width = 75,
						height = 150,
						frame_count = 1,
						--line_length = 6,
						shift = {0, -1},
						--animation_speed = 0.5
						hr_version =
						{
							filename = "__K2_BaseMod__/graphics/icon/hr-fluid-burner-s.png",
							width = 150,
							height = 300,
							scale = 0.5,
							frame_count = 1,
							shift = {0, -1}
						}
					},
					{
						filename = "__K2_BaseMod__/graphics/icon/fluid-burner-sh.png",
						priority = "high",
						scale = scale,
						width = 129,
						height = 47,
						shift = {1.1, 0.25},
						frame_count = 1,
						draw_as_shadow = true,
						hr_version =
						{
							filename = "__K2_BaseMod__/graphics/icon/hr-fluid-burner-sh.png",
							priority = "high",
							scale = scale,
							width = 258,
							height = 94,
							shift = {1.1, 0.25},
							frame_count = 1,
							draw_as_shadow = true,
							scale = 0.5
						}
					}
				}
			},
			west =
			{
				layers =
				{
					{
						filename = "__K2_BaseMod__/graphics/icon/fluid-burner-w.png",
						width = 75,
						height = 150,
						frame_count = 1,
						shift = {0, -1},
						hr_version =
						{
							filename = "__K2_BaseMod__/graphics/icon/hr-fluid-burner-w.png",
							width = 150,
							height = 300,
							scale = 0.5,
							frame_count = 1,
							shift = {0, -1}
						}
					},
					{
						filename = "__K2_BaseMod__/graphics/icon/fluid-burner-sh.png",
						priority = "high",
						scale = scale,
						width = 129,
						height = 47,
						shift = {1.1, 0.25},
						frame_count = 1,
						draw_as_shadow = true,
						hr_version =
						{
							filename = "__K2_BaseMod__/graphics/icon/hr-fluid-burner-sh.png",
							priority = "high",
							scale = scale,
							width = 258,
							height = 94,
							shift = {1.1, 0.25},
							frame_count = 1,
							draw_as_shadow = true,
							scale = 0.5
						}
					}
				}
			}
		},
		working_visualisations =
		{
				{
					apply_recipe_tint = "quaternary",
					fadeout = true,
					animation =
					{
						filename = "__K2_BaseMod__/graphics/icon/fluid-burner-fire.png",
						line_length = 10,
						width = 40,
						height = 81,
						frame_count = 60,
						animation_speed = 0.75,
						scale = 0.50,
						shift = {0, -3.25}
					}
				},				
				{
				light =
				{
					intensity = 0.75,
					size = 25,
					shift = {0, 0},
					color = {r=1, g=0.95, b=0.75}
				}
			}		
		},
		crafting_categories = {"fluid-burning"},
		vehicle_impact_sound = { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
		working_sound =
		{
			sound =
			{
				filename = "__K2_BaseMod__/sounds/fluid-burner.ogg",
				volume = 2.0
			},
			idle_sound = 
			{ 
				filename = "__base__/sound/idle1.ogg", 
				volume = 1 
			},
			apparent_volume = 1
		},
		crafting_speed = 1.0,
		energy_source =
		{
			type = "electric",
			usage_priority = "secondary-input",
			emissions_per_minute = 5
		},
		
		energy_usage = "0.1MW",
		source_inventory_size = 1,
		result_inventory_size = 1,
		module_specification = { module_slots = 1 },
		allowed_effects = {"speed", "pollution", "consumption"},
		open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.75 },
		close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 }
	}
})
