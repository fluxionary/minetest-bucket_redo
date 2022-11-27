local s = minetest.settings

local function get_setting(name, default)
	return s:get(("%s.%s"):format(bucket.modname, name)) or default
end

bucket.settings = {
	liquid_group = get_setting("liquid_group", "sloshy"),
}
