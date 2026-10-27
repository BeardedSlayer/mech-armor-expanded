local has_space_age = mods["space-age"] ~= nil
local tech_icon = has_space_age and "__space-age__/graphics/technology/mech-armor.png" or "__base__/graphics/technology/power-armor-mk2.png"

local tech_mech2, tech_mech3, tech_mech4

if has_space_age then
  -- =========================================
  -- ВЕТКА ТЕХНОЛОГИЙ SPACE AGE
  -- =========================================
  tech_mech2 = {
    type = "technology",
    name = "mech-armor-mk2",
    icon = tech_icon,
    icon_size = 256,
    effects = { { type = "unlock-recipe", recipe = "mech-armor-mk2" } },
    prerequisites = {"mech-armor"},
    unit = {
      count = 2500,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"military-science-pack", 1},
        {"chemical-science-pack", 1},
        {"production-science-pack", 1},
        {"utility-science-pack", 1},
        {"space-science-pack", 1},
        {"electromagnetic-science-pack", 1}
      },
      time = 60
    }
  }

  tech_mech3 = {
    type = "technology",
    name = "mech-armor-mk3",
    icon = tech_icon,
    icon_size = 256,
    effects = { { type = "unlock-recipe", recipe = "mech-armor-mk3" } },
    prerequisites = {"mech-armor-mk2", "quantum-processor", "fission-reactor-equipment"},
    unit = {
      count = 5000,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"military-science-pack", 1},
        {"chemical-science-pack", 1},
        {"production-science-pack", 1},
        {"utility-science-pack", 1},
        {"space-science-pack", 1},
        {"metallurgic-science-pack", 1},
        {"agricultural-science-pack", 1},
        {"electromagnetic-science-pack", 1},
        {"cryogenic-science-pack", 1}
      },
      time = 60
    }
  }

  tech_mech4 = {
    type = "technology",
    name = "mech-armor-mk4",
    icon = tech_icon,
    icon_size = 256,
    effects = { { type = "unlock-recipe", recipe = "mech-armor-mk4" } },
    prerequisites = {"mech-armor-mk3", "fusion-reactor-equipment", "promethium-science-pack"},
    unit = {
      count = 10000,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"military-science-pack", 1},
        {"chemical-science-pack", 1},
        {"production-science-pack", 1},
        {"utility-science-pack", 1},
        {"space-science-pack", 1},
        {"metallurgic-science-pack", 1},
        {"agricultural-science-pack", 1},
        {"electromagnetic-science-pack", 1},
        {"cryogenic-science-pack", 1},
        {"promethium-science-pack", 1}
      },
      time = 60
    }
  }

  if mods["Power Armor MK3"] then
    tech_mech2.unit.count = 1500
    table.insert(tech_mech2.unit.ingredients, {"metallurgic-science-pack", 1})
    table.insert(tech_mech2.unit.ingredients, {"agricultural-science-pack", 1})

    tech_mech3.unit.count = 2500
    if data.raw.technology["pamk3-pamk3"] then
      table.insert(tech_mech3.prerequisites, "pamk3-pamk3")
    end

    tech_mech4.unit.count = 5000
    if data.raw.technology["pamk3-pamk4"] then
      table.insert(tech_mech4.prerequisites, "pamk3-pamk4")
    end
  end

  local shattered_planet_tech = "promethium_plate"
  if data.raw.technology[shattered_planet_tech] then
    table.insert(tech_mech4.prerequisites, shattered_planet_tech)
  end

else
  -- =========================================
  -- ВЕТКА ТЕХНОЛОГИЙ БЕЗ SPACE AGE
  -- =========================================
  tech_mech2 = {
    type = "technology",
    name = "mech-armor-mk2",
    localised_description = {"technology-description.mech-armor-mk2-base"},
    icon = tech_icon,
    icon_size = 256,
    effects = { { type = "unlock-recipe", recipe = "mech-armor-mk2" } },
    prerequisites = {"power-armor-mk2", "speed-module-2", "electric-engine"},
    unit = {
      count = 1000,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"military-science-pack", 1},
        {"chemical-science-pack", 1},
        {"production-science-pack", 1},
        {"utility-science-pack", 1}
      },
      time = 45
    }
  }

  tech_mech3 = {
    type = "technology",
    name = "mech-armor-mk3",
    localised_description = {"technology-description.mech-armor-mk3-base"},
    icon = tech_icon,
    icon_size = 256,
    effects = { { type = "unlock-recipe", recipe = "mech-armor-mk3" } },
    prerequisites = {"mech-armor-mk2", "fission-reactor-equipment", "speed-module-3", "efficiency-module-3", "space-science-pack"},
    unit = {
      count = 2500,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"military-science-pack", 1},
        {"chemical-science-pack", 1},
        {"production-science-pack", 1},
        {"utility-science-pack", 1},
        {"space-science-pack", 1}
      },
      time = 60
    }
  }

  tech_mech4 = {
    type = "technology",
    name = "mech-armor-mk4",
    localised_description = {"technology-description.mech-armor-mk4-base"},
    icon = tech_icon,
    icon_size = 256,
    effects = { { type = "unlock-recipe", recipe = "mech-armor-mk4" } },
    prerequisites = {"mech-armor-mk3", "energy-shield-mk2-equipment", "exoskeleton-equipment"},
    unit = {
      count = 5000,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"military-science-pack", 1},
        {"chemical-science-pack", 1},
        {"production-science-pack", 1},
        {"utility-science-pack", 1},
        {"space-science-pack", 1}
      },
      time = 60
    }
  }

  if mods["Power Armor MK3"] then
    if data.raw.technology["pamk3-pamk3"] then
      table.insert(tech_mech3.prerequisites, "pamk3-pamk3")
    end
    if data.raw.technology["pamk3-pamk4"] then
      table.insert(tech_mech4.prerequisites, "pamk3-pamk4")
    end
  end
end

data:extend({tech_mech2, tech_mech3, tech_mech4})