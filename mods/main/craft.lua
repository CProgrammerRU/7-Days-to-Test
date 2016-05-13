minetest.register_craft({
	output = 'main:stick',
	recipe = {
		{'main:branch'},
	}
}) 

minetest.register_craft({
	output = 'main:plantfiber',
	recipe = {
		{'main:grass'},
	}
}) 
 
minetest.register_craft({
	output = "main:cobble",
	recipe = {
		{"main:pebble", "main:pebble", "main:pebble"},
		{"main:pebble", "main:pebble", "main:pebble"},
		{"main:pebble", "main:pebble", "main:pebble"},
	}
})

minetest.register_craft({
	output = "main:clay",
	recipe = {
		{"main:clay_lump", "main:clay_lump", "main:clay_lump"},
		{"main:clay_lump", "main:clay_lump", "main:clay_lump"},
		{"main:clay_lump", "main:clay_lump", "main:clay_lump"},
	}
})

minetest.register_craft({
	output = "main:pebble 9",
	recipe = {
		{"main:cobble"},
	}
})
