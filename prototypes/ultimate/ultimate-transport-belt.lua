local Belt = require("ultimate-transport-belt-pictures")

local ubt = table.deepcopy(data.raw["transport-belt"]["transport-belt"])
ubt.name = "ultimate-transport-belt"
ubt.next_upgrade = nil
ubt.icon = "__EasyMod__/graphics/ultimate-transport-belt/icon-" .. ubt.name .. ".png"
ubt.icon_size = 64
ubt.icon_mipmaps = 4
ubt.minable.result = ubt.name
ubt.max_health = 190
ubt.speed = 0.5
ubt.belt_animation_set = Belt.ultimate_transport_belt_set

data:extend({
  ubt,
  {
    type = "item",
    name = "ultimate-transport-belt",
    source = "transport-belt",
    icon = "__EasyMod__/graphics/ultimate-transport-belt/icon-ultimate-transport-belt.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "mx-transport",
    order = "a[transport-belt]-c[express-transport-belt]",
    place_result = "ultimate-transport-belt",
    stack_size = 2000
  },
  {
		type = "recipe",
		name = "ultimate-transport-belt",
		enabled = "false",
		energy_required = 1,
		ingredients =
		{
		  {"iron-plate", 1},
		  {"steel-plate", 1}
		},
		result = "ultimate-transport-belt"
  },
  
  {
    type = "technology",
    name = "ultimate-logistics",
    icon = "__EasyMod__/graphics/technology/logistics.png",
    icon_size = 256,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "ultimate-transport-belt"
      }
    },
    prerequisites = {"logistics-3"},
    unit =
    {
      count = 50,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"production-science-pack", 1},
        {"utility-science-pack", 1}
      },
      time = 5
    },
    order = "a-f-c",
  }
});