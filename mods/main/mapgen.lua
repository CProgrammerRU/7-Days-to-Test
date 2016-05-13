--
-- Aliases for map generator outputs
--

minetest.register_alias("mapgen_stone", "main:stone")
minetest.register_alias("mapgen_dirt", "main:dirt")
minetest.register_alias("mapgen_dirt_with_grass", "main:dirt_with_grass")
minetest.register_alias("mapgen_sand", "main:sand")
minetest.register_alias("mapgen_water_source", "main:water_source")
minetest.register_alias("mapgen_river_water_source", "main:river_water_source")
minetest.register_alias("mapgen_lava_source", "main:lava_source")
minetest.register_alias("mapgen_gravel", "main:gravel")
minetest.register_alias("mapgen_desert_stone", "main:desert_stone")
minetest.register_alias("mapgen_desert_sand", "main:desert_sand")
minetest.register_alias("mapgen_dirt_with_snow", "main:dirt_with_snow")
minetest.register_alias("mapgen_snowblock", "main:snowblock")
minetest.register_alias("mapgen_snow", "main:snow")
minetest.register_alias("mapgen_ice", "main:ice")
minetest.register_alias("mapgen_sandstone", "main:sandstone")

-- Flora

minetest.register_alias("mapgen_tree", "main:tree")
minetest.register_alias("mapgen_leaves", "main:leaves")
minetest.register_alias("mapgen_apple", "main:apple")
minetest.register_alias("mapgen_jungletree", "main:jungletree")
minetest.register_alias("mapgen_jungleleaves", "main:jungleleaves")
minetest.register_alias("mapgen_junglegrass", "main:junglegrass")
minetest.register_alias("mapgen_pine_tree", "main:pine_tree")
minetest.register_alias("mapgen_pine_needles", "main:pine_needles")

-- Dungeons

minetest.register_alias("mapgen_cobble", "main:cobble")
minetest.register_alias("mapgen_stair_cobble", "stairs:stair_cobble")
minetest.register_alias("mapgen_mossycobble", "main:mossycobble")
minetest.register_alias("mapgen_sandstonebrick", "main:sandstonebrick")
minetest.register_alias("mapgen_stair_sandstonebrick", "stairs:stair_sandstonebrick")


--
-- Register ores
--

-- All mapgens except singlenode
-- Blob ore first to avoid other ores inside blobs

