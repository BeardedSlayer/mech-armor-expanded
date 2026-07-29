-- =========================================
-- БРОНЯ MK2
-- =========================================
local mech2 = table.deepcopy(data.raw["armor"]["mech-armor"])
mech2.name = "mech-armor-mk2"
mech2.equipment_grid = "mech-armor-mk2-equipment-grid"
mech2.inventory_size_bonus = 60
 mech2.resistances = {
  { type = "physical", decrease = 15, percent = 50 },
  { type = "explosion", decrease = 20, percent = 60 },
  { type = "acid", decrease = 15, percent = 50 },
  { type = "fire", decrease = 20, percent = 70 },
  { type = "electric", decrease = 15, percent = 70 },
  { type = "impact", decrease = 20, percent = 60 },
}

-- =========================================
-- БРОНЯ MK3
-- =========================================
local mech3 = table.deepcopy(data.raw["armor"]["mech-armor"])
mech3.name = "mech-armor-mk3"
mech3.equipment_grid = "mech-armor-mk3-equipment-grid"
mech3.inventory_size_bonus = 100
mech3.resistances = {
  { type = "physical", decrease = 30, percent = 70 },
  { type = "explosion", decrease = 50, percent = 75 },
  { type = "acid", decrease = 30, percent = 75 },
  { type = "fire", decrease = 50, percent = 80 },
  { type = "electric", decrease = 30, percent = 80 },
  { type = "impact", decrease = 40, percent = 80 },
}

if data.raw["damage-type"]["cold"] then
  table.insert(mech3.resistances, { type = "cold", decrease = 30, percent = 85 })
end

-- =========================================
-- БРОНЯ MK4 (Абсолют)
-- =========================================
local mech4 = table.deepcopy(data.raw["armor"]["mech-armor"])
mech4.name = "mech-armor-mk4"
mech4.equipment_grid = "mech-armor-mk4-equipment-grid"
mech4.inventory_size_bonus = 150
mech4.resistances = {
  { type = "physical", decrease = 50, percent = 95 },
  { type = "explosion", decrease = 100, percent = 95 },
  { type = "acid", decrease = 50, percent = 95 },
  { type = "fire", decrease = 100, percent = 95 },
  { type = "electric", decrease = 95, percent = 95 },
  { type = "impact", decrease = 80, percent = 95 },
}

if data.raw["damage-type"]["cold"] then
  table.insert(mech4.resistances, { type = "cold", decrease = 50, percent = 95 })
end

data:extend({mech2, mech3, mech4})