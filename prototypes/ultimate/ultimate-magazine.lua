data:extend({
    {
        type = "ammo",
        name = "ultimate-magazine",
        icon = "__base__/graphics/icons/uranium-rounds-magazine.png",
        icon_size = 64, icon_mipmaps = 4,
        pictures =
        {
        layers =
        {
            {
            size = 64,
            filename = "__base__/graphics/icons/uranium-rounds-magazine.png",
            scale = 0.25,
            mipmap_count = 4
            },
            {
            draw_as_light = true,
            flags = {"light"},
            size = 64,
            filename = "__base__/graphics/icons/uranium-rounds-magazine-light.png",
            scale = 0.25,
            mipmap_count = 4
            }
        }
        },
        ammo_type =
        {
        category = "bullet",
        action =
        {
            type = "direct",
            action_delivery =
            {
            type = "instant",
            source_effects =
            {
                type = "create-explosion",
                entity_name = "explosion-gunshot"
            },
            target_effects =
            {
                {
                type = "create-entity",
                entity_name = "explosion-hit",
                offsets = {{0, 1}},
                offset_deviation = {{-0.5, -0.5}, {0.5, 0.5}}
                },
                {
                type = "damage",
                damage = { amount = 500, type = "physical"}
                }
            }
            }
        }
        },
        magazine_size = 10,
        subgroup = "ammo",
        order = "a[basic-clips]-c[uranium-rounds-magazine]",
        stack_size = 1000
    },
    {
        type = "recipe",
        name = "ultimate-magazine",
        enabled = false,
        energy_required = 10,
        ingredients =
        {
            {"uranium-rounds-magazine", 1},
            {"uranium-238", 1}
        },
        result = "ultimate-magazine"
    },
    {
        type = "technology",
        name = "ultimate-ammo",
        icon_size = 256, icon_mipmaps = 4,
        icon = "__base__/graphics/technology/uranium-ammo.png",
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = "ultimate-magazine"
            }
        },
        prerequisites = {"uranium-ammo"},
        unit =
        {
        count = 1000,
        ingredients =
        {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"chemical-science-pack", 1},
            {"military-science-pack", 1},
            {"utility-science-pack", 1}
        },
        time = 45
        },
        order = "e-a-b"
    }
})