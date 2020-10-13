	data:extend({
  {
    type = "recipe",
    name = "copper-plate",
    category = "smelting",
    energy_required = 5,
    ingredients = {{ "copper-ore", 15}},
	results =
	{
		{type="item", name="copper-plate", amount=15}
	}
  },
  {
    type = "recipe",
    name = "iron-plate",
    category = "smelting",
    energy_required = 5,
    ingredients = {{"iron-ore", 15}},
	results =
	{
		{type="item", name="iron-plate", amount=15}
	}
  },
  {
    type = "recipe",
    name = "stone-brick",
    category = "smelting",
    energy_required = 3,
    enabled = true,
    ingredients = {{"stone", 30}},
	results =
	{
		{type="item", name="stone-brick", amount=15}
	}
  },
  {
    type = "recipe",
    name = "steel-plate",
    category = "smelting",
    normal =
    {
      enabled = false,
      energy_required = 3,
      ingredients = {{"iron-plate", 80}},
      results =
      {
		{type="item", name="steel-plate", amount=30}
      }
    },
    expensive =
    {
      enabled = false,
      energy_required = 32,
      ingredients = {{"iron-plate", 10}},
      result = "steel-plate"
    }
  },
  {
    type = "recipe",
    name = "copper-cable",
	energy_required = 1,
    ingredients = {{"copper-plate", 30}},
    result = "copper-cable",
    result_count = 60
  },
  {
    type = "recipe",
    name = "iron-gear-wheel",
	energy_required = 5,
    normal =
    {
      ingredients = {{"iron-plate", 40}},
      results =
      {
		{type="item", name="iron-gear-wheel", amount=20}
      }
    },
    expensive =
    {
      ingredients = {{"iron-plate", 40}},
      results =
      {
		{type="item", name="iron-gear-wheel", amount=10}
      }
    }
  },
  {
    type = "recipe",
    name = "electronic-circuit",
	energy_required = 5,
    normal =
    {
      ingredients =
      {
        {"iron-plate", 10},
        {"copper-cable", 30}
      },
      results =
      {
		{type="item", name="electronic-circuit", amount=10}
      }
    },
    expensive =
    {
      ingredients =
      {
        {"iron-plate", 10},
        {"copper-cable", 40}
      },
      results =
      {
		{type="item", name="electronic-circuit", amount=5}
      }
    }
  },
  {
    type = "recipe",
    name = "automation-science-pack",
    energy_required = 3,
    ingredients =
    {
      {"copper-plate", 2},
      {"iron-gear-wheel", 2}
    },
    result_count = 2,
    result = "automation-science-pack"
  },
  {
    type = "recipe",
    name = "logistic-science-pack",
    enabled = false,
    energy_required = 3,
    ingredients =
    {
      {"inserter", 2},
      {"transport-belt", 2}
    },
    result_count = 2,
    result = "logistic-science-pack"
  },
  {
    type = "recipe",
    name = "military-science-pack",
    enabled = false,
    energy_required = 3,
    ingredients =
    {
      {"piercing-rounds-magazine", 2},
      {"grenade", 2},
      {"stone-wall", 4}
    },
    result_count = 2,
    result = "military-science-pack"
  },
  {
    type = "recipe",
    name = "chemical-science-pack",
    enabled = false,
    energy_required = 3,
    ingredients =
    {
      {"engine-unit", 2},
      {"advanced-circuit", 3},
      {"sulfur", 1}
    },
    result_count = 2,
    result = "chemical-science-pack"
  },
  {
    type = "recipe",
    name = "production-science-pack",
    enabled = false,
    energy_required = 3,
    ingredients =
    {
     {"electric-furnace", 1},
     {"productivity-module", 1},
     {"rail", 4}
    },
    result_count = 2,
    result = "production-science-pack"
  },
  {
    type = "recipe",
    name = "utility-science-pack",
    enabled = false,
    energy_required = 3,
    ingredients =
    {
      {"low-density-structure", 2},
      {"processing-unit", 2},
      {"flying-robot-frame", 1}
    },
    result_count = 2,
    result = "utility-science-pack"
  },

  -- Custom Items
  {
    type = "recipe",
    name = "k2-logistic-chest-buffer-19",
    enabled = true,
    ingredients =
    {
      {"iron-plate", 10},
      {"copper-plate", 10}
    },
    result = "k2-logistic-chest-buffer-19"
  },
  {
    type = "recipe",
    name = "k2-logistic-chest-buffer-18",
    enabled = true,
    ingredients =
    {
      {"iron-plate", 10},
      {"copper-plate", 10}
    },
    result = "k2-logistic-chest-buffer-18"
  },
  {
    type = "recipe",
    name = "k2-logistic-chest-buffer-9",
    enabled = true,
    ingredients =
    {
      {"iron-plate", 3},
      {"copper-plate", 3}
    },
    result = "k2-logistic-chest-buffer-9"
  },
  {
    type = "recipe",
    name = "k2-logistic-chest-buffer-7",
    enabled = true,
    ingredients =
    {
      {"iron-plate", 3},
      {"copper-plate", 3}
    },
    result = "k2-logistic-chest-buffer-7"
  },
  {
    type = "recipe",
    name = "close-inserter",
    enabled = true,
    ingredients =
    {
      {"copper-plate", 2},
      {"iron-plate", 2}
    },
    result = "close-inserter",
  },
  {
    type = "recipe",
    name = "overflow-valve",
    energy_required = 2,
    enabled = true,
    ingredients =
    {
      {"iron-plate", 2},
      {"iron-gear-wheel", 1},
      {"electronic-circuit", 1},
      {"pipe", 1}
    },
    result = "overflow-valve"
  },
  {
	type = "recipe",
	name = "k2-warehouse",
	energy_required = 30,
	enabled = true,
	ingredients =
	{
      {"copper-plate", 100},
      {"iron-plate", 100}
	},
	subgroup = "storage",
	order = "a[items]-dz[big-container]",
	result = "k2-warehouse"
  },
  {
    type = "recipe",
    name = "k2-electric-mining-drill",
    energy_required = 20,
    enabled = true,
    ingredients =
    {
      {"iron-plate", 40},
      {"copper-plate", 40},
      {"iron-gear-wheel", 22}
    },
    result = "k2-electric-mining-drill"
  },
  {
    type = "recipe",
    name = "k2-electric-furnace",
    energy_required = 5,
    enabled = true,
    ingredients =
    {
      {"iron-plate", 8},
      {"copper-plate", 4},
      {"iron-gear-wheel", 4}
    },
    result = "k2-electric-furnace"
  },
  {
	type = "recipe",
	name = "k2-fluid-burner",
	energy_required = 5,
	enabled = true,
	ingredients =
	{
		{"iron-plate", 10},
		{"copper-plate", 10},
		{"pipe", 4}
	},
	result = "k2-fluid-burner"
  },		
  {
    type = "recipe-category",
    name = "fluid-burning"
  },
  {
	type = "recipe",
	name = "k2-water-burn",
	energy_required = 4,
	enabled = true,
	hidden = true,
	hide_from_player_crafting = true,
	always_show_products = false,
	show_amount_in_title = false,
    category = "fluid-burning",
	ingredients =
	{
		{type="fluid", name="water", amount=200}
	},
	results =
	{
		{type="fluid", name="water", amount=0}
	}
  },
  {
	type = "recipe",
	name = "k2-steam-burn",
	energy_required = 4,
	enabled = true,
	hidden = true,
	hide_from_player_crafting = true,
	always_show_products = false,
	show_amount_in_title = false,
    category = "fluid-burning",
	ingredients =
	{
		{type="fluid", name="steam", amount=200}
	},
	results =
	{
		{type="fluid", name="water", amount=0}
	}
  },
  {
    type = "recipe",
    name = "nuclear-fuel",
    energy_required = 15,
    enabled = false,
    category = "centrifuging",
    ingredients = {{"uranium-238", 20}},
    icon = "__base__/graphics/icons/nuclear-fuel.png",
    icon_size = 64, icon_mipmaps = 4,
    result = "nuclear-fuel"
  },
  {
    type = "recipe",
    name = "rocket-part",
    energy_required = 3,
    enabled = false,
    hidden = true,
    category = "rocket-building",
    ingredients =
    {
      {"rocket-control-unit", 10},
      {"low-density-structure", 10},
      {"rocket-fuel", 1}
    },
    result= "rocket-part"
  },
  {
    type = "recipe",
    name = "satellite",
    energy_required = 5,
    enabled = false,
    category = "crafting",
    ingredients =
    {
      {"low-density-structure", 100},
      {"solar-panel", 20},
      {"accumulator", 20},
      {"radar", 4},
      {"processing-unit", 4},
    },
    result= "satellite",
    requester_paste_multiplier = 1
  },
  {
    type = "recipe",
    name = "solar-panel",
    energy_required = 5,
    enabled = false,
    ingredients =
    {
      {"steel-plate", 5},
      {"electronic-circuit", 5},
      {"copper-plate", 5}
    },
    result = "solar-panel",
	result_count = 2
  },
  {
    type = "recipe",
    name = "filter-inserter",
    enabled = false,
    ingredients =
    {
      {"copper-plate", 4},
      {"iron-plate", 2}
    },
    result = "filter-inserter",
  },
  {
    type = "recipe",
    name = "fast-inserter",
    enabled = false,
    ingredients =
    {
      {"copper-plate", 4},
      {"iron-plate", 2}
    },
    result = "fast-inserter",
  },
  {
    type = "recipe",
    name = "electric-furnace",
    ingredients =
    {
      {"iron-plate", 8},
      {"copper-plate", 4},
      {"iron-gear-wheel", 4}
	},
    result = "electric-furnace",
    energy_required = 2,
    enabled = false
  },
  {
    type = "recipe",
    name = "productivity-module",
    enabled = false,
    ingredients =
    {
      {"copper-cable", 4},
      {"copper-plate", 4},
      {"electronic-circuit", 2},
      {"iron-plate", 2}
    },
    energy_required = 10,
    result = "productivity-module"
  },
  {
    type = "recipe",
    name = "productivity-module-2",
    enabled = false,
    ingredients =
    {
      {"productivity-module", 4},
      {"copper-plate", 4},
      {"electronic-circuit", 2}
    },
    energy_required = 20,
    result = "productivity-module-2"
  },
  {
    type = "recipe",
    name = "productivity-module-3",
    enabled = false,
    ingredients =
    {
      {"productivity-module-2", 2},
      {"electronic-circuit", 2},
      {"iron-plate", 2}
    },
    energy_required = 30,
    result = "productivity-module-3"
  },
  {
    type = "recipe",
    name = "logistic-chest-requester",
    enabled = false,
    ingredients =
    {
      {"copper-plate", 4},
      {"iron-plate", 2}
    },
    result = "logistic-chest-requester"
  },
  {
    type = "recipe",
    name = "k2-logistic-chest-requester",
    enabled = true,
    ingredients =
    {
      {"copper-plate", 8},
      {"iron-plate", 4}
    },
    result = "k2-logistic-chest-requester"
  },
  {
    type = "recipe",
    name = "logistic-chest-active-provider",
    enabled = false,
    ingredients =
    {
      {"copper-plate", 4},
      {"iron-plate", 2}
    },
    result = "logistic-chest-active-provider"
  },
  {
    type = "recipe",
    name = "roboport",
    enabled = false,
    energy_required = 5,
    ingredients =
    {
      {"iron-plate", 45},
      {"iron-gear-wheel", 45},
      {"copper-cable", 45}
    },
    result = "roboport"
  },
  {
    type = "recipe",
    name = "flying-robot-frame",
    energy_required = 4,
    ingredients =
    {
      {"iron-plate", 4},
      {"iron-gear-wheel", 4},
      {"copper-cable", 4},
      {"electronic-circuit", 3}
    },
    result = "flying-robot-frame",
    enabled = false
  },
  {
    type = "recipe",
    name = "logistic-robot",
    enabled = false,
    ingredients =
    {
      {"flying-robot-frame", 1},
      {"iron-gear-wheel", 4},
      {"electronic-circuit", 6}
    },
    result = "logistic-robot"
  },
  {
    type = "recipe",
    name = "construction-robot",
    enabled = false,
    ingredients =
    {
      {"flying-robot-frame", 1},
      {"iron-gear-wheel", 4},
      {"electronic-circuit", 2}
    },
    result = "construction-robot"
  },
  {
    type = "recipe",
    name = "rocket-fuel",
    energy_required = 20,
    enabled = false,
    category = "crafting-with-fluid",
    ingredients =
    {
      {"solid-fuel", 20}
    },
    results =
    {
      {
        name = "rocket-fuel",
        amount = 16
      }
    }
  },
  {
    type = "recipe",
    name = "low-density-structure",
    category = "crafting",
    normal =
    {
      energy_required = 10,
      enabled = false,
      ingredients =
      {
        {"steel-plate", 2},
        {"copper-plate", 20},
        {"plastic-bar", 5}
      },
		results =
		{
		  {
			name = "low-density-structure",
			amount = 10
		  }
		}
    },
    expensive =
    {
      energy_required = 20,
      enabled = false,
      ingredients =
      {
        {"steel-plate", 2},
        {"copper-plate", 20},
        {"plastic-bar", 30}
      },
		results =
		{
		  {
			name = "low-density-structure",
			amount = 10
		  }
		}
    }
  },
  {
    type = "recipe",
    name = "uranium-processing",
    energy_required = 6,
    enabled = false,
    category = "centrifuging",
    ingredients = {{"uranium-ore", 10}},
    icon = "__base__/graphics/icons/uranium-processing.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "raw-material",
    order = "k[uranium-processing]", -- k ordering so it shows up after explosives which is j ordering
    results =
    {
      {
        name = "uranium-235",
        probability = 0.01,
        amount = 2
      },
      {
        name = "uranium-238",
        probability = 0.99,
        amount = 4
      }
    }
  },
  {
    type = "recipe",
    name = "basic-oil-processing",
    category = "oil-processing",
    enabled = false,
    energy_required = 2,
    ingredients =
    {
      {type="fluid", name="crude-oil", amount=100, fluidbox_index = 2}
    },
    results=
    {
      {type="fluid", name="petroleum-gas", amount=100, fluidbox_index = 3}
    },
    icon = "__base__/graphics/icons/fluid/basic-oil-processing.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "fluid-recipes",
    order = "a[oil-processing]-a[basic-oil-processing]",
    main_product = ""
  },
  {
    type = "recipe",
    name = "advanced-oil-processing",
    category = "oil-processing",
    enabled = false,
    energy_required = 5,
    ingredients =
    {
      {type="fluid", name="crude-oil", amount=100}
    },
    results=
    {
      {type="fluid", name="heavy-oil", amount=10},
      {type="fluid", name="light-oil", amount=40},
      {type="fluid", name="petroleum-gas", amount=60}
    },
    icon = "__base__/graphics/icons/fluid/advanced-oil-processing.png",
    icon_size = 32,
    subgroup = "fluid-recipes",
    order = "a[oil-processing]-b[advanced-oil-processing]"
  },
  {
    type = "recipe",
    name = "heavy-oil-cracking",
    category = "chemistry",
    enabled = false,
    energy_required = 3,
    ingredients =
    {
      {type="fluid", name="heavy-oil", amount=40}
    },
    results=
    {
      {type="fluid", name="light-oil", amount=30}
    },
    main_product= "",
    icon = "__base__/graphics/icons/fluid/heavy-oil-cracking.png",
    icon_size = 32,
    subgroup = "fluid-recipes",
    order = "b[fluid-chemistry]-a[heavy-oil-cracking]",
    crafting_machine_tint =
    {
      primary = {r = 0.290, g = 0.027, b = 0.000, a = 0.000}, -- #49060000
      secondary = {r = 0.722, g = 0.465, b = 0.190, a = 0.000}, -- #b8763000
      tertiary = {r = 0.870, g = 0.365, b = 0.000, a = 0.000}, -- #dd5d0000
    }
  },
  {
    type = "recipe",
    name = "light-oil-cracking",
    category = "chemistry",
    enabled = false,
    energy_required = 3,
    ingredients =
    {
      {type="fluid", name="light-oil", amount=20}
    },
    results=
    {
      {type="fluid", name="petroleum-gas", amount=20}
    },
    main_product= "",
    icon = "__base__/graphics/icons/fluid/light-oil-cracking.png",
    icon_size = 32,
    subgroup = "fluid-recipes",
    order = "b[fluid-chemistry]-b[light-oil-cracking]",
    crafting_machine_tint =
    {
      primary = {r = 0.785, g = 0.406, b = 0.000, a = 0.000}, -- #c8670000
      secondary = {r = 0.795, g = 0.805, b = 0.605, a = 0.000}, -- #cacd9a00
      tertiary = {r = 0.835, g = 0.551, b = 0.000, a = 0.000}, -- #d48c0000
    }
  },
  {
    type = "recipe",
    name = "sulfur",
    category = "chemistry",
    energy_required = 1,
    enabled = false,
    ingredients =
    {
      {type="fluid", name="petroleum-gas", amount=10}
    },
    results=
    {
      {type="item", name="sulfur", amount=4}
    },
    crafting_machine_tint =
    {
      primary = {r = 1.000, g = 0.659, b = 0.000, a = 0.000}, -- #ffa70000
      secondary = {r = 0.812, g = 1.000, b = 0.000, a = 0.000}, -- #cfff0000
      tertiary = {r = 0.960, g = 0.806, b = 0.000, a = 0.000}, -- #f4cd0000
    }
  },
  {
    type = "recipe",
    name = "sulfuric-acid",
    category = "chemistry",
    energy_required = 1,
    enabled = false,
    ingredients =
    {
      {type="item", name="sulfur", amount=5}
    },
    results=
    {
      {type="fluid", name="sulfuric-acid", amount=50}
    },
    subgroup = "fluid-recipes",
    crafting_machine_tint =
    {
      primary = {r = 0.875, g = 0.735, b = 0.000, a = 0.000}, -- #dfbb0000
      secondary = {r = 0.103, g = 0.940, b = 0.000, a = 0.000}, -- #1aef0000
      tertiary = {r = 0.564, g = 0.795, b = 0.000, a = 0.000}, -- #8fca0000
    }
  },
  {
    type = "recipe",
    name = "lubricant",
    category = "chemistry",
    enabled = false,
    energy_required = 1,
    ingredients =
    {
      {type="fluid", name="petroleum-gas", amount=10}
    },
    results=
    {
      {type="fluid", name="lubricant", amount=10}
    },
    subgroup = "fluid-recipes",
    crafting_machine_tint =
    {
      primary = {r = 0.268, g = 0.723, b = 0.223, a = 1.000}, -- #44b838ff
      secondary = {r = 0.432, g = 0.793, b = 0.386, a = 1.000}, -- #6eca62ff
      tertiary = {r = 0.647, g = 0.471, b = 0.396, a = 1.000}, -- #a57865ff
      quaternary = {r = 1.000, g = 0.395, b = 0.127, a = 1.000}, -- #ff6420ff
    }
  },
  {
    type = "recipe",
    name = "plastic-bar",
    category = "chemistry",
    energy_required = 1,
    enabled = false,
    ingredients =
    {
      {type="fluid", name="petroleum-gas", amount=10},
      {type="item", name="coal", amount=1}
    },
    results=
    {
      {type="item", name="plastic-bar", amount=4}
    },
    requester_paste_multiplier = 4,
    crafting_machine_tint =
    {
      primary = {r = 0.498, g = 0.498, b = 0.498, a = 0.000}, -- #7f7f7f00
      secondary = {r = 0.400, g = 0.400, b = 0.400, a = 0.000}, -- #66666600
      tertiary = {r = 0.305, g = 0.305, b = 0.305, a = 0.000}, -- #4d4d4d00
    }
  },
  {
    type = "recipe",
    name = "empty-barrel",
    category = "crafting",
    energy_required = 1,
    subgroup = "intermediate-product",
    enabled = false,
    ingredients =
    {
      {type="item", name="steel-plate", amount=1},
    },
    results=
    {
      {type="item", name="empty-barrel", amount=2}
    },
  }
})