function main.register_ores()

	-- Clay

	minetest.register_ore({ 
		ore_type         = "blob",
		ore              = "main:clay",
		wherein          = {"main:sand"},
		clust_scarcity   = 16 * 16 * 16,
		clust_size       = 5,
		y_min            = -15,
		y_max            = 0,
		noise_threshhold = 0.0,
		noise_params     = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			seed = -316,
			octaves = 1,
			persist = 0.0
		},
	})

	-- Sand

	minetest.register_ore({ 
		ore_type         = "blob",
		ore              = "main:sand",
		wherein          = {"main:stone"},
		clust_scarcity   = 16 * 16 * 16,
		clust_size       = 5,
		y_min            = -31,
		y_max            = 4,
		noise_threshhold = 0.0,
		noise_params     = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			seed = 2316,
			octaves = 1,
			persist = 0.0
		},
	})

	-- Dirt

	minetest.register_ore({
		ore_type         = "blob",
		ore              = "main:dirt",
		wherein          = {"main:stone"},
		clust_scarcity   = 16 * 16 * 16,
		clust_size       = 5,
		y_min            = -31,
		y_max            = 31000,
		noise_threshhold = 0.0,
		noise_params     = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			seed = 17676,
			octaves = 1,
			persist = 0.0
		},
	})

	-- Gravel

	minetest.register_ore({
		ore_type         = "blob",
		ore              = "main:gravel",
		wherein          = {"main:stone"},
		clust_scarcity   = 16 * 16 * 16,
		clust_size       = 5,
		y_min            = -31000,
		y_max            = 31000,
		noise_threshhold = 0.0,
		noise_params     = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			seed = 766,
			octaves = 1,
			persist = 0.0
		},
	})

	-- Coal

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "main:stone_with_coal",
		wherein        = "main:stone",
		clust_scarcity = 8 * 8 * 8,
		clust_num_ores = 8,
		clust_size     = 3,
		y_min          = -31000,
		y_max          = 64,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "main:stone_with_coal",
		wherein        = "main:stone",
		clust_scarcity = 24 * 24 * 24,
		clust_num_ores = 27,
		clust_size     = 6,
		y_min          = -31000,
		y_max          = 0,
	})

	-- Iron

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "main:stone_with_iron",
		wherein        = "main:stone",
		clust_scarcity = 12 * 12 * 12,
		clust_num_ores = 3,
		clust_size     = 2,
		y_min          = -15,
		y_max          = 2,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "main:stone_with_iron",
		wherein        = "main:stone",
		clust_scarcity = 9 * 9 * 9,
		clust_num_ores = 5,
		clust_size     = 3,
		y_min          = -63,
		y_max          = -16,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "main:stone_with_iron",
		wherein        = "main:stone",
		clust_scarcity = 7 * 7 * 7,
		clust_num_ores = 5,
		clust_size     = 3,
		y_min          = -31000,
		y_max          = -64,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "main:stone_with_iron",
		wherein        = "main:stone",
		clust_scarcity = 24 * 24 * 24,
		clust_num_ores = 27,
		clust_size     = 6,
		y_min          = -31000,
		y_max          = -64,
	})

	--Mese

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "main:stone_with_mese",
		wherein        = "main:stone",
		clust_scarcity = 18 * 18 * 18,
		clust_num_ores = 3,
		clust_size     = 2,
		y_min          = -255,
		y_max          = -64,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "main:stone_with_mese",
		wherein        = "main:stone",
		clust_scarcity = 14 * 14 * 14,
		clust_num_ores = 5,
		clust_size     = 3,
		y_min          = -31000,
		y_max          = -256,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "main:mese",
		wherein        = "main:stone",
		clust_scarcity = 36 * 36 * 36,
		clust_num_ores = 3,
		clust_size     = 2,
		y_min          = -31000,
		y_max          = -1024,
	})

	-- Gold

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "main:stone_with_gold",
		wherein        = "main:stone",
		clust_scarcity = 15 * 15 * 15,
		clust_num_ores = 3,
		clust_size     = 2,
		y_min          = -255,
		y_max          = -64,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "main:stone_with_gold",
		wherein        = "main:stone",
		clust_scarcity = 13 * 13 * 13,
		clust_num_ores = 5,
		clust_size     = 3,
		y_min          = -31000,
		y_max          = -256,
	})

	-- Diamond

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "main:stone_with_diamond",
		wherein        = "main:stone",
		clust_scarcity = 17 * 17 * 17,
		clust_num_ores = 4,
		clust_size     = 3,
		y_min          = -255,
		y_max          = -128,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "main:stone_with_diamond",
		wherein        = "main:stone",
		clust_scarcity = 15 * 15 * 15,
		clust_num_ores = 4,
		clust_size     = 3,
		y_min          = -31000,
		y_max          = -256,
	})

	-- Copper

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "main:stone_with_copper",
		wherein        = "main:stone",
		clust_scarcity = 12 * 12 * 12,
		clust_num_ores = 4,
		clust_size     = 3,
		y_min          = -63,
		y_max          = -16,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "main:stone_with_copper",
		wherein        = "main:stone",
		clust_scarcity = 9 * 9 * 9,
		clust_num_ores = 5,
		clust_size     = 3,
		y_min          = -31000,
		y_max          = -64,
	})
end


--
-- Register biomes
--

-- All mapgens except mgv6 and singlenode

