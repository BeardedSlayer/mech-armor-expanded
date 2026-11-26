-- Other mods change the base armor after data.lua: Krastorio 2 Spaced Out adds radiation resistance in data-updates,
-- Dea Dia adds the "flying" equipment category to its grid. Carry those changes over to the tiers.
local base_armor = data.raw["armor"]["mech-armor"] or data.raw["armor"]["power-armor-mk2"]
local base_grid = base_armor and base_armor.equipment_grid and data.raw["equipment-grid"][base_armor.equipment_grid]

for _, name in pairs({"mech-armor-mk2", "mech-armor-mk3", "mech-armor-mk4"}) do
  local armor = data.raw["armor"][name]
  if armor and base_armor then
    armor.resistances = armor.resistances or {}
    local has_type = {}
    for _, resistance in pairs(armor.resistances) do
      has_type[resistance.type] = true
    end
    for _, resistance in pairs(base_armor.resistances or {}) do
      if not has_type[resistance.type] then
        table.insert(armor.resistances, table.deepcopy(resistance))
        has_type[resistance.type] = true
      end
    end

    local grid = armor.equipment_grid and data.raw["equipment-grid"][armor.equipment_grid]
    if grid and base_grid then
      local has_category = {}
      for _, category in pairs(grid.equipment_categories) do
        has_category[category] = true
      end
      for _, category in pairs(base_grid.equipment_categories or {}) do
        if not has_category[category] then
          table.insert(grid.equipment_categories, category)
          has_category[category] = true
        end
      end
    end
  end
end
