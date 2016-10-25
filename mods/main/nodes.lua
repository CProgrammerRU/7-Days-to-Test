--[[ 
Nodes:
main:dirt
main:dirt_with_grass
main:stone
main:cobble
main:mosy_cobble
main:tree
main:leaves
main:pebble
main:branch
main:sand
main:gravel
main:water
main:lava
main:rock
main:obsidian
]]--

minetest.register_node("main:clay", {
	description = "Clay",
	tiles = {"main_clay.png"},
	groups = {crumbly = 3, soil = 1},
	drop = "main:clay_lump 9",
})

minetest.register_node("main:stone", {
	description = "Stone",
	tiles = {"main_stone.png"},
	groups = {cracky = 5, stone = 1},
	drop = 'main:pebble 9',
	legacy_mineral = true,
})

minetest.register_node("main:cobble", {
	description = "Cobblestone",
	tiles = {"main_cobble.png"},
	is_ground_content = false,
	groups = {cracky = 3, stone = 2},
})



minetest.register_node("main:mossycobble", {
	description = "Mossy Cobblestone",
	tiles = {"main_mossycobble.png"},
	is_ground_content = false,
	groups = {cracky = 3, stone = 1},
})

minetest.register_node("main:obsidian", {
	description = "Obsidian",
	tiles = {"main_obsidian.png"},
	groups = {cracky = 1, level = 2},
})

minetest.register_node("main:dirt", {
	description = "Dirt",
	tiles = {"main_dirt.png"},
	groups = {crumbly = 3, soil = 1},
})

minetest.register_node("main:dirt_with_grass", {
	description = "Dirt with Grass",
	tiles = {"main_grass.png", "main_dirt.png",
		{name = "main_dirt.png^main_grass_side.png",
			tileable_vertical = false}},
	groups = {crumbly = 3, soil = 1},
	drop = 'main:dirt',
})

minetest.register_node("main:sand", {
	description = "Sand",
	tiles = {"main_sand.png"},
	groups = {crumbly = 3, falling_node = 1, sand = 1},
})

minetest.register_node("main:gravel", {
	description = "Gravel",
	tiles = {"main.png"},
	groups = {crumbly = 2, falling_node = 1},
})

minetest.register_node("main:log", {
	description = "Log",
	drawtype = "mesh",
	mesh = "log.obj",
    tiles = {"tree.png"},
    paramtype = "light",
	paramtype2 = "facedir",
    selection_box = cbox,
    collision_box = cbox,
    groups = {falling_node = 1},
    on_punch = function(pos, node, player, pointed_thing)
		player:get_inventory():add_item("main", "main:log")
		minetest.remove_node(pos)
	end,
})

minetest.register_node("main:sapling", {
	description = "Sapling",
	drawtype = "plantlike",
	visual_scale = 1.0,
	tiles = {"main_sapling.png"},
	inventory_image = "main_sapling.png",
	wield_image = "main_sapling.png",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	selection_box = {
		type = "fixed",
		fixed = {-0.3, -0.5, -0.3, 0.3, 0.35, 0.3}
	},
	groups = {snappy = 2, dig_immediate = 3, flammable = 2,
		attached_node = 1, sapling = 1},
})

minetest.register_node("main:leaves", {
	description = "Leaves",
	drawtype = "mesh",
	mesh = "leaves.obj",
	tiles = {"leaves.png"},
	paramtype = "light",
	paramtype2 = "facedir",
	walkable = false,
	selection_box = {
		type = "fixed",
		fixed = {-1.5, 0.3, -1.2, 1.5, 2.02, 1.2}
	},
	groups = {snappy = 3, leafdecay = 3, flammable = 2, leaves = 1},
	drop = "main:branch 10",
})

minetest.register_node("main:pebble", {
	description = "Pebble",
	drawtype = "mesh",
	mesh = "main_pebble.obj",
    tiles = {"main_pebble.png"},
    paramtype = "light",
	paramtype2 = "facedir",
    selection_box = cbox,
    collision_box = cbox,
    groups = {falling_node = 1},
    on_punch = function(pos, node, player, pointed_thing)
		player:get_inventory():add_item("main", "main:pebble")
		minetest.remove_node(pos)
	end,
})

