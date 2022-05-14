local S = bucket.S

bucket.api.register_bucket("bucket:bucket_wood", {
    description = S("Wooden Bucket"),
    inventory_image = "bucket_bucket_wood.png",
    full_punch_interval = 1.2,
    max_drop_level = 0,
    groupcaps = {
        [bucket.settings.liquid_group] = {
            times = {[3]=1.60},
            uses = 10,
            maxlevel = 1
        },
    },
    damage_groups = {
        fleshy = 2,
        [bucket.settings.liquid_group] = 2,
    },
})

local material = bucket.resources.materials.wood

if material then
    minetest.register_craft({
        output = "bucket:bucket_steel",
        type = "shaped",
        recipe = {
            {material, "",       material},
            {material, "",       material},
            {"",       material, ""},
        }
    })
end
