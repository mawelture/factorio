data:extend({
    {
        type = "generator-equipment",
        name = "ultimate-fusion-reactor",
        sprite =
        {
          filename = "__EasyMod__/graphics/ultimate-fusion-reactor/ultimate-fusion-reactor.png",
          width = 128,
          height = 128,
          priority = "medium"
        },
        shape =
        {
          width = 2,
          height = 2,
          type = "full"
        },
        energy_source =
        {
          type = "electric",
          usage_priority = "primary-output"
        },
        power = "1000MW",
        categories = {"armor"}
    },
    {
        type = "item",
        name = "ultimate-fusion-reactor",
        icon = "__EasyMod__/graphics/ultimate-fusion-reactor/ultimate-fusion-reactor-icon.png",
        icon_size = 32,
        placed_as_equipment_result = "ultimate-fusion-reactor",
        flags = {"goes-to-main-inventory"},
        subgroup = "mx-equipment",
        order = "a-a",
        stack_size = 20
    },
    {
        type = "recipe",
        name = "ultimate-fusion-reactor",
        enabled = false,
        energy_required = 10,
        ingredients =
        {
            {"fusion-reactor-equipment", 10},
            {"processing-unit", 100}, 
            {"rocket-control-unit", 50},
            {"low-density-structure", 50}
        },
        result = "ultimate-fusion-reactor"
    },
    {
        type = "technology",
        name = "power-armor-equipment",
        icon = "__base__/graphics/technology/power-armor-mk2.png",
        icon_size = 128,
        prerequisites = {"titanium-processing", "rocket-silo", "power-armor-2"},
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = "ultimate-fusion-reactor"
            }
        },
        unit =
        {
            count = 800,
            ingredients =
            {
                {"science-pack-1", 1}, 
                {"science-pack-2", 1}, 
                {"science-pack-3", 1},
                {"military-science-pack", 1}, 
                {"production-science-pack", 1},
                {"high-tech-science-pack", 1}
            },
            time = 45
        },
        order = "g-c-d"
    }
})