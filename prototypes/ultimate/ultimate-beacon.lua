data:extend({
  { -- twBeacon7
    type = "beacon",
    name = "ultimate-beacon",
    icon = "__EasyMod__/graphics/ultimate-beacon/ultimate-beacon-icon.png",
	  icon_size = 32,
    flags = {"placeable-player", "player-creation"},
    minable = {mining_time = 1, result = "ultimate-beacon"},
    max_health = 1000,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-0.2, -0.2}, {0.2, 0.2}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    allowed_effects = {"consumption", "speed", "pollution", "productivity"},
    base_picture =
    {
      filename = "__EasyMod__/graphics/ultimate-beacon/beacon-base.png",
      width = 116,
      height = 93,
      shift = { 0.34375/3, 0.046875/3},
	  scale = 0.33
    },
    animation =
    {
      filename = "__EasyMod__/graphics/ultimate-beacon/beacon-antenna.png",
      width = 54,
      height = 50,
      line_length = 8,
      frame_count = 32,
      shift = { -0.03125/3, -1.71875/3},
      animation_speed = 0.5,
	  scale = 0.33
    },
    animation_shadow =
    {
      filename = "__EasyMod__/graphics/ultimate-beacon/beacon-antenna-shadow.png",
      width = 63,
      height = 49,
      line_length = 8,
      frame_count = 32,
      shift = { 3.140625/3, 0.484375/3},
      animation_speed = 0.5,
	  scale = 0.33
    },
    radius_visualisation_picture =
    {
      filename = "__EasyMod__/graphics/ultimate-beacon/beacon-radius-visualization.png",
      width = 12,
      height = 12
    },
    supply_area_distance = 20,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input"
    },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    energy_usage = "600kW",
    distribution_effectivity = 2.0,
    module_specification =
    {
      module_slots = 10,
      module_info_icon_shift = {0, 0.5},
      module_info_multi_row_initial_height_modifier = -0.3
    }
  },
  {
    type = "item",
    name = "ultimate-beacon",
    icon = "__EasyMod__/graphics/ultimate-beacon/ultimate-beacon-icon.png",
    flags = {"goes-to-quickbar"},
    --subgroup = "module",
    subgroup = "mx-enhance",
    icon_size = 32,
    order = "a-b",
    place_result = "ultimate-beacon",
    stack_size = 50
  },
  
  {
    type = "recipe",
    name = "ultimate-beacon",
    enabled = false,
    energy_required = 15,
    ingredients =
    {
      {"electronic-circuit", 20},
      {"advanced-circuit", 20},
      {"steel-plate", 10},
      {"copper-cable", 10}
    },
    result = "ultimate-beacon"
  },
  
  {
    type = "technology",
    name = "effect-transmission-2",
    icon = "__base__/graphics/technology/effect-transmission.png",
    icon_size = 128,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "ultimate-beacon"
      }
    },
    prerequisites = {"effect-transmission"},
    unit =
    {
      count = 15,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
        {"high-tech-science-pack", 1}
      },
      time = 10
    },
    order = "i-i"
  }
})
