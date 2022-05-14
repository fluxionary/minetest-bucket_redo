local S = bucket.S

bucket.api.register_bucket("bucket:bucket_steel", {
    description = S("Steel Bucket"),
    inventory_image = "bucket_bucket_steel.png",
    full_punch_interval = 1.0,
    max_drop_level = 1,
    groupcaps = {
        [bucket.settings.liquid_group] = {
            times = { [1] = 4.00, [2] = 1.60, [3] = 0.80 },
            uses = 20,
            maxlevel = 2
        }
    },
    damage_groups = {
        fleshy = 2,
        [bucket.settings.liquid_group] = 6,
    }
})

local material = bucket.resources.materials.steel_ingot

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
