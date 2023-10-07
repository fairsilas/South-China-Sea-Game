// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function scr_trade(){
if (active = true){
	//draw basic GUI
	draw_sprite(spr_ship_info_panel_trade,0,vx,vy+vh)
	
	//draw slots
	i = 0
	for (h=0; h< height; h++){
		for (w=0; w< width; w++){
			if i <ds_list_size(inv) {
				draw_sprite(spr_item_slot, 0, w*cell_size+vx+xpos, h*cell_size+vy+ypos);
				//draw slots
				draw_sprite(ds_list_find_value(inv, i).sprite, 0, w*cell_size+vx+xpos+16, h*cell_size+vy+ypos+22);
				draw_set_font(fnt_inv_desc)
				draw_set_color(c_ltgray)
				draw_text(w*cell_size+vx+xpos+3, h*cell_size+vy+ypos, string(ds_list_find_value(inv, i).count));
				

				
				//hover with mouse
				if (mouse_x > w*cell_size+vx+xpos)
				and (mouse_x < w*cell_size+vx+xpos+cell_size)
				and(mouse_y > h*cell_size+vy+ypos)
				and (mouse_y < h*cell_size+ypos+vy+cell_size){
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
					draw_text(vx+vw-90, vy+vh-40, "Drop Item [Q]")
					if (keyboard_check_pressed(ord("Q"))){
						inv_drop_item(i,inv)
						i = 0
					}
						
					//select item for trading
					draw_text(vx+vw-100, vy+vh-30, "Trade for item")
					if mouse_check_button_pressed(mb_left){
							scr_add_item(ds_list_find_value(inv,i),trader_trade)
							inv_drop_item(i, inv)
							

					}
					
					}
				}else{
					return;	
				}
				i++
			}
		}
		
		
		
		
		
		
		
		
		
		
	}
}

