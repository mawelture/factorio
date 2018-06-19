data:extend({
  {
    type = "underground-belt",
    name = "ultimate-underground-belt",
    icon = "__EasyMod__/graphics/ultimate-underground-belt/ultimate-underground-belt.png",
    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "ultimate-underground-belt"},
    max_health = 2000,
    corpse = "small-remnants",
    max_distance = 100,
    underground_sprite =
    {
      filename = "__core__/graphics/arrows/underground-lines.png",
      priority = "high",
      width = 64,
      height = 64,
      x = 64,
      scale = 0.5
    },
    underground_remove_belts_sprite =
    {
      filename = "__core__/graphics/arrows/underground-lines-remove.png",
      priority = "high",
      width = 64,
      height = 64,
      x = 64,
      scale = 0.5
    },
    resistances =
    {
      {
        type = "fire",
        percent = 60
      },
      {
        type = "impact",
        percent = 30
      }
    },
    collision_box = {{-0.4, -0.4}, {0.4, 0.4}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    animation_speed_coefficient = 32,
    belt_horizontal = basic_belt_horizontal,
    belt_vertical = basic_belt_vertical,
    ending_top = basic_belt_ending_top,
    ending_bottom = basic_belt_ending_bottom,
    ending_side = basic_belt_ending_side,
    starting_top = basic_belt_starting_top,
    starting_bottom = basic_belt_starting_bottom,
    starting_side = basic_belt_starting_side,
    fast_replaceable_group = "transport-belt",
    speed = 0.8,
    structure =
    {
      direction_in =
      {
        sheet =
        {
          -- filename = "__base__/graphics/entity/underground-belt/underground-belt-structure.png",
          filename = "__EasyMod__/graphics/ultimate-underground-belt/ultimate-underground-belt-structure.png",
          priority = "extra-high",
          shift = {0.25, 0},
          width = 57,
          height = 43,
          y = 43,
          hr_version =
          {
            -- filename = "__base__/graphics/entity/underground-belt/hr-underground-belt-structure.png",
            filename = "__EasyMod__/graphics/ultimate-underground-belt/hr-ultimate-underground-belt-structure.png",
            priority = "extra-high",
            shift = {0.15625, 0.0703125},
            width = 106,
            height = 85,
            y = 85,
            scale = 0.5
          }
        }
      },
      direction_out =
      {
        sheet =
        {
          filename = "__EasyMod__/graphics/ultimate-underground-belt/ultimate-underground-belt-structure.png",
          priority = "extra-high",
          shift = {0.25, 0},
          width = 57,
          height = 43,
          hr_version =
          {
            filename = "__EasyMod__/graphics/ultimate-underground-belt/hr-ultimate-underground-belt-structure.png",
            priority = "extra-high",
            shift = {0.15625, 0.0703125},
            width = 106,
            height = 85,
            scale = 0.5
          }

        }

      }
    },
    ending_patch = ending_patch_prototype
  },


  {
    type = "item",
    name = "ultimate-underground-belt",
    --icon = "__base__/graphics/icons/express-underground-belt.png",
    icon = "__EasyMod__/graphics/ultimate-underground-belt/ultimate-underground-belt.png",
    flags = {"goes-to-quickbar"},
    --subgroup = "belt",
    subgroup = "mx-transport",
    icon_size = 32,
    order = "a-b",
    place_result = "ultimate-underground-belt",
    stack_size = 500
  },
  
  {
    type = "recipe",
    name = "ultimate-underground-belt",
    category = "crafting-with-fluid",
    enabled = false,
    ingredients =
    {
      {"iron-gear-wheel", 10},
      {"express-underground-belt", 1},
      {type="fluid", name="lubricant", amount=10},
    },
    result_count = 2,
    result = "ultimate-underground-belt"
  },
  
   {
    type = "technology",
    name = "logistics-7",
    icon = "__base__/graphics/technology/logistics.png",
    icon_size = 128,
    effects =
    {    
      {
        type = "unlock-recipe",
        recipe = "ultimate-splitter"
      },
      {
        type = "unlock-recipe",
        recipe = "ultimate-underground-belt"
      },
    },
    prerequisites = {"logistics-6"},
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
})
