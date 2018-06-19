data:extend({
    {
        type = "module",
        name = "ultimate-card",
        icon = "__base__/graphics/icons/speed-module-3.png",
        flags = {"goes-to-main-inventory"},
        --subgroup = "module",
        subgroup = "mx-enhance",
        icon_size = 32,
        category = "speed",
        tier = 1,
        order = "a-a",
        stack_size = 10,
        default_request_amount = 10,
        effect = { speed = {bonus = 1}, productivity = {bonus = 5}}
    },

  --Recipe
    {
        type = "recipe",
        name = "ultimate-card",
        enabled = false,
        ingredients =
        {
          {"advanced-circuit", 1},
          {"electronic-circuit", 1}
        },
        energy_required = 10,
        result = "ultimate-card"
    },
  
    {
        type = "technology",
        name = "speed-module-9",
        icon = "__base__/graphics/technology/speed-module.png",
        icon_size = 128,
        effects =
        {
            {
              type = "unlock-recipe",
              recipe = "ultimate-card"
            }
        },
        prerequisites = {"speed-module-3"},
        unit =
        {
            count = 75,
            ingredients =
            {
                {"science-pack-1", 1},
                {"science-pack-2", 1},
                {"science-pack-3", 1},
                {"production-science-pack", 1}
            },
            time = 15
        },
        upgrade = true,
        order = "i-c-c"
    }
})
