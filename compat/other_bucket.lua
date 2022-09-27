local materials = bucket.resources.materials

function bucket.register_liquid(source, flowing, itemname, inventory_image, name, groups, force_renew, level)
    level = level or 3

    local source_def = minetest.registered_items[source]
    local source_groups = table.copy(source_def.groups or {})
    source_groups[bucket.settings.liquid_group] = level
    minetest.override_item(source, {
        groups = source_groups,
        diggable = true,
        drop = source,
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

    minetest.register_alias_force(itemname, source)
end

minetest.register_alias_force("bucket", "bucket:bucket_steel")
minetest.register_alias_force("bucket_water", "bucket:bucket_water")
minetest.register_alias_force("bucket_lava", "bucket:bucket_lava")
minetest.register_alias_force("bucket:bucket_empty", "bucket:bucket_steel")

if materials.water then
    bucket.register_liquid(materials.water, nil, "bucket:bucket_water", nil, nil, nil, nil, 3)
else
    minetest.register_alias_force("bucket:bucket_water", "bucket:bucket_steel")
end

if materials.lava then
    bucket.register_liquid(materials.lava, nil, "bucket:bucket_lava", nil, nil, nil, nil, 3)
else
    minetest.register_alias_force("bucket:bucket_lava", "bucket:bucket_steel")
end

if materials.river_water then
    bucket.register_liquid(materials.river_water, nil, "bucket:bucket_river_water", nil, nil, nil, nil, 3)
else
    minetest.register_alias_force("bucket:bucket_river_water", "bucket:bucket_steel")
end
