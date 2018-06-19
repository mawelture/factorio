data:extend({
  {
    type = "splitter",
    name = "ultimate-splitter",
    icon = "__EasyMod__/graphics/ultimate-splitter/ultimate-splitter.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "ultimate-splitter"},
    max_health = 500,
    icon_size = 32,
    corpse = "medium-remnants",
    resistances =
    {
      {
        type = "fire",
        percent = 60
      }
    },
    collision_box = {{-0.9, -0.4}, {0.9, 0.4}},
    selection_box = {{-0.9, -0.5}, {0.9, 0.5}},
    animation_speed_coefficient = 32,
    structure_animation_speed_coefficient = 1.2,
    structure_animation_movement_cooldown = 10,
    belt_horizontal = express_belt_horizontal, -- specified in transport-belt-pictures.lua
    belt_vertical = express_belt_vertical,
    ending_top = express_belt_ending_top,
    ending_bottom = express_belt_ending_bottom,
    ending_side = express_belt_ending_side,
    starting_top = express_belt_starting_top,
    starting_bottom = express_belt_starting_bottom,
    starting_side = express_belt_starting_side,
    ending_patch = ending_patch_prototype,
    fast_replaceable_group = "splitter",
    speed = 0.5,
    structure =
    {
      north =
      {
        -- filename = "__base__/graphics/entity/express-splitter/express-splitter-north.png",
        filename = "__EasyMod__/graphics/ultimate-splitter/ultimate-splitter-north.png",
        frame_count = 32,
        line_length = 16,
        priority = "extra-high",
        width = 83,
        height = 36,
        shift = {0.21875, 0},
        hr_version =
        {
          filename = "__EasyMod__/graphics/ultimate-splitter/hr-ultimate-splitter-north.png",
          frame_count = 32,
          line_length = 8,
          priority = "extra-high",
          width = 164,
          height = 70,
          shift = {0.265625, 0},
          scale = 0.5
        }
      },
      east =
      {
        filename = "__EasyMod__/graphics/ultimate-splitter/ultimate-splitter-east.png",
        frame_count = 32,
        line_length = 16,
        priority = "extra-high",
        width = 51,
        height = 80,
        shift = {0.109375, -0.03125},
        hr_version =
        {
          filename = "__EasyMod__/graphics/ultimate-splitter/hr-ultimate-splitter-east.png",
          frame_count = 32,
          line_length = 8,
          priority = "extra-high",
          width = 93,
          height = 157,
          shift = {0.148438, -0.179688},
          scale = 0.5
        }
      },
      south =
      {
        filename = "__EasyMod__/graphics/ultimate-splitter/ultimate-splitter-south.png",
        frame_count = 32,
        line_length = 16,
        priority = "extra-high",
        width = 85,
        height = 35,
        shift = {0.140625, -0.015625},
        hr_version =
        {
          filename = "__EasyMod__/graphics/ultimate-splitter/hr-ultimate-splitter-south.png",
          frame_count = 32,
          line_length = 8,
          priority = "extra-high",
          width = 168,
          height = 67,
          shift = {0.140625, 0.0234375},
          scale = 0.5
        }
      },
      west =
      {
        filename = "__EasyMod__/graphics/ultimate-splitter/ultimate-splitter-west.png",
        frame_count = 32,
        line_length = 16,
        priority = "extra-high",
        width = 51,
        height = 78,
        shift = {0.296875, -0.03125},
        hr_version =
        {
          filename = "__EasyMod__/graphics/ultimate-splitter/hr-ultimate-splitter-west.png",
          frame_count = 32,
          line_length = 8,
          priority = "extra-high",
          width = 94,
          height = 154,
          shift = {0.203125, -0.109375},
          scale = 0.5
        }
      }
    }
  },
  
  {
    type = "item",
    name = "ultimate-splitter",
    --icon = "__base__/graphics/icons/express-splitter.png",
    icon = "__EasyMod__/graphics/ultimate-splitter/ultimate-splitter.png",
    flags = {"goes-to-quickbar"},
    --subgroup = "belt",
    subgroup = "mx-transport",
    icon_size = 32,
    order = "a-c",
    place_result = "ultimate-splitter",
    stack_size = 100
  },
  
  {
    type = "recipe",
    name = "ultimate-splitter",
    category = "crafting-with-fluid",
    enabled = false,
    energy_required = 2,
    ingredients =
    {
      {"express-splitter", 1},
      {"iron-gear-wheel", 1},
      {"advanced-circuit", 1},
      {type="fluid", name="lubricant", amount=10}
    },
    result = "ultimate-splitter"
  }
})