minetest.register_node("main:grass", {
	description = "Grass",
	drawtype = "mesh",
	mesh = "grass.obj",
    tiles = {"grass.png"},
    paramtype = "light",
	paramtype2 = "facedir",
	walkable = false,
    selection_box = cbox,
    collision_box = cbox,
    groups = {snappy = 2, dig_immediate = 3, flammable = 2},
})

minetest.register_node("main:rock", {
	description = "Rock",
	drawtype = "mesh",
	mesh = "main_rock.obj",
    tiles = {"main_rock.png"},
    paramtype = "light",
	paramtype2 = "facedir",
    selection_box = cbox,
    collision_box = cbox,
    groups = {cracky = 3, stone = 1, falling_node = 1},
    drop = {
		max_items = 1,
		items = {
			{
				items = {'ores:iron_lump'},
				rarity = 5,
			},
			{
				items = {'main:pebble 4'},
			}
		}
	},
})

minetest.register_node("main:tree", {
	description = "Tree",
	drawtype = "mesh",
	mesh = "tree.obj",
    tiles = {"tree.png"},
    paramtype = "light",
    paramtype2 = "facedir",
    	selection_box = {
		type = "fixed",
		fixed = {-0.3, -0.5, -0.3, 0.3, 2.05, 0.3}
	},
	groups = {choppy = 3, oddly_breakable_by_hand = 0, flammable = 2, level = 2},
	drop = "main:log",

})

minetest.register_node("main:water_source", {
	description = "Water Source",
	inventory_image = minetest.inventorycube("main_water.png"),
	drawtype = "liquid",
	tiles = {
		{
			name = "main_water_source_animated.png",
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 2.0,
			},
		},
	},
	special_tiles = {
		-- New-style water source material (mostly unused)
		{
			name = "main_water_source_animated.png",
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 2.0,
			},
			backface_culling = false,
		},
	},
	alpha = 160,
	paramtype = "light",
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	is_ground_content = false,
	drop = "",
	drowning = 1,
	liquidtype = "source",
	liquid_alternative_flowing = "main:water_flowing",
	liquid_alternative_source = "main:water_source",
	liquid_viscosity = 1,
	post_effect_color = {a = 120, r = 30, g = 60, b = 90},
	groups = {water = 3, liquid = 3, puts_out_fire = 1},
})

minetest.register_node("main:water_flowing", {
	description = "Flowing Water",
	inventory_image = minetest.inventorycube("main_water.png"),
	drawtype = "flowingliquid",
	tiles = {"main_water.png"},
	special_tiles = {
		{
			name = "main_water_flowing_animated.png",
			backface_culling = false,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 0.8,
			},
		},
		{
			name = "main_water_flowing_animated.png",
			backface_culling = true,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 0.8,
			},
		},
	},
	alpha = 160,
	paramtype = "light",
	paramtype2 = "flowingliquid",
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	is_ground_content = false,
	drop = "",
	drowning = 1,
	liquidtype = "flowing",
	liquid_alternative_flowing = "main:water_flowing",
	liquid_alternative_source = "main:water_source",
	liquid_viscosity = 1,
	post_effect_color = {a = 120, r = 30, g = 60, b = 90},
	groups = {water = 3, liquid = 3, puts_out_fire = 1,
		not_in_creative_inventory = 1},
})

minetest.register_node("main:river_water_source", {
	description = "River Water Source",
	inventory_image = minetest.inventorycube("main_river_water.png"),
	drawtype = "liquid",
	tiles = {
		{
			name = "main_river_water_source_animated.png",
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 2.0,
			},
		},
	},
	special_tiles = {
		{
			name = "main_river_water_source_animated.png",
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 2.0,
			},
			backface_culling = false,
		},
	},
	alpha = 160,
	paramtype = "light",
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	is_ground_content = false,
	drop = "",
	drowning = 1,
	liquidtype = "source",
	liquid_alternative_flowing = "main:river_water_flowing",
	liquid_alternative_source = "main:river_water_source",
	liquid_viscosity = 1,
	liquid_renewable = false,
	liquid_range = 2,
	post_effect_color = {a = 120, r = 30, g = 76, b = 90},
	groups = {water = 3, liquid = 3, puts_out_fire = 1},
})

