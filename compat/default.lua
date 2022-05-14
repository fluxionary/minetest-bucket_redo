if not bucket.has.default then
    return
end

local function override_liquid(source_name, level)
    local source_def = minetest.registered_items[source_name]
    local source_groups = table.copy(source_def.groups or {})
    source_groups[bucket.settings.liquid_group] = level
    minetest.override_item(source_name, {
        groups = source_groups,
        diggable = true,
        drop = source_name,
        sounds = bucket.resources.sounds.water_sounds,
    })

    local flowing_name = source_def.liquid_alternative_flowing
    local flowing_def = minetest.registered_items[flowing_name]
    local flowing_groups = table.copy(flowing_def.groups or {})
    flowing_groups[bucket.settings.liquid_group] = level
    minetest.override_item(flowing_name, {
        groups = flowing_groups,
        diggable = true,
        drop = "",
        sounds = bucket.resources.sounds.water_sounds,
    })
end

override_liquid("default:water_source", 3)
override_liquid("default:river_water_source", 3)
override_liquid("default:lava_source", 2)
