data:extend({
    {
        type = "ammo",
        name = "ultimate-magazine",
        icon = "__base__/graphics/icons/uranium-rounds-magazine.png",
        icon_size = 32,
        flags = {"goes-to-main-inventory"},
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
                            entity_name = "explosion-hit"
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
        --subgroup = "ammo",
        subgroup = "mx-weapon",
        order = "a[basic-clips]-c[ultimate-magazine]",
        stack_size = 200
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
        icon_size = 128,
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
            count = 100,
            ingredients =
            {
                {"science-pack-1", 1},
                {"science-pack-2", 1},
                {"science-pack-3", 1},
                {"military-science-pack", 1},
                {"high-tech-science-pack", 1}
            },
            time = 5
        },
        order = "e-a-b"
    },
})