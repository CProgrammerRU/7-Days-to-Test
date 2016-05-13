minetest.register_abm({
	nodenames = {"main:dirt"},
	interval = 1.0,
	chance = 1,
	action = function(pos, node, active_object_count, active_object_count_wider)
		minetest.set_node(pos, {name = "main:dirt_with_grass"})
	end,
}) 
