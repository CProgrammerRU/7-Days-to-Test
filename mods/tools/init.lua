 
minetest.register_item(":", {
	type = "none",
	wield_image = "wieldhand.png",
	wield_scale = {x=1,y=1,z=2.5},
	tool_capabilities = {
		full_punch_interval = 0.9,
		max_drop_level = 0,
		groupcaps = {
			crumbly = {times={[2]=3.00, [3]=0.70}, uses=0, maxlevel=1},
			snappy = {times={[3]=0.40}, uses=0, maxlevel=1},
			oddly_breakable_by_hand = {times={[1]=3.50,[2]=2.00,[3]=0.70}, uses=0}
		},
		damage_groups = {fleshy=1},
	}
})

--
-- Picks
--
minetest.register_tool("tools:hatchet", {
	description = "Stone Hammer",
	inventory_image = "tools_hatchet.png",
	tool_capabilities = {
		full_punch_interval = 1.3,
		max_drop_level=0,
		groupcaps={
			cracky = {times={[2]=3.0, [3]=5.00}, uses=20, maxlevel=1},
			choppy={times={[1]=2.00, [2]=5.00, [3]=10.00}, uses=20, maxlevel=2},
		},
		damage_groups = {fleshy=3},
	},
})

dofile(minetest.get_modpath("tools").."/craft.lua")
