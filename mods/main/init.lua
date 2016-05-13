main = {} 
main.LIGHT_MAX = 14
main.gui_bg = "bgcolor[#080808BB;true]"
main.gui_bg_img = "background[5,5;1,1;gui_formbg.png;true]"
main.gui_slots = "listcolors[#00000069;#5A5A5A;#141318;#30434C;#FFF]"

function main.get_hotbar_bg(x,y)
	local out = ""
	for i=0,7,1 do
		out = out .."image["..x+i..","..y..";1,1;gui_hb_bg.png]"
	end
	return out
end

main.gui_survival_form = "size[8,8.5]"..
			main.gui_bg..
			main.gui_bg_img..
			main.gui_slots..
			"list[current_player;main;0,4.25;8,1;]"..
			"list[current_player;main;0,5.5;8,3;8]"..
			"list[current_player;craft;1.75,0.5;3,3;]"..
			"list[current_player;craftpreview;5.75,1.5;1,1;]"..
			"image[4.75,1.5;1,1;gui_furnace_arrow_bg.png^[transformR270]"..
			"listring[current_player;main]"..
			"listring[current_player;craft]"..
			main.get_hotbar_bg(0,4.25)

dofile(minetest.get_modpath("main").."/nodes.lua")
dofile(minetest.get_modpath("main").."/player.lua")
dofile(minetest.get_modpath("main").."/mapgen.lua")
dofile(minetest.get_modpath("main").."/gendecorations.lua")
dofile(minetest.get_modpath("main").."/items.lua")
dofile(minetest.get_modpath("main").."/craft.lua")
dofile(minetest.get_modpath("main").."/functions.lua")
dofile(minetest.get_modpath("main").."/inventory.lua")
