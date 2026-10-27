-- Определение базового прототипа брони
local has_space_age = mods["space-age"] ~= nil
local base_armor_name = data.raw["armor"]["mech-armor"] and "mech-armor" or "power-armor-mk2"
local base_armor = data.raw["armor"][base_armor_name]

-- Вспомогательная функция создания брони
local function create_mech_tier(name, grid, inv_bonus, resistances)
  local armor = table.deepcopy(base_armor)
  armor.name = name
  armor.equipment_grid = grid
  armor.inventory_size_bonus = inv_bonus
  armor.resistances = resistances

  -- Если игра запущена без Space Age
  if not has_space_age then
    armor.localised_description = {"item-description." .. name .. "-base"}
  end

  return armor
end

-- =========================================
-- БРОНЯ MK2
-- =========================================
local res_mk2 = {
  { type = "physical", decrease = 15, percent = 50 },
  { type = "explosion", decrease = 20, percent = 60 },
  { type = "acid", decrease = 15, percent = 50 },
  { type = "fire", decrease = 20, percent = 70 },
  { type = "electric", decrease = 15, percent = 70 },
  { type = "impact", decrease = 20, percent = 60 },
  { type = "poison", decrease = 15, percent = 50 },
}
local mech2 = create_mech_tier("mech-armor-mk2", "mech-armor-mk2-equipment-grid", 60, res_mk2)

-- =========================================
-- БРОНЯ MK3
-- =========================================
local res_mk3 = {
  { type = "physical", decrease = 30, percent = 70 },
  { type = "explosion", decrease = 50, percent = 75 },
  { type = "acid", decrease = 30, percent = 75 },
  { type = "fire", decrease = 50, percent = 80 },
  { type = "electric", decrease = 30, percent = 80 },
  { type = "impact", decrease = 40, percent = 80 },
  { type = "poison", decrease = 30, percent = 75 },
}
if data.raw["damage-type"]["cold"] then
  table.insert(res_mk3, { type = "cold", decrease = 30, percent = 85 })
end
local mech3 = create_mech_tier("mech-armor-mk3", "mech-armor-mk3-equipment-grid", 100, res_mk3)

-- =========================================
-- БРОНЯ MK4
-- =========================================
local res_mk4 = {
  { type = "physical", decrease = 50, percent = 95 },
  { type = "explosion", decrease = 100, percent = 95 },
  { type = "acid", decrease = 50, percent = 95 },
  { type = "fire", decrease = 100, percent = 95 },
  { type = "electric", decrease = 95, percent = 95 },
  { type = "impact", decrease = 80, percent = 95 },
  { type = "poison", decrease = 50, percent = 95 },
}
if data.raw["damage-type"]["cold"] then
  table.insert(res_mk4, { type = "cold", decrease = 50, percent = 95 })
end
local mech4 = create_mech_tier("mech-armor-mk4", "mech-armor-mk4-equipment-grid", 150, res_mk4)

data:extend({mech2, mech3, mech4})

-- Привязка внешнего вида брони к анимациям персонажа
if data.raw["character"] and data.raw["character"]["character"] and data.raw["character"]["character"].animations then
  for _, anim in pairs(data.raw["character"]["character"].animations) do
    if anim.armors then
      for _, armor_name in pairs(anim.armors) do
        if armor_name == base_armor_name then
          table.insert(anim.armors, "mech-armor-mk2")
          table.insert(anim.armors, "mech-armor-mk3")
          table.insert(anim.armors, "mech-armor-mk4")
          break
        end
      end
    end
  end
end