ultimate_belt_horizontal =
  {
    filename = "__EasyMod__/graphics/ultimate-transport-belt/ultimate-transport-belt.png",
    priority = "extra-high",
    width = 40,
    height = 40,
    frame_count = 32
  }
ultimate_belt_vertical =
  {
    filename = "__EasyMod__/graphics/ultimate-transport-belt/ultimate-transport-belt.png",
    priority = "extra-high",
    width = 40,
    height = 40,
    frame_count = 32,
    y = 40,
  }
ultimate_belt_ending_top =
  {
    filename = "__EasyMod__/graphics/ultimate-transport-belt/ultimate-transport-belt.png",
    priority = "extra-high",
    width = 40,
    height = 40,
    frame_count = 32,
    y = 80
  }
ultimate_belt_ending_bottom =
  {
    filename = "__EasyMod__/graphics/ultimate-transport-belt/ultimate-transport-belt.png",
    priority = "extra-high",
    width = 40,
    height = 40,
    frame_count = 32,
    y = 120
  }
ultimate_belt_ending_side =
  {
    filename = "__EasyMod__/graphics/ultimate-transport-belt/ultimate-transport-belt.png",
    priority = "extra-high",
    width = 40,
    height = 40,
    frame_count = 32,
    y = 160
  }
ultimate_belt_starting_top =
  {
    filename = "__EasyMod__/graphics/ultimate-transport-belt/ultimate-transport-belt.png",
    priority = "extra-high",
    width = 40,
    height = 40,
    frame_count = 32,
    y = 200
  }
ultimate_belt_starting_bottom =
  {
    filename = "__EasyMod__/graphics/ultimate-transport-belt/ultimate-transport-belt.png",
    priority = "extra-high",
    width = 40,
    height = 40,
    frame_count = 32,
    y = 240
  }
ultimate_belt_starting_side =
  {
    filename = "__EasyMod__/graphics/ultimate-transport-belt/ultimate-transport-belt.png",
    priority = "extra-high",
    width = 40,
    height = 40,
    frame_count = 32,
    y = 280
  }

data:extend({
  {
    type = "transport-belt",
    name = "ultimate-transport-belt",
    icon = "__EasyMod__/graphics/ultimate-transport-belt/icon_ultimate-transport-belt.png",
    flags = {"placeable-neutral", "player-creation"},
    icon_size = 32,
    minable = {hardness = 0.2, mining_time = 0.3, result = "ultimate-transport-belt"},
    max_health = 500,
    corpse = "small-remnants",
    resistances =
    {
      {
        type = "fire",
        percent = 50
      }
    },
    collision_box = {{-0.4, -0.4}, {0.4, 0.4}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/express-transport-belt.ogg",
        volume = 0.4
      },
      max_sounds_per_type = 3
    },
    animation_speed_coefficient = 32,
    animations =
    {
      filename = "__EasyMod__/graphics/ultimate-transport-belt/ultimate-transport-belt.png",
      priority = "extra-high",
      width = 40,
      height = 40,
      frame_count = 32,
      direction_count = 12
    },
    belt_horizontal = ultimate_belt_horizontal, -- specified in transport-belt-pictures.lua
    belt_vertical = ultimate_belt_vertical,
    ending_top = ultimate_belt_ending_top,
    ending_bottom = ultimate_belt_ending_bottom,
    ending_side = ultimate_belt_ending_side,
    starting_top = ultimate_belt_starting_top,
    starting_bottom = ultimate_belt_starting_bottom,
    starting_side = ultimate_belt_starting_side,
    ending_patch = ending_patch_prototype,
    ending_patch = ending_patch_prototype,
    fast_replaceable_group = "transport-belt",
    speed = 0.5,
    connector_frame_sprites = transport_belt_connector_frame_sprites,
    circuit_connector_sprites = transport_belt_circuit_connector_sprites,
    circuit_wire_connection_point = transport_belt_circuit_wire_connection_point,
    circuit_wire_max_distance = transport_belt_circuit_wire_max_distance
  },
  
  {
    type = "item",
    name = "ultimate-transport-belt",
    icon = "__EasyMod__/graphics/ultimate-transport-belt/icon_ultimate-transport-belt.png",
    flags = {"goes-to-quickbar"},
    subgroup = "belt",
    icon_size = 32,
    order = "r",
    place_result = "ultimate-transport-belt",
    stack_size = 500
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
    name = "logistics-6",
    icon = "__base__/graphics/technology/logistics.png",
    icon_size = 32,
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
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1}
      },
      time = 5
    },
    order = "a-f-c",
  }
});