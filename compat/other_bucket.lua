local materials = bucket.resources.materials

minetest.register_alias_force("bucket", "bucket:bucket_steel")
minetest.register_alias_force("bucket_water", materials.water or "bucket:bucket_steel")
minetest.register_alias_force("bucket_lava", materials.lava or "bucket:bucket_steel")

minetest.register_alias_force("bucket:bucket_empty", "bucket:bucket_steel")
minetest.register_alias_force("bucket:bucket_water", materials.water or "bucket:bucket_steel")
minetest.register_alias_force("bucket:bucket_lava", materials.lava or "bucket:bucket_steel")
minetest.register_alias_force("bucket:bucket_river_water", materials.river_water or "bucket:bucket_steel")
