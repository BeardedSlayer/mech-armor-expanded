-- =========================================
-- РЕЦЕПТ MECH ARMOR MK2
-- =========================================
local recipe_mech2 = {
  type = "recipe",
  name = "mech-armor-mk2",
  enabled = false,
  energy_required = 30,
  category = "electromagnetics",
  surface_conditions = {
  { property = "magnetic-field", min = 99}
  },

  ingredients = {
    {type = "item", name = "mech-armor", amount = 1},
    {type = "item", name = "processing-unit", amount = 150},
    {type = "item", name = "low-density-structure", amount = 100},
    {type = "item", name = "electric-engine-unit", amount = 100},
    {type = "item", name = "tungsten-carbide", amount = 75}
  },
  results = {{type = "item", name = "mech-armor-mk2", amount = 1}}
}

-- =========================================
-- РЕЦЕПТ MECH ARMOR MK3
-- =========================================
local recipe_mech3 = {
  type = "recipe",
  name = "mech-armor-mk3",
  enabled = false,
  energy_required = 60,
  category = "cryogenics",
  surface_conditions = {
    { property = "gravity", min = 0, max = 0 }
  },
  ingredients = {
    {type = "item", name = "mech-armor-mk2", amount = 1},
    {type = "item", name = "quantum-processor", amount = 50},
    {type = "item", name = "tungsten-plate", amount = 150},
    {type = "item", name = "supercapacitor", amount = 100},
    {type = "item", name = "fission-reactor-equipment", amount = 2}
  },
  results = {{type = "item", name = "mech-armor-mk3", amount = 1}}
}

-- =========================================
-- РЕЦЕПТ MECH ARMOR MK4
-- =========================================
local recipe_mech4 = {
  type = "recipe",
  name = "mech-armor-mk4",
  enabled = false,
  energy_required = 120,
  category = "cryogenics",
  surface_conditions = {
    { property = "gravity", min = 0, max = 0 }
  },
  ingredients = {
    {type = "item", name = "mech-armor-mk3", amount = 1},
    {type = "item", name = "quantum-processor", amount = 200},
    {type = "item", name = "carbon-fiber", amount = 200},
    {type = "item", name = "fusion-reactor-equipment", amount = 5},
    {type = "item", name = "promethium-science-pack", amount = 5},
    {type = "item", name = "promethium-asteroid-chunk", amount = 100}
  },
  results = {{type = "item", name = "mech-armor-mk4", amount = 1}}
}
-- Интеграция с модом O Shattered Planet
if data.raw.item["ske_prometheum_plate"] then
  for i, ingredient in ipairs(recipe_mech4.ingredients) do
    if ingredient.name == "promethium-asteroid-chunk" then
      recipe_mech4.ingredients[i] = {type = "item", name = "ske_prometheum_plate", amount = 100}
      break
    end
  end
end

data:extend({recipe_mech2, recipe_mech3, recipe_mech4})