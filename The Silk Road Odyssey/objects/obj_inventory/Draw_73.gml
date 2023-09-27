
if (active = true){
	draw_sprite(spr_ship_info_panel,0,vx,vy+vh)
	i = 0
	for (h=0; h< height; h++){
		for (w=0; w< width; w++){
			if i <ds_list_size(title) {
				draw_sprite(spr_item_slot, 0, w*cell_size+vx+xpos, h*cell_size+vy+ypos);
			}
			i++
		}
	}
	
	i = 0
	for (h=0; h< height; h++){
		for (w=0; w< width; w++){
			if i < ds_list_size(title){
				if (equipped_item = ds_list_find_value(title, i)){
					draw_sprite(spr_item_equipped, 0, w*cell_size+vx+xpos, h*cell_size+vy+ypos);
				}
				draw_sprite(ds_list_find_value(sprite, i), 0, w*cell_size+vx+xpos+16, h*cell_size+vy+ypos+22);
				draw_set_font(fnt_inv_desc)
				draw_set_color(c_ltgray)
				draw_text(w*cell_size+vx+xpos, h*cell_size+vy+ypos, string(ds_list_find_value(count, i)));
				
				//hover with mouse
				if (mouse_x > w*cell_size+vx+xpos)and (mouse_x < w*cell_size+vx+xpos+cell_size)and(mouse_y > h*cell_size+vy+ypos)and (mouse_y < h*cell_size+ypos+vy+cell_size){
						draw_sprite(spr_item_profile, 0, vx+xprofile, vy+yprofile)
						draw_sprite(ds_list_find_value(sprite, i), 0, vx+xprofile, vy+yprofile)
						draw_set_color(c_white)
						draw_set_font(fnt_inv_title)
						draw_text(vx+xprofile+ 20, vy+yprofile-20, ds_list_find_value(title, i));
						
						draw_set_font(fnt_inv_desc)
						draw_set_color(c_ltgray)
						draw_text_ext(vx+xprofile+ 20, vy+yprofile-4, ds_list_find_value(description, i), 12, 180);
						draw_set_color(c_white)
						//drop item
						draw_set_font(fnt_inv_desc)
						draw_text(vw-90, vh-50, "Drop Item [Q]")
						if (keyboard_check_pressed(ord("Q"))){
							inv_drop_item(i)
						}
						if (mouse_check_button_pressed(mb_left)){
							
								if equipped_item != ds_list_find_value(title, i){
									equipped_item = ds_list_find_value(title, i)
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