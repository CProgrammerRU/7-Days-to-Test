formspec = "size[8,7.5]" .. "list[current_player;main;0,3.5;8,4;]"
formspec = formspec .. "button[5,0;2,2;plantfiber;Plantfiber]"
formspec = formspec .. "button[5,1;2,2;stick;Stick]"
formspec = formspec .. "button[1,0;2,2;hatchet;Hatchet]"
formspec = formspec .. "button[1,1;2,2;clay;Clay]"
formspec = formspec .. "button[1,2;2,2;cobble; Cobble]"
formspec = formspec .. "button[5,2;2,2;pebble; Pebble]"
minetest.register_on_joinplayer(function(player)
	player:set_inventory_formspec(formspec)
end)
minetest.register_on_player_receive_fields(function(clicker, formname, fields)
					if fields.plantfiber then
						if clicker:get_inventory():contains_item("main", "main:grass") then
							clicker:get_inventory():remove_item("main", "main:grass")
							clicker:get_inventory():add_item("main", "main:plantfiber")
						end
					end
					if fields.stick then
						if clicker:get_inventory():contains_item("main", "main:branch") then
							clicker:get_inventory():remove_item("main", "main:branch")
							clicker:get_inventory():add_item("main", "main:stick")
						end
					end
					if fields.hatchet then
						if clicker:get_inventory():contains_item("main", "main:plantfiber") and 
							clicker:get_inventory():contains_item("main", "main:pebble") and
							clicker:get_inventory():contains_item("main", "main:stick") then
								clicker:get_inventory():remove_item("main", "main:plantfiber")
								clicker:get_inventory():remove_item("main", "main:pebble")
								clicker:get_inventory():remove_item("main", "main:stick")
								clicker:get_inventory():add_item("main", "tools:hatchet")
						end
					end
					if fields.clay then
						if clicker:get_inventory():contains_item("main", "main:clay_lump 9") then
							clicker:get_inventory():remove_item("main", "main:clay_lump 9")
							clicker:get_inventory():add_item("main", "main:clay")
						end
					end
					if fields.cobble then
						if clicker:get_inventory():contains_item("main", "main:pebble 9") then
							clicker:get_inventory():remove_item("main", "main:pebble 9")
							clicker:get_inventory():add_item("main", "main:cobble")
						end
					end
					if fields.pebble then
						if clicker:get_inventory():contains_item("main", "main:cobble") then
							clicker:get_inventory():remove_item("main", "main:cobble")
							clicker:get_inventory():add_item("main", "main:pebble 9")
						end
					end 
	end)