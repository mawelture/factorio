local Belt = require("ultimate-transport-belt-pictures")

local mk5 = table.deepcopy(data.raw["underground-belt"]["underground-belt"])
mk5.name = "ultimate-underground-belt"
mk5.icon = "__EasyMod__/graphics/ultimate-underground-belt/icon-ultimate-underground-belt.png"
mk5.icon_size = 64
mk5.icon_mipmaps = 4
mk5.minable.result = mk5.name
mk5.max_health = 190
mk5.next_upgrade = nil
mk5.speed = 0.5
mk5.max_distance = 40
mk5.belt_animation_set = Belt.ultimate_transport_belt_set

mk5.structure.direction_in.sheet.filename = "__EasyMod__/graphics/ultimate-underground-belt/ultimate-underground-belt.png"
mk5.structure.direction_in.sheet.hr_version.filename = "__EasyMod__/graphics/ultimate-underground-belt/hr-ultimate-underground-belt.png"
mk5.structure.direction_out.sheet.filename = "__EasyMod__/graphics/ultimate-underground-belt/ultimate-underground-belt.png"
mk5.structure.direction_out.sheet.hr_version.filename = "__EasyMod__/graphics/ultimate-underground-belt/hr-ultimate-underground-belt.png"
mk5.structure.direction_in_side_loading.sheet.filename = "__EasyMod__/graphics/ultimate-underground-belt/ultimate-underground-belt.png"
mk5.structure.direction_in_side_loading.sheet.hr_version.filename = "__EasyMod__/graphics/ultimate-underground-belt/hr-ultimate-underground-belt.png"
mk5.structure.direction_out_side_loading.sheet.filename = "__EasyMod__/graphics/ultimate-underground-belt/ultimate-underground-belt.png"
mk5.structure.direction_out_side_loading.sheet.hr_version.filename = "__EasyMod__/graphics/ultimate-underground-belt/hr-ultimate-underground-belt.png"

data:extend({
    mk5,
    {
        type = "item",
        name = "ultimate-underground-belt",
        icon = "__EasyMod__/graphics/ultimate-underground-belt/icon-ultimate-underground-belt.png",
        icon_size = 64, icon_mipmaps = 4,
        subgroup = "mx-transport",
        order = "b[underground-belt]-c[express-underground-belt]",
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
        name = "ultimate-ext-logistics",
        icon = "__EasyMod__/graphics/technology/logistics.png",
        icon_size = 256,
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
        prerequisites = {"ultimate-logistics"},
        unit =
        {
        count = 50,
        ingredients =
        {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"chemical-science-pack", 1},
            {"production-science-pack", 1},
            {"utility-science-pack", 1}
        },
        time = 5
        },
        order = "a-f-c",
    }
})