function main.register_biomes()
	minetest.clear_registered_biomes()

	-- Permanent ice

	minetest.register_biome({
		name = "glacier",
		node_dust = "main:snowblock",
		node_top = "main:snowblock",
		depth_top = 1,
		node_filler = "main:snowblock",
		depth_filler = 3,
		node_stone = "main:ice",
		node_water_top = "main:ice",
		depth_water_top = 10,
		--node_water = "",
		node_river_water = "main:ice",
		y_min = -8,
		y_max = 31000,
		heat_point = 0,
		humidity_point = 50,
	})

	minetest.register_biome({
		name = "glacier_ocean",
		node_dust = "main:snowblock",
		node_top = "main:sand",
		depth_top = 1,
		node_filler = "main:sand",
		depth_filler = 3,
		--node_stone = "",
		--node_water_top = "",
		--depth_water_top = ,
		--node_water = "",
		--node_river_water = "",
		y_min = -112,
		y_max = -9,
		heat_point = 0,
		humidity_point = 50,
	})

	-- Cold

	minetest.register_biome({
		name = "tundra",
		--node_dust = "",
		node_top = "main:dirt_with_snow",
		depth_top = 1,
		node_filler = "main:dirt",
		depth_filler = 1,
		--node_stone = "",
		--node_water_top = "",
		--depth_water_top = ,
		--node_water = "",
		--node_river_water = "",
		y_min = 2,
		y_max = 31000,
		heat_point = 15,
		humidity_point = 35,
	})

	minetest.register_biome({
		name = "tundra_ocean",
		--node_dust = "",
		node_top = "main:sand",
		depth_top = 1,
		node_filler = "main:sand",
		depth_filler = 3,
		--node_stone = "",
		--node_water_top = "",
		--depth_water_top = ,
		--node_water = "",
		--node_river_water = "",
		y_min = -112,
		y_max = 1,
		heat_point = 15,
		humidity_point = 35,
	})


	minetest.register_biome({
		name = "taiga",
		node_dust = "main:snow",
		node_top = "main:dirt_with_snow",
		depth_top = 1,
		node_filler = "main:dirt",
		depth_filler = 3,
		--node_stone = "",
		--node_water_top = "",
		--depth_water_top = ,
		--node_water = "",
		--node_river_water = "",
		y_min = 2,
		y_max = 31000,
		heat_point = 15,
		humidity_point = 65,
	})

	minetest.register_biome({
		name = "taiga_ocean",
		--node_dust = "",
		node_top = "main:sand",
		depth_top = 1,
		node_filler = "main:sand",
		depth_filler = 3,
		--node_stone = "",
		--node_water_top = "",
		--depth_water_top = ,
		--node_water = "",
		--node_river_water = "",
		y_min = -112,
		y_max = 1,
		heat_point = 15,
		humidity_point = 65,
	})

	-- Temperate

	minetest.register_biome({
		name = "stone_grassland",
		--node_dust = "",
		node_top = "main:dirt_with_grass",
		depth_top = 1,
		node_filler = "main:dirt",
		depth_filler = 1,
		--node_stone = "",
		--node_water_top = "",
		--depth_water_top = ,
		--node_water = "",
		--node_river_water = "",
		y_min = 5,
		y_max = 31000,
		heat_point = 40,
		humidity_point = 35,
	})

	minetest.register_biome({
		name = "stone_grassland_ocean",
		--node_dust = "",
		node_top = "main:sand",
		depth_top = 1,
		node_filler = "main:sand",
		depth_filler = 3,
		--node_stone = "",
		--node_water_top = "",
		--depth_water_top = ,
		--node_water = "",
		--node_river_water = "",
		y_min = -112,
		y_max = 4,
		heat_point = 40,
		humidity_point = 35,
	})


	minetest.register_biome({
		name = "coniferous_forest",
		--node_dust = "",
		node_top = "main:dirt_with_grass",
		depth_top = 1,
		node_filler = "main:dirt",
		depth_filler = 3,
		--node_stone = "",
		--node_water_top = "",
		--depth_water_top = ,
		--node_water = "",
		--node_river_water = "",
		y_min = 5,
		y_max = 31000,
		heat_point = 40,
		humidity_point = 65,
	})

	minetest.register_biome({
		name = "coniferous_forest_ocean",
		--node_dust = "",
		node_top = "main:sand",
		depth_top = 1,
		node_filler = "main:sand",
		depth_filler = 3,
		--node_stone = "",
		--node_water_top = "",
		--depth_water_top = ,
		--node_water = "",
		--node_river_water = "",
		y_min = -112,
		y_max = 4,
		heat_point = 40,
		humidity_point = 65,
	})


	minetest.register_biome({
		name = "sandstone_grassland",
		--node_dust = "",
		node_top = "main:dirt_with_grass",
		depth_top = 1,
		node_filler = "main:dirt",
		depth_filler = 1,
		node_stone = "main:sandstone",
		--node_water_top = "",
		--depth_water_top = ,
		--node_water = "",
		--node_river_water = "",
		y_min = 5,
		y_max = 31000,
		heat_point = 60,
		humidity_point = 35,
	})

	minetest.register_biome({
		name = "sandstone_grassland_ocean",
		--node_dust = "",
		node_top = "main:sand",
		depth_top = 1,
		node_filler = "main:sand",
		depth_filler = 3,
		node_stone = "main:sandstone",
		--node_water_top = "",
		--depth_water_top = ,
		--node_water = "",
		--node_river_water = "",
		y_min = -112,
		y_max = 4,
		heat_point = 60,
		humidity_point = 35,
	})


	minetest.register_biome({
		name = "deciduous_forest",
		--node_dust = "",
		node_top = "main:dirt_with_grass",
		depth_top = 1,
		node_filler = "main:dirt",
		depth_filler = 3,
		--node_stone = "",
		--node_water_top = "",
		--depth_water_top = ,
		--node_water = "",
		--node_river_water = "",
		y_min = 1,
		y_max = 31000,
		heat_point = 60,
		humidity_point = 65,
	})

	minetest.register_biome({
		name = "deciduous_forest_swamp",
		--node_dust = "",
		node_top = "main:dirt",
		depth_top = 1,
		node_filler = "main:dirt",
		depth_filler = 3,
		--node_stone = "",
		--node_water_top = "",
		--depth_water_top = ,
		--node_water = "",
		--node_river_water = "",
		y_min = -3,
		y_max = 0,
		heat_point = 60,
		humidity_point = 65,
	})

	minetest.register_biome({
		name = "deciduous_forest_ocean",
		--node_dust = "",
		node_top = "main:sand",
		depth_top = 1,
		node_filler = "main:sand",
		depth_filler = 3,
		--node_stone = "",
		--node_water_top = "",
		--depth_water_top = ,
		--node_water = "",
		--node_river_water = "",
		y_min = -112,
		y_max = -4,
		heat_point = 60,
		humidity_point = 65,
	})

	-- Hot

	minetest.register_biome({
		name = "desert",
		--node_dust = "",
		node_top = "main:desert_sand",
		depth_top = 1,
		node_filler = "main:desert_sand",
		depth_filler = 1,
		node_stone = "main:desert_stone",
		--node_water_top = "",
		--depth_water_top = ,
		--node_water = "",
		--node_river_water = "",
		y_min = 5,
		y_max = 31000,
		heat_point = 85,
		humidity_point = 20,
	})

	minetest.register_biome({
		name = "desert_ocean",
		--node_dust = "",
		node_top = "main:sand",
		depth_top = 1,
		node_filler = "main:sand",
		depth_filler = 3,
		node_stone = "main:desert_stone",
		--node_water_top = "",
		--depth_water_top = ,
		--node_water = "",
		--node_river_water = "",
		y_min = -112,
		y_max = 4,
		heat_point = 85,
		humidity_point = 20,
	})


	minetest.register_biome({
		name = "savanna",
		--node_dust = "",
		node_top = "main:dirt_with_dry_grass",
		depth_top = 1,
		node_filler = "main:dirt",
		depth_filler = 1,
		--node_stone = "",
		--node_water_top = "",
		--depth_water_top = ,
		--node_water = "",
		--node_river_water = "",
		y_min = 1,
		y_max = 31000,
		heat_point = 85,
		humidity_point = 50,
	})

	minetest.register_biome({
		name = "savanna_swamp",
		--node_dust = "",
		node_top = "main:dirt",
		depth_top = 1,
		node_filler = "main:dirt",
		depth_filler = 3,
		--node_stone = "",
		--node_water_top = "",
		--depth_water_top = ,
		--node_water = "",
		--node_river_water = "",
		y_min = -3,
		y_max = 0,
		heat_point = 85,
		humidity_point = 50,
	})

	minetest.register_biome({
		name = "savanna_ocean",
		--node_dust = "",
		node_top = "main:sand",
		depth_top = 1,
		node_filler = "main:sand",
		depth_filler = 3,
		--node_stone = "",
		--node_water_top = "",
		--depth_water_top = ,
		--node_water = "",
		--node_river_water = "",
		y_min = -112,
		y_max = -4,
		heat_point = 85,
		humidity_point = 50,
	})


	minetest.register_biome({
		name = "rainforest",
		--node_dust = "",
		node_top = "main:dirt_with_grass",
		depth_top = 1,
		node_filler = "main:dirt",
		depth_filler = 3,
		--node_stone = "",
		--node_water_top = "",
		--depth_water_top = ,
		--node_water = "",
		--node_river_water = "",
		y_min = 1,
		y_max = 31000,
		heat_point = 85,
		humidity_point = 80,
	})

	minetest.register_biome({
		name = "rainforest_swamp",
		--node_dust = "",
		node_top = "main:dirt",
		depth_top = 1,
		node_filler = "main:dirt",
		depth_filler = 3,
		--node_stone = "",
		--node_water_top = "",
		--depth_water_top = ,
		--node_water = "",
		--node_river_water = "",
		y_min = -3,
		y_max = 0,
		heat_point = 85,
		humidity_point = 80,
	})

	minetest.register_biome({
		name = "rainforest_ocean",
		--node_dust = "",
		node_top = "main:sand",
		depth_top = 1,
		node_filler = "main:sand",
		depth_filler = 3,
		--node_stone = "",
		--node_water_top = "",
		--depth_water_top = ,
		--node_water = "",
		--node_river_water = "",
		y_min = -112,
		y_max = -4,
		heat_point = 85,
		humidity_point = 80,
	})

	-- Underground

	minetest.register_biome({
		name = "underground",
		--node_dust = "",
		--node_top = "",
		--depth_top = ,
		--node_filler = "",
		--depth_filler = ,
		--node_stone = "",
		--node_water_top = "",
		--depth_water_top = ,
		--node_water = "",
		--node_river_water = "",
		y_min = -31000,
		y_max = -113,
		heat_point = 50,
		humidity_point = 50,
	})