minetest.register_node("main:river_water_flowing", {
	description = "Flowing River Water",
	inventory_image = minetest.inventorycube("main_river_water.png"),
	drawtype = "flowingliquid",
	tiles = {"main_river_water.png"},
	special_tiles = {
		{
			name = "main_river_water_flowing_animated.png",
			backface_culling = false,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 0.8,
			},
		},
		{
			name = "main_river_water_flowing_animated.png",
			backface_culling = true,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 0.8,
			},
		},
	},
	alpha = 160,
	paramtype = "light",
	paramtype2 = "flowingliquid",
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	is_ground_content = false,
	drop = "",
	drowning = 1,
	liquidtype = "flowing",
	liquid_alternative_flowing = "main:river_water_flowing",
	liquid_alternative_source = "main:river_water_source",
	liquid_viscosity = 1,
	liquid_renewable = false,
	liquid_range = 2,
	post_effect_color = {a = 120, r = 30, g = 76, b = 90},
	groups = {water = 3, liquid = 3, puts_out_fire = 1,
		not_in_creative_inventory = 1},
})

minetest.register_node("main:lava_source", {
	description = "Lava Source",
	inventory_image = minetest.inventorycube("main_lava.png"),
	drawtype = "liquid",
	tiles = {
		{
			name = "main_lava_source_animated.png",
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 3.0,
			},
		},
	},
	special_tiles = {
		-- New-style lava source material (mostly unused)
		{
			name = "main_lava_source_animated.png",
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 3.0,
			},
			backface_culling = false,
		},
	},
	paramtype = "light",
	light_source = main.LIGHT_MAX - 1,
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	is_ground_content = false,
	drop = "",
	drowning = 1,
	liquidtype = "source",
	liquid_alternative_flowing = "main:lava_flowing",
	liquid_alternative_source = "main:lava_source",
	liquid_viscosity = 7,
	liquid_renewable = false,
	damage_per_second = 4 * 2,
	post_effect_color = {a = 192, r = 255, g = 64, b = 0},
	groups = {lava = 3, liquid = 2, hot = 3, igniter = 1},
})

minetest.register_node("main:lava_flowing", {
	description = "Flowing Lava",
	inventory_image = minetest.inventorycube("main_lava.png"),
	drawtype = "flowingliquid",
	tiles = {"main_lava.png"},
	special_tiles = {
		{
			name = "main_lava_flowing_animated.png",
			backface_culling = false,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 3.3,
			},
		},
		{
			name = "main_lava_flowing_animated.png",
			backface_culling = true,
			animation = {
				type = "vertical_frames",
				aspect_w = 16,
				aspect_h = 16,
				length = 3.3,
			},
		},
	},
	paramtype = "light",
	paramtype2 = "flowingliquid",
	light_source = main.LIGHT_MAX - 1,
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	is_ground_content = false,
	drop = "",
	drowning = 1,
	liquidtype = "flowing",
	liquid_alternative_flowing = "main:lava_flowing",
	liquid_alternative_source = "main:lava_source",
	liquid_viscosity = 7,
	liquid_renewable = false,
	damage_per_second = 4 * 2,
	post_effect_color = {a = 192, r = 255, g = 64, b = 0},
	groups = {lava = 3, liquid = 2, hot = 3, igniter = 1,
		not_in_creative_inventory = 1},
})


minetest.register_alias("dirt", "main:dirt")
minetest.register_alias("stone", "main:stone")
minetest.register_alias("water", "main:water_source")
minetest.register_alias("sand", "main:sand")
minetest.register_alias("dirt_with_grass", "main:dirt_with_grass")
