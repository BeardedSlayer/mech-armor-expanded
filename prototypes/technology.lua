-- =========================================
-- ТЕХНОЛОГИЯ: MECH ARMOR MK2
-- =========================================
local tech_mech2 = {
  type = "technology",
  name = "mech-armor-mk2",
  icon = "__space-age__/graphics/technology/mech-armor.png",
  icon_size = 256,
  icon_mipmaps = 4,
  effects = { { type = "unlock-recipe", recipe = "mech-armor-mk2" } },
  prerequisites = {"mech-armor", "electromagnetic-science-pack"},
  unit = {
    count = 1500,
    ingredients = {
      {"automation-science-pack", 1},
      {"logistic-science-pack", 1},
      {"chemical-science-pack", 1},
      {"military-science-pack", 1},
      {"production-science-pack", 1},
      {"space-science-pack", 1},
      {"metallurgic-science-pack", 1},
      {"utility-science-pack", 1},
      {"agricultural-science-pack", 1},
      {"electromagnetic-science-pack", 1}
    },
    time = 45
  }
}

-- =========================================
-- ТЕХНОЛОГИЯ: MECH ARMOR MK3
-- =========================================
local tech_mech3 = {
  type = "technology",
  name = "mech-armor-mk3",
  icon = "__space-age__/graphics/technology/mech-armor.png",
  icon_size = 256,
  icon_mipmaps = 4,
  effects = { { type = "unlock-recipe", recipe = "mech-armor-mk3" } },
  prerequisites = {"mech-armor-mk2", "cryogenic-science-pack", "pamk3-pamk3"},
  unit = {
    count = 2500,
    ingredients = {
      {"automation-science-pack", 1},
      {"logistic-science-pack", 1},
      {"chemical-science-pack", 1},
      {"military-science-pack", 1},
      {"production-science-pack", 1},
      {"space-science-pack", 1},
      {"metallurgic-science-pack", 1},
      {"utility-science-pack", 1},
      {"electromagnetic-science-pack", 1},
      {"agricultural-science-pack", 1},
      {"cryogenic-science-pack", 1}
    },
    time = 45
  }
}

-- =========================================
-- ТЕХНОЛОГИЯ: MECH ARMOR MK4
-- =========================================
local tech_mech4 = {
  type = "technology",
  name = "mech-armor-mk4",
  icon = "__space-age__/graphics/technology/mech-armor.png",
  icon_size = 256,
  icon_mipmaps = 4,
  effects = { { type = "unlock-recipe", recipe = "mech-armor-mk4" } },
  prerequisites = {"mech-armor-mk3", "promethium-science-pack", "pamk3-pamk4"},
  unit = {
    count = 5000,
    ingredients = {
      {"automation-science-pack", 1},
      {"logistic-science-pack", 1},
      {"chemical-science-pack", 1},
      {"military-science-pack", 1},
      {"production-science-pack", 1},
      {"space-science-pack", 1},
      {"metallurgic-science-pack", 1},
      {"utility-science-pack", 1},
      {"electromagnetic-science-pack", 1},
      {"cryogenic-science-pack", 1},
      {"agricultural-science-pack", 1},
      {"promethium-science-pack", 1}
    },
    time = 60
  }
}

data:extend({tech_mech2, tech_mech3, tech_mech4})