end


--
-- Register decorations
--

-- Mgv6

function main.register_mgv6_decorations()
	minetest.clear_registered_decorations()

	-- Papyrus

	minetest.register_decoration({
		deco_type = "simple",
		place_on = {"main:dirt_with_grass"},
		sidelen = 16,
		noise_params = {
			offset = -0.3,
			scale = 0.7,
			spread = {x = 100, y = 100, z = 100},
			seed = 354,
			octaves = 3,
			persist = 0.7
		},
		y_min = 1,
		y_max = 1,
		decoration = "main:papyrus",
		height = 2,
		height_max = 4,
		spawn_by = "main:water_source",
		num_spawn_by = 1,
	})

	-- Cacti

	minetest.register_decoration({
		deco_type = "simple",
		place_on = {"main:desert_sand"},
		sidelen = 16,
		noise_params = {
			offset = -0.012,
			scale = 0.024,
			spread = {x = 100, y = 100, z = 100},
			seed = 230,
			octaves = 3,
			persist = 0.6
		},
		y_min = 1,
		y_max = 30,
		decoration = "main:cactus",
		height = 3,
	        height_max = 4,
	})

	-- Long grasses

	for length = 1, 5 do
		minetest.register_decoration({
			deco_type = "simple",
			place_on = {"main:dirt_with_grass"},
			sidelen = 16,
			noise_params = {
				offset = 0,
				scale = 0.007,
				spread = {x = 100, y = 100, z = 100},
				seed = 329,
				octaves = 3,
				persist = 0.6
			},
			y_min = 1,
			y_max = 30,
			decoration = "main:grass_"..length,
		})
	end
	

		
	-- Dry shrubs

	minetest.register_decoration({
		deco_type = "simple",
		place_on = {"main:desert_sand", "main:dirt_with_snow"},
		sidelen = 16,
		noise_params = {
			offset = 0,
			scale = 0.035,
			spread = {x = 100, y = 100, z = 100},
			seed = 329,
			octaves = 3,
			persist = 0.6
		},
		y_min = 1,
		y_max = 30,
		decoration = "main:dry_shrub",
	})
