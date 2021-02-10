local fre3 = table.deepcopy(data.raw["generator-equipment"]["fusion-reactor-equipment"])
fre3.name = "ultimate-fusion-reactor"
fre3.sprite.filename = "__EasyMod__/graphics/ultimate-fusion-reactor/ultimate-fusion-reactor.png"
fre3.power = "1000MW"

data:extend({
    fre3, 
    {
        type = "item",
        name = "ultimate-fusion-reactor",
        icon = "__EasyMod__/graphics/ultimate-fusion-reactor/icon-ultimate-fusion-reactor.png",
        icon_size = 64, icon_mipmaps = 4,
        placed_as_equipment_result = "ultimate-fusion-reactor",
        subgroup = "mx-equipment",
        order = "a[energy-source]-b[fusion-reactor]",
        default_request_amount = 1,
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
        icon_size = 256,
        prerequisites = {"fusion-reactor-equipment"},
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
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1},
                {"chemical-science-pack", 1},
                {"military-science-pack", 1},
                {"production-science-pack", 1},
                {"utility-science-pack", 1}
            },
            time = 45
        },
        order = "g-c-d"
    }
})