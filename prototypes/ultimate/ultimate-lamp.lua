data:extend({
  {
    type = "item",
    name = "ultimate-lamp",
    icon = "__base__/graphics/icons/small-lamp.png",
    flags = {"goes-to-quickbar"},
    --subgroup = "circuit-network",
    subgroup = "mx-electric",
    icon_size = 32,
    order = "a-d",
    place_result = "ultimate-lamp",
    stack_size = 50
  },

--Recipe
  {
    type = "recipe",
    name = "ultimate-lamp",
    enabled = "false",
    ingredients =
    {
      {"small-lamp", 1},
      {"iron-plate", 1}
    },
    result = "ultimate-lamp"
  },

--Entity
  {
    type = "lamp",
    name = "ultimate-lamp",
    icon = "__base__/graphics/icons/small-lamp.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "ultimate-lamp"},
    max_health = 100,
    icon_size = 32,
    corpse = "small-remnants",
    collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input"
    },
    energy_usage_per_tick = "100W",
    light = {intensity = 0.9, size = 500, color = {r=1.0, g=1.0, b=1.0}},
    light_when_colored = {intensity = 1, size = 500, color = {r=1.0, g=1.0, b=1.0}},
    glow_size = 6,
    glow_color_intensity = 0.135,
    picture_off =
    {
      filename = "__base__/graphics/entity/small-lamp/light-off.png",
      priority = "high",
      width = 67,
      height = 58,
      frame_count = 1,
      axially_symmetrical = false,
      direction_count = 1,
      shift = {-0.015625, 0.15625},
    },
    picture_on =
    {
      filename = "__base__/graphics/entity/small-lamp/light-on-patch.png",
      priority = "high",
      width = 62,
      height = 62,
      frame_count = 1,
      axially_symmetrical = false,
      direction_count = 1,
      shift = {-0.03125, -0.03125},
    },
  },
  
  {
    type = "technology",
    name = "optics-9",
    icon = "__base__/graphics/technology/optics.png",
    icon_size = 128,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "ultimate-lamp"
      }
    },
    unit =
    {
      count = 10,
      ingredients = {{"science-pack-1", 1}},
      time = 15
    },
    order = "a-h-a",
  }
})
