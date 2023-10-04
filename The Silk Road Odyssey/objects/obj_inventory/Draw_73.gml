
if (active = true){
	draw_sprite(spr_ship_info_panel,0,vx,vy+vh)
	draw_text(vx-vw+43, vy+vh-40, "lbs:"+ string(total_weight)+" / MAX")
	i = 0
	for (h=0; h< height; h++){
		for (w=0; w< width; w++){
			if i <ds_list_size(inv) {
				draw_sprite(spr_item_slot, 0, w*cell_size+vx+xpos, h*cell_size+vy+ypos);
			}
			i++
		}
	}
	
	i = 0
	for (h=0; h< height; h++){
		for (w=0; w< width; w++){
			if i < ds_list_size(inv){
				if (equipped_item = ds_list_find_value(inv, i)){
					draw_sprite(spr_item_equipped, 0, w*cell_size+vx+xpos, h*cell_size+vy+ypos);
				}
				draw_sprite(ds_list_find_value(inv, i).sprite, 0, w*cell_size+vx+xpos+16, h*cell_size+vy+ypos+22);
				draw_set_font(fnt_inv_desc)
				draw_set_color(c_ltgray)
				draw_text(w*cell_size+vx+xpos+3, h*cell_size+vy+ypos, string(ds_list_find_value(inv, i).count));
				
				//hover with mouse
				if (mouse_x > w*cell_size+vx+xpos)and (mouse_x < w*cell_size+vx+xpos+cell_size)and(mouse_y > h*cell_size+vy+ypos)and (mouse_y < h*cell_size+ypos+vy+cell_size){
						draw_sprite(spr_item_profile, 0, vx+xprofile, vy+yprofile)
						draw_sprite(ds_list_find_value(inv, i).sprite, 0, vx+xprofile, vy+yprofile)
						draw_set_color(c_white)
						draw_set_font(fnt_inv_title)
						draw_text(vx+xprofile+ 20, vy+yprofile-20, ds_list_find_value(inv, i).title);
						
						draw_set_font(fnt_inv_desc)
						draw_set_color(c_ltgray)
						draw_text_ext(vx+xprofile+ 20, vy+yprofile-4, ds_list_find_value(inv, i).desc, 12, 180);
						draw_set_color(c_white)
						//drop item
						draw_set_font(fnt_inv_desc)
						draw_text(vw-90, vh-40, "Drop Item [Q]")
						if (keyboard_check_pressed(ord("Q"))){
							inv_drop_item(i)
						}
						
						//select and equip an item
						if (mouse_check_button_pressed(mb_left)){
							
								if equipped_item != ds_list_find_value(inv, i){
									equipped_item = ds_list_find_value(inv, i)
								}else{
									equipped_item = noone
								}
						}
						
						
						
				
				
				}
			}else{
				return;	
			}
			i++
		}
	}
}