-- =========================================
-- БРОНЯ MK2
-- =========================================
local mech2 = table.deepcopy(data.raw["armor"]["mech-armor"])
mech2.name = "mech-armor-mk2"
mech2.equipment_grid = "mech-armor-mk2-equipment-grid"
mech2.inventory_size_bonus = 60

-- =========================================
-- БРОНЯ MK3
-- =========================================
local mech3 = table.deepcopy(data.raw["armor"]["mech-armor"])
mech3.name = "mech-armor-mk3"
mech3.equipment_grid = "mech-armor-mk3-equipment-grid"
mech3.inventory_size_bonus = 100
mech3.resistances = {
  { type = "physical", decrease = 15, percent = 50 },
  { type = "acid", decrease = 15, percent = 60 },
  { type = "explosion", decrease = 20, percent = 60 },
  { type = "fire", decrease = 0, percent = 80 }
}

-- =========================================
-- БРОНЯ MK4 (Абсолют)
-- =========================================
local mech4 = table.deepcopy(data.raw["armor"]["mech-armor"])
mech4.name = "mech-armor-mk4"
mech4.equipment_grid = "mech-armor-mk4-equipment-grid"
mech4.inventory_size_bonus = 150
mech4.resistances = {
  { type = "physical", decrease = 30, percent = 70 },
  { type = "acid", decrease = 30, percent = 80 },
  { type = "explosion", decrease = 50, percent = 90 },
  { type = "fire", decrease = 0, percent = 100 }
}

data:extend({mech2, mech3, mech4})