end

-- All mapgens except mgv6 and singlenode

local function register_grass_decoration(offset, scale, length)
	minetest.register_decoration({
		deco_type = "simple",
		place_on = {"main:dirt_with_grass", "main:sand"},
		sidelen = 16,
		noise_params = {
			offset = offset,
			scale = scale,
			spread = {x = 200, y = 200, z = 200},
			seed = 329,
			octaves = 3,
			persist = 0.6
		},
		biomes = {"stone_grassland", "sandstone_grassland",
			"deciduous_forest", "coniferous_forest"},
		y_min = 1,
		y_max = 31000,
		decoration = "main:grass_"..length,
	})
end

local function register_dry_grass_decoration(offset, scale, length)
	minetest.register_decoration({
		deco_type = "simple",
		place_on = {"main:dirt_with_dry_grass"},
		sidelen = 16,
		noise_params = {
			offset = offset,
			scale = scale,
			spread = {x = 200, y = 200, z = 200},
			seed = 329,
			octaves = 3,
			persist = 0.6
		},
		biomes = {"savanna"},
		y_min = 1,
		y_max = 31000,
		decoration = "main:dry_grass_"..length,
	})
end

function main.register_decorations()
	minetest.clear_registered_decorations()

	-- Apple tree

	minetest.register_decoration({
		deco_type = "schematic",
		place_on = {"main:dirt_with_grass"},
		sidelen = 16,
		noise_params = {
			offset = 0.04,
			scale = 0.02,
			spread = {x = 250, y = 250, z = 250},
			seed = 2,
			octaves = 3,
			persist = 0.66
		},
		biomes = {"deciduous_forest"},
		y_min = 1,
		y_max = 31000,
		schematic = minetest.get_modpath("main").."/schematics/apple_tree.mts",
		flags = "place_center_x, place_center_z",
	})

	-- Jungle tree

	minetest.register_decoration({
		deco_type = "schematic",
		place_on = {"main:dirt_with_grass", "main:dirt"},
		sidelen = 80,
		fill_ratio = 0.09,
		biomes = {"rainforest", "rainforest_swamp"},
		y_min = 0,
		y_max = 31000,
		schematic = minetest.get_modpath("main").."/schematics/jungle_tree.mts",
		flags = "place_center_x, place_center_z",
		rotation = "random",
	})

	-- Taiga and temperate coniferous forest pine tree

	minetest.register_decoration({
		deco_type = "schematic",
		place_on = {"main:dirt_with_snow", "main:dirt_with_grass"},
		sidelen = 16,
		noise_params = {
			offset = 0.04,
			scale = 0.02,
			spread = {x = 250, y = 250, z = 250},
			seed = 2,
			octaves = 3,
			persist = 0.66
		},
		biomes = {"taiga", "coniferous_forest"},
		y_min = 2,
		y_max = 31000,
		schematic = minetest.get_modpath("main").."/schematics/pine_tree.mts",
		flags = "place_center_x, place_center_z",
	})

	-- Acacia tree

	minetest.register_decoration({
		deco_type = "schematic",
		place_on = {"main:dirt_with_dry_grass"},
		sidelen = 16,
		noise_params = {
			offset = 0,
			scale = 0.002,
			spread = {x = 250, y = 250, z = 250},
			seed = 2,
			octaves = 3,
			persist = 0.66
		},
		biomes = {"savanna"},
		y_min = 1,
		y_max = 31000,
		schematic = minetest.get_modpath("main").."/schematics/acacia_tree.mts",
		flags = "place_center_x, place_center_z",
		rotation = "random",
	})

	-- Large cactus

	minetest.register_decoration({
		deco_type = "schematic",
		place_on = {"main:desert_sand"},
		sidelen = 16,
		noise_params = {
			offset = -0.0003,
			scale = 0.0009,
			spread = {x = 200, y = 200, z = 200},
			seed = 230,
			octaves = 3,
			persist = 0.6
		},
		biomes = {"desert"},
		y_min = 5,
		y_max = 31000,
		schematic = minetest.get_modpath("main").."/schematics/large_cactus.mts",
		flags = "place_center_x",
		rotation = "random",
	})

	-- Cactus

	minetest.register_decoration({
		deco_type = "simple",
		place_on = {"main:desert_sand"},
		sidelen = 16,
		noise_params = {
			offset = -0.0003,
			scale = 0.0009,
			spread = {x = 200, y = 200, z = 200},
			seed = 230,
			octaves = 3,
			persist = 0.6
		},
		biomes = {"desert"},
		y_min = 5,
		y_max = 31000,
		decoration = "main:cactus",
		height = 2,
		height_max = 5,
	})

	-- Papyrus

	minetest.register_decoration({
		deco_type = "schematic",
		place_on = {"main:dirt"},
		sidelen = 16,
		noise_params = {
			offset = -0.3,
			scale = 0.7,
			spread = {x = 200, y = 200, z = 200},
			seed = 354,
			octaves = 3,
			persist = 0.7
		},
		biomes = {"savanna_swamp"},
		y_min = 0,
		y_max = 0,
		schematic = minetest.get_modpath("main").."/schematics/papyrus.mts",
	})

	-- Grasses

	register_grass_decoration(-0.03,  0.09,  5)
	register_grass_decoration(-0.015, 0.075, 4)
	register_grass_decoration(0,      0.06,  3)
	register_grass_decoration(0.015,  0.045, 2)
	register_grass_decoration(0.03,   0.03,  1)

	-- Dry grasses

	register_dry_grass_decoration(0.01, 0.05,  5)
	register_dry_grass_decoration(0.03, 0.03,  4)
	register_dry_grass_decoration(0.05, 0.01,  3)
	register_dry_grass_decoration(0.07, -0.01, 2)
	register_dry_grass_decoration(0.09, -0.03, 1)

	-- Junglegrass

	minetest.register_decoration({
		deco_type = "simple",
		place_on = {"main:dirt_with_grass"},
		sidelen = 80,
		fill_ratio = 0.1,
		biomes = {"rainforest"},
		y_min = 1,
		y_max = 31000,
		decoration = "main:junglegrass",
	})

	-- Dry shrub

	minetest.register_decoration({
		deco_type = "simple",
		place_on = {"main:desert_sand", "main:dirt_with_snow"},
		sidelen = 16,
		noise_params = {
			offset = 0,
			scale = 0.02,
			spread = {x = 200, y = 200, z = 200},
			seed = 329,
			octaves = 3,
			persist = 0.6
		},
		biomes = {"desert", "tundra"},
		y_min = 2,
		y_max = 31000,
		decoration = "main:dry_shrub",
	})
