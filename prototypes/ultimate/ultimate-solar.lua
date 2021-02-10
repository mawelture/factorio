local hit_effects = require ("__base__.prototypes.entity.hit-effects")
local sounds = require("__base__.prototypes.entity.sounds")

data:extend({
    {
        type = "solar-panel",
        name = "ultimate-solar",
        icon = "__base__/graphics/icons/solar-panel.png",
        icon_size = 64, icon_mipmaps = 4,
        flags = {"placeable-neutral", "player-creation"},
        minable = {mining_time = 0.1, result = "ultimate-solar"},
        max_health = 200,
        corpse = "solar-panel-remnants",
        dying_explosion = "solar-panel-explosion",
        collision_box = {{-1.4, -1.4}, {1.4, 1.4}},
        selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
        damaged_trigger_effect = hit_effects.entity(),
        energy_source =
        {
        type = "electric",
        usage_priority = "solar"
        },
        picture =
        {
        layers =
        {
            {
            filename = "__base__/graphics/entity/solar-panel/solar-panel.png",
            priority = "high",
            width = 116,
            height = 112,
            shift = util.by_pixel(-3, 3),
            hr_version =
            {
                filename = "__base__/graphics/entity/solar-panel/hr-solar-panel.png",
                priority = "high",
                width = 230,
                height = 224,
                shift = util.by_pixel(-3, 3.5),
                scale = 0.5
            }
            },
            {
            filename = "__base__/graphics/entity/solar-panel/solar-panel-shadow.png",
            priority = "high",
            width = 112,
            height = 90,
            shift = util.by_pixel(10, 6),
            draw_as_shadow = true,
            hr_version =
            {
                filename = "__base__/graphics/entity/solar-panel/hr-solar-panel-shadow.png",
                priority = "high",
                width = 220,
                height = 180,
                shift = util.by_pixel(9.5, 6),
                draw_as_shadow = true,
                scale = 0.5
            }
            }
        }
        },
        overlay =
        {
        layers =
        {
            {
            filename = "__base__/graphics/entity/solar-panel/solar-panel-shadow-overlay.png",
            priority = "high",
            width = 108,
            height = 90,
            shift = util.by_pixel(11, 6),
            hr_version =
            {
                filename = "__base__/graphics/entity/solar-panel/hr-solar-panel-shadow-overlay.png",
                priority = "high",
                width = 214,
                height = 180,
                shift = util.by_pixel(10.5, 6),
                scale = 0.5
            }
            }
        }
        },
        vehicle_impact_sound = sounds.generic_impact,
        production = "1000MW"
    },
  
    {
        type = "item",
        name = "ultimate-solar",
        icon = "__base__/graphics/icons/solar-panel.png",
        icon_size = 64, icon_mipmaps = 4,
        subgroup = "mx-electric",
        order = "d[solar-panel]-a[solar-panel]",
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
        icon_size = 256, icon_mipmaps = 4,
        icon = "__base__/graphics/technology/solar-energy.png",
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
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1}
        },
        time = 30
        },
        order = "a-h-c"
    }
})
