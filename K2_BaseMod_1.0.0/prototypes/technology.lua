data:extend(
{
  {
    type = "technology",
    name = "advanced-material-processing-2",
    icon_size = 128,
    icon = "__base__/graphics/technology/advanced-material-processing.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "electric-furnace"
      },
      {
        type = "unlock-recipe",
        recipe = "production-science-pack"
      }
    },
    unit =
    {
      count = 150,
      ingredients =
      {
        {"automation-science-pack", 1},
      },
      time = 30
    },
    order = "c-c-b"
  },
  {
    type = "technology",
    name = "automation",
    icon_size = 128,
    icon = "__base__/graphics/technology/automation.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "assembling-machine-1"
      },
      {
        type = "unlock-recipe",
        recipe = "close-inserter"
      },
      {
        type = "unlock-recipe",
        recipe = "long-handed-inserter"
      }
    },
    unit =
    {
      count = 10,
      ingredients = {{"automation-science-pack", 1}},
      time = 10
    },
    order = "a-b-a",
  },
  {
    type = "technology",
    name = "construction-robotics",
    icon_size = 128,
    icon = "__base__/graphics/technology/construction-robotics.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "roboport"
      },
      {
        type = "unlock-recipe",
        recipe = "flying-robot-frame"
      },
      {
        type = "unlock-recipe",
        recipe = "logistic-chest-requester"
      },
      {
        type = "unlock-recipe",
        recipe = "logistic-chest-active-provider"
      },
      {
        type = "unlock-recipe",
        recipe = "logistic-chest-storage"
      },
      {
        type = "unlock-recipe",
        recipe = "construction-robot"
      },
      {
        type = "unlock-recipe",
        recipe = "logistic-robot"
      },
      {
        type = "ghost-time-to-live",
        modifier = 60 * 60 * 60
      }
    },
    unit =
    {
      count = 10,
      ingredients =
      {
        {"automation-science-pack", 1},
      },
      time = 30
    },
    order = "c-k-a",
  },
  {
    type = "technology",
    name = "modules",
    icon_size = 128,
    icon = "__base__/graphics/technology/module.png",
    prerequisites = {"automation"},
    unit =
    {
      count = 100,
      ingredients =
      {
        {"automation-science-pack", 1}
      },
      time = 30
    },
    order = "i-a"
  },
  {
    type = "technology",
    name = "productivity-module",
    icon_size = 128,
    icon = "__base__/graphics/technology/productivity-module-1.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "productivity-module"
      }
    },
    prerequisites = {"modules"},
    unit =
    {
      count = 50,
      ingredients =
      {
        {"automation-science-pack", 1}
      },
      time = 30
    },
    upgrade = true,
    order = "i-e-a"
  },
  {
    type = "technology",
    name = "productivity-module-2",
    icon_size = 128,
    icon = "__base__/graphics/technology/productivity-module-2.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "productivity-module-2"
      }
    },
    prerequisites = {"productivity-module"},
    unit =
    {
      count = 75,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1}
      },
      time = 30
    },
    upgrade = true,
    order = "i-e-b"
  },
  {
    type = "technology",
    name = "productivity-module-3",
    icon_size = 128,
    icon = "__base__/graphics/technology/productivity-module-3.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "productivity-module-3"
      }
    },
    prerequisites = {"productivity-module-2"},
    unit =
    {
      count = 100,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1}
      },
      time = 60
    },
    upgrade = true,
    order = "i-e-c"
  },
})
