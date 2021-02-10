local mk5 = table.deepcopy(data.raw["splitter"]["splitter"])
mk5.name = "ultimate-splitter"
mk5.icon = "__EasyMod__/graphics/ultimate-splitter/icon-" .. mk5.name .. ".png"
mk5.icon_size = 64
mk5.icon_mipmaps = 4
mk5.minable.result = mk5.name
mk5.max_health = 210
mk5.structure_animation_speed_coefficient = 0.7
mk5.structure_animation_movement_cooldown = 10
mk5.next_upgrade = nil
mk5.speed = 0.5
mk5.structure_patch = nil
mk5.belt_animation_set = {
    animation_set = {
        filename = "__EasyMod__/graphics/ultimate-transport-belt/ultimate-transport-belt.png",
        priority = "extra-high",
        width = 64,
        height = 64,
        frame_count = 32,
        direction_count = 20,
        hr_version = {
            filename = "__EasyMod__/graphics/ultimate-transport-belt/hr-ultimate-transport-belt.png",
            priority = "extra-high",
            width = 128,
            height = 128,
            scale = 0.5,
            frame_count = 32,
            direction_count = 20
        }
    }
}

for _, direction in pairs({"north", "east", "south", "west"}) do
    mk5.structure[direction].filename = "__EasyMod__/graphics/ultimate-splitter/ultimate-splitter-" .. direction .. ".png"
    mk5.structure[direction].hr_version.filename = "__EasyMod__/graphics/ultimate-splitter/hr-ultimate-splitter-" .. direction .. ".png"
end

-- This will need to be changed if we move to top/bottom graphics like they have in the 0.17/0.18 base game graphics
mk5.structure.north.width = 82
mk5.structure.north.height = 36
mk5.structure.north.hr_version.width = 160
mk5.structure.north.hr_version.height = 70
mk5.structure.north.shift = util.by_pixel(6, 0)
mk5.structure.north.hr_version.shift = util.by_pixel(7, 0)

mk5.structure.east.width = 46
mk5.structure.east.height = 80
mk5.structure.east.hr_version.width = 90
mk5.structure.east.hr_version.height = 160
mk5.structure.east.shift = util.by_pixel(4, -6)
mk5.structure.east.hr_version.shift = util.by_pixel(4, -6)

mk5.structure.south.width = 82
mk5.structure.south.height = 32
mk5.structure.south.hr_version.width = 164
mk5.structure.south.hr_version.height = 64
mk5.structure.south.shift = util.by_pixel(4, 0)
mk5.structure.south.hr_version.shift = util.by_pixel(4, 0)

mk5.structure.west.width = 46
mk5.structure.west.height = 76
mk5.structure.west.hr_version.width = 94
mk5.structure.west.hr_version.height = 150
mk5.structure.west.shift = util.by_pixel(6, -4)
mk5.structure.west.hr_version.shift = util.by_pixel(6, -4)


data:extend({
  mk5,
  {
    type = "item",
    name = "ultimate-splitter",
    icon = "__EasyMod__/graphics/ultimate-splitter/icon-ultimate-splitter.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "mx-transport",
    order = "c[splitter]-c[express-splitter]",
    place_result = "ultimate-splitter",
    stack_size = 100
  },
  
  {
    type = "recipe",
    name = "ultimate-splitter",
    category = "crafting-with-fluid",
    enabled = false,
    energy_required = 2,
    ingredients =
    {
      {"express-splitter", 1},
      {"iron-gear-wheel", 1},
      {"advanced-circuit", 1},
      {type="fluid", name="lubricant", amount=10}
    },
    result = "ultimate-splitter"
  }
})