end


--
-- Generate nyan cats
--

-- All mapgens except singlenode

function main.make_nyancat(pos, facedir, length)
	local tailvec = {x = 0, y = 0, z = 0}
	if facedir == 0 then
		tailvec.z = 1
	elseif facedir == 1 then
		tailvec.x = 1
	elseif facedir == 2 then
		tailvec.z = -1
	elseif facedir == 3 then
		tailvec.x = -1
	else
		facedir = 0
		tailvec.z = 1
	end
	local p = {x = pos.x, y = pos.y, z = pos.z}
	minetest.set_node(p, {name = "main:nyancat", param2 = facedir})
	for i = 1, length do
		p.x = p.x + tailvec.x
		p.z = p.z + tailvec.z
		minetest.set_node(p, {name = "main:nyancat_rainbow", param2 = facedir})
	end
end

function main.generate_nyancats(minp, maxp, seed)
	local height_min = -31000
	local height_max = -32
	if maxp.y < height_min or minp.y > height_max then
		return
	end
	local y_min = math.max(minp.y, height_min)
	local y_max = math.min(maxp.y, height_max)
	local volume = (maxp.x - minp.x + 1) * (y_max - y_min + 1) * (maxp.z - minp.z + 1)
	local pr = PseudoRandom(seed + 9324342)
	local max_num_nyancats = math.floor(volume / (16 * 16 * 16))
	for i = 1, max_num_nyancats do
		if pr:next(0, 1000) == 0 then
			local x0 = pr:next(minp.x, maxp.x)
			local y0 = pr:next(minp.y, maxp.y)
			local z0 = pr:next(minp.z, maxp.z)
			local p0 = {x = x0, y = y0, z = z0}
			main.make_nyancat(p0, pr:next(0, 3), pr:next(3, 15))
		end
	end
end


--
-- Detect mapgen to select functions
--

-- Mods using singlenode mapgen can call these functions to enable
-- the use of minetest.generate_ores or minetest.generate_decorations

