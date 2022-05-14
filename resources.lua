bucket.resources = {
    sounds = {},
    textures = {},
    materials = {},
}

bucket.materials.wood = "group:wood"

if bucket.has.default then
    bucket.resources.sounds.tool_breaks = "default_tool_breaks"
    bucket.resources.sounds.water_sounds = default.node_sound_water_defaults({
        dig = {name = "default_water_footstep", gain = 0.5},
        dug = {name = "default_water_footstep", gain = 0.5},
        place = {name = "default_water_footstep", gain = 0.5},
    })

    bucket.materials.steel_ingot = "default:steel_ingot"
end
