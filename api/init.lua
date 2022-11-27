bucket.api = {}

function bucket.api.register_bucket(name, def)
	minetest.register_tool(name, {
		description = def.description,
		inventory_image = def.inventory_image,
		liquids_pointable = true,
		tool_capabilities = {
			full_punch_interval = def.full_punch_interval,
			max_drop_level = def.max_drop_level,
			groupcaps = def.groupcaps,
			damage_groups = def.damage_groups,
		},
		sound = {
			breaks = bucket.resources.sounds.tool_breaks,
		},
		groups = {
			bucket = 1,
		},
	})

	bucket.log(
		"action",
		"[DEBUG] %s; liquids_pointable=%s",
		name,
		minetest.registered_items["bucket:bucket_wood"].liquids_pointable
	)
end
