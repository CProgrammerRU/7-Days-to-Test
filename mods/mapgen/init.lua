minetest.clear_registered_biomes()

minetest.register_biome({
	name = "forest",
	node_top = "main:dirt_with_grass",		depth_top = 1,
	node_filler = "main:dirt",			depth_filler = 3,
	height_min = 2,					height_max =40,
	heat_point = 50,				humidity_point = 80,
})

minetest.register_biome({
	name = "meadow",
	node_top = "main:dirt_with_grass",		depth_top = 1,
	node_filler = "main:dirt",			depth_filler = 3,
	height_min = 2,					height_max = 40,
	heat_point = 50,				humidity_point = 30,
})

minetest.register_biome({
	name = "beach",
	node_top = "main:sand",			depth_top = 2,
	height_min = -500,				height_max = 2,
	heat_point = 40,				humidity_point = 50,
})

minetest.register_biome({
	name = "tropical_beach",
	node_top = "main:sand",			depth_top = 5,
	height_min = -500, 				height_max = 3,
	heat_point = 80.0,				humidity_point = 50,
})

minetest.register_biome({
	name = "jungle",
	node_top = "main:dirt_with_grass",		depth_top = 1,
	node_filler = "main:dirt",			depth_filler = 3,
	height_min = 2,					height_max = 40,
	heat_point = 80,				humidity_point = 80,
})

minetest.register_biome({
	name = "desert",
	node_top = "main:desert_sand",		depth_top = 3,
	node_filler = "main:desert_stone",		depth_filler = 57,
	height_min = 2,					height_max = 40,
	heat_point = 80,				humidity_point = 20,
})

minetest.register_biome({
	name = "mountain",
	node_top = "main:snowblock",			depth_top = 1,
	node_filler = "main:dirt_with_snow",		depth_filler = 1,
	height_min = 41,				height_max = 80,
})

minetest.register_biome({
	name = "alpine",
	node_top = "main:snowblock",			depth_top = 1,
	node_filler = "main:dirt_with_snow",		depth_filler = 1,
	height_min = 81,				height_max = 300,
})

minetest.register_biome({
	name = "dune",
	node_top = "main:sand",			depth_top = 3,
	node_filler = "main:dirt",			depth_filler = 2,
	height_min = 1,					height_max = 30,
	heat_point = 10,				humidity_point = 10,
})

minetest.register_biome({
	name = "prairie",
	node_top = "main:dirt_with_grass",		depth_top = 1,
	node_filler = "main:dirt",			depth_filler = 4,
	height_min = 10,				height_max = 40,
	heat_point = 40,				humidity_point = 20,
})

minetest.register_biome({
	name = "papyrus",
	node_top = "main:dirt_with_grass",		depth_top = 1,
	node_filler = "main:dirt",			depth_filler = 2,
	height_min = 1,					height_max = 1,
	heat_point = 60,				humidity_point = 50,
})


minetest.register_decoration({
	deco_type = "schematic",
	place_on = "main:dirt_with_grass", "main:dirt",
	sidelen = 16,
	fill_ratio = 0.005,
	biomes = {"prairie", "forest", "mountain", "meadow"},
	schematic = {
		size = {x=1, y=3, z=1},
		data = {
			{name="air", param1=255, param2=0},
			{name="main:tree", param1=255, param2=0},
			{name="main:leaves", param1=255, param2=0},
		},
	},
})

minetest.register_on_mapgen_init(function(mgparams)
	minetest.set_mapgen_params({mgname="v7"})
end)
