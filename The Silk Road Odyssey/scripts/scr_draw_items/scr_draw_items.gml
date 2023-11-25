function scr_draw_items(xx, yy, list, target_list, row_n=5, col_n=2){
	i = 0
	for (h=0; h< col_n; h++){
		for (w=0; w< row_n; w++){
			if i < ds_list_size(list) {
				//draw slots
				draw_sprite(spr_item_slot, 0, w*cell_size+vx+xx, h*cell_size+vy+yy);
				draw_set_color(c_ltgray)
				draw_sprite(ds_list_find_value(list, i).sprite, 0, w*cell_size+vx+xx+16, h*cell_size+vy+yy+22);
				draw_text(w*cell_size+vx+xx+3, h*cell_size+vy+yy, string(ds_list_find_value(list, i).count));
				draw_set_color(c_white)
				draw_set_font(fnt_inv_price)
				if ds_map_find_value(current_prices,ds_list_find_value(list, i).title) != undefined{
					draw_text(w*cell_size+vx+xx+3, h*cell_size+vy+yy+price_y, string(ds_map_find_value(current_prices,ds_list_find_value(list, i).title)));
				}
				
				draw_set_font(fnt_inv_desc)
				
				
				
				
				//hover with mouse
				if (mouse_x > w*cell_size+vx+xx)
				and (mouse_x < w*cell_size+vx+xx+cell_size)
				and(mouse_y > h*cell_size+vy+yy)
				and (mouse_y < h*cell_size+yy+vy+cell_size){
					
					//draw info box
					draw_sprite(spr_item_profile, 0, vx+xprofile, vy+yprofile)
					draw_sprite(ds_list_find_value(list, i).sprite, 0, vx+xprofile, vy+yprofile)
					draw_set_color(c_white)
					draw_set_font(fnt_inv_title)
					draw_text(vx+xprofile+ 20, vy+yprofile-20, ds_list_find_value(list, i).title);
					draw_set_font(fnt_inv_desc)
					draw_set_color(c_ltgray)
					draw_text_ext(vx+xprofile+ 20, vy+yprofile-4, ds_list_find_value(list, i).desc, 12, 180);
					
					//select item for trade
					draw_text(vx+vw-130, vy+vh-40, "Click to Select")
					if mouse_check_button_pressed(mb_left)or mouse_check_button_pressed(m_scroll_down){
								copy = copy_struct(list[|i])
								scr_add_item(copy, target_list)
								inv_drop_item(i,list)	
					}
					if mouse_check_button_pressed(mb_right){
								copy = copy_struct(list[|i])
								scr_add_num_items(copy, target_list,10)
								inv_drop_num_items(i,list,10)	
					}
					if mouse_check_button_pressed(mb_middle) {
								copy = copy_struct(list[|i])
								scr_add_num_items(copy, target_list,100)
								inv_drop_num_items(i,list,100)	
					}
				}
				
				
				
			}
			i++
		}
	}
}