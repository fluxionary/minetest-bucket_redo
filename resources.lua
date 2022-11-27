bucket.resources = {
	sounds = {},
	textures = {},
	materials = {},
}

bucket.resources.materials.wood = "group:wood"

if bucket.has.default then
	bucket.resources.sounds.tool_breaks = "default_tool_breaks"
	bucket.resources.sounds.water_sounds = default.node_sound_water_defaults({
		dig = { name = "default_water_footstep", gain = 0.5 },
		dug = { name = "default_water_footstep", gain = 0.5 },
		place = { name = "default_water_footstep", gain = 0.5 },
	})

	bucket.resources.materials.steel = "default:steel_ingot"
	bucket.resources.materials.water = "default:water_source"
	bucket.resources.materials.river_water = "default:river_water_source"
	bucket.resources.materials.lava = "default:lava_source"
end
