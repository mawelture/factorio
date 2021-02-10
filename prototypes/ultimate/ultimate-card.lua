data:extend({
    {
        type = "module",
        name = "ultimate-card",
        localised_description = {"item-description.speed-module"},
        icon = "__base__/graphics/icons/speed-module-3.png",
        icon_size = 64, icon_mipmaps = 4,
        subgroup = "mx-enhance",
        category = "speed",
        tier = 3,
        order = "a[speed]-c[speed-module-3]",
        stack_size = 50,
        effect = { speed = {bonus = 1}, productivity = {bonus = 5}},
        beacon_tint =
        {
            primary = {r = 0.441, g = 0.714, b = 1.000, a = 1.000}, -- #70b6ffff
            secondary = {r = 0.388, g = 0.976, b = 1.000, a = 1.000}, -- #63f8ffff
        },
        art_style = "vanilla",
        requires_beacon_alt_mode = false
    },

  --Recipe
    {
        type = "recipe",
        name = "ultimate-card",
        enabled = false,
        ingredients =
        {
            {"speed-module-3", 5},
            {"advanced-circuit", 5},
            {"processing-unit", 5}
        },
        energy_required = 10,
        result = "ultimate-card"
    },
  
    {
        type = "technology",
        name = "ultimate-speed-module",
        icon = "__base__/graphics/technology/speed-module-3.png",
        icon_size = 256, icon_mipmaps = 4,
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
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1},
                {"chemical-science-pack", 1},
                {"production-science-pack", 1}
            },
            time = 15
        },
        upgrade = true,
        order = "i-c-c"
    }
})
