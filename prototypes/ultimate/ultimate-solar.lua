data:extend({
  {
    type = "solar-panel",
    name = "ultimate-solar",
    icon = "__base__/graphics/icons/solar-panel.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "ultimate-solar"},
    max_health = 200,
    icon_size = 32,
    corpse = "big-remnants",
    collision_box = {{-1.4, -1.4}, {1.4, 1.4}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    energy_source =
    {
      type = "electric",
      usage_priority = "solar"
    },
    picture =
    {
      filename = "__base__/graphics/entity/solar-panel/solar-panel.png",
      priority = "high",
      width = 104,
      height = 96
    },
    production = "1000MW"
  },
  
  {
    type = "item",
    name = "ultimate-solar",
    icon = "__base__/graphics/icons/solar-panel.png",
    flags = {"goes-to-quickbar"},
    --subgroup = "energy",
    subgroup = "mx-electric",
    icon_size = 32,
    order = "a-b",
    place_result = "ultimate-solar",
    stack_size = 200
  },
  
  {
    type = "recipe",
    name = "ultimate-solar",
    energy_required = 10,
    enabled = false,
    ingredients =
    {
      {"steel-plate", 5},
      {"electronic-circuit", 5},
      {"copper-plate", 5}
    },
    result = "ultimate-solar"
  },
  {
    type = "technology",
    name = "ultimate-solar",
    icon = "__base__/graphics/technology/solar-energy.png",
    icon_size = 128,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "ultimate-solar"
      }
    },
    prerequisites = {"solar-energy"},
    unit =
    {
      count = 30,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1}
      },
      time = 5
    },
    order = "a-h-c",
  }
})
