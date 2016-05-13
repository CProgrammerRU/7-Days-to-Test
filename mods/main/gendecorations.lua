minetest.register_decoration({
	deco_type = "simple",
	place_on = {"main:dirt_with_grass", "main:dirt", "main:stone"},
	sidelen = 16,
	noise_params = {
		offset = -0.01,
		scale = 0.03,
		spread = {x=50, y=50, z=50},
		seed = seed,
		octaves = 3,
		persist = 0.6
	},
	y_min = 6,
	y_max = 31000,
	decoration = "main:pebble",
}) 

minetest.register_decoration({
	deco_type = "simple",
	place_on = {"main:dirt_with_grass", "main:dirt", "main:stone"},
	sidelen = 16,
	noise_params = {
		offset = -0.01,
		scale = 0.03,
		spread = {x=50, y=50, z=50},
		seed = seed,
		octaves = 3,
		persist = 0.6
	},
	y_min = 6,
	y_max = 31000,
	decoration = "main:rock",
}) 

minetest.register_decoration({
	deco_type = "simple",
	place_on = {"main:dirt_with_grass", "main:dirt"},
	sidelen = 16,
	noise_params = {
		offset = -0.01,
		scale = 0.03,
		spread = {x=50, y=50, z=50},
		seed = seed,
		octaves = 3,
		persist = 0.6
	},
	y_min = 6,
	y_max = 31000,
	decoration = "main:grass",
}) 