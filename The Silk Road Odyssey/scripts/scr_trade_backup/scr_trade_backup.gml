// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function scr_traded(){
	
	
//switch trade on and off
if keyboard_check_pressed(vk_tab){
	state = InvStates.def
	scr_move_all_items(inv_trade, inv)
	scr_move_all_items(trader_trade, trader_inv)
}

var price_y = 26

//only show inventory if it is active THIS PROBABLY SHOULD BE A STATE 
if (active = true){
	equipped_item = noone
	//draw basic GUI
	draw_sprite(spr_ship_info_panel_trade,0,vx,vy+vh)
	draw_text(vx-vw-43, vy+vh-40, "lbs:"+ string(total_weight)+" / MAX")
	draw_set_font(fnt_inv_desc)
	draw_set_color(c_ltgray)

	
	//draw traders selected items
	var x_trade = 570
	var y_trade = 400
	
	i = 0
	for (h=0; h< 2; h++){
		for (w=0; w< 5; w++){
			if i <ds_list_size(trader_trade) {
				draw_sprite(spr_item_slot, 0, w*cell_size+vx+x_trade, h*cell_size+vy+y_trade);
				//draw slots
				draw_sprite(ds_list_find_value(trader_trade, i).sprite, 0, w*cell_size+vx+x_trade+16, h*cell_size+vy+y_trade+22);
				draw_text(w*cell_size+vx+x_trade+3, h*cell_size+vy+y_trade, string(ds_list_find_value(trader_trade, i).count));
				draw_set_color(c_white)
				draw_set_font(fnt_inv_price)
				draw_text(w*cell_size+vx+x_trade+3, h*cell_size+vy+y_trade+price_y, string(ds_map_find_value(current_prices,ds_list_find_value(trader_trade, i).title)));
				draw_set_font(fnt_inv_desc)
			}
			i++
		}
	}
	
	//draw your selected items
	var x_trade = 190
	var y_trade = 400
	
	i = 0
	for (h=0; h< 2; h++){
		for (w=0; w< 5; w++){
			if i <ds_list_size(inv_trade) {
				draw_sprite(spr_item_slot, 0, w*cell_size+vx+x_trade, h*cell_size+vy+y_trade);
				//draw slots
				draw_sprite(ds_list_find_value(inv_trade, i).sprite, 0, w*cell_size+vx+x_trade+16, h*cell_size+vy+y_trade+22);
				draw_text(w*cell_size+vx+x_trade+3, h*cell_size+vy+y_trade, string(ds_list_find_value(inv_trade, i).count));
				draw_set_color(c_white)
				draw_set_font(fnt_inv_price)
				draw_text(w*cell_size+vx+x_trade+3, h*cell_size+vy+y_trade+price_y, string(ds_map_find_value(current_prices,ds_list_find_value(inv_trade, i).title)));
				draw_set_font(fnt_inv_desc)
			}
			i++
		}
	}
	
	
	//draw traders items
	x_trade = 390
	y_trade = 130
	
	i = 0
	for (h=0; h< height; h++){
		for (w=0; w< width; w++){
			if i <ds_list_size(trader_inv) {
				draw_sprite(spr_item_slot, 0, w*cell_size+vx+x_trade, h*cell_size+vy+y_trade);
				//draw slots
				draw_set_color(c_ltgray)
				draw_sprite(ds_list_find_value(trader_inv, i).sprite, 0, w*cell_size+vx+x_trade+16, h*cell_size+vy+y_trade+22);
				draw_text(w*cell_size+vx+x_trade+3, h*cell_size+vy+y_trade, string(ds_list_find_value(trader_inv, i).count));
				draw_set_color(c_white)
				draw_set_font(fnt_inv_price)
				draw_text(w*cell_size+vx+x_trade+3, h*cell_size+vy+y_trade+price_y, string(ds_map_find_value(current_prices,ds_list_find_value(trader_inv, i).title)));
				draw_set_font(fnt_inv_desc)
				
				
				
				
				//hover with mouse
				if (mouse_x > w*cell_size+vx+x_trade)
				and (mouse_x < w*cell_size+vx+x_trade+cell_size)
				and(mouse_y > h*cell_size+vy+y_trade)
				and (mouse_y < h*cell_size+y_trade+vy+cell_size){
					
					//draw info box
					draw_sprite(spr_item_profile, 0, vx+xprofile, vy+yprofile)
					draw_sprite(ds_list_find_value(trader_inv, i).sprite, 0, vx+xprofile, vy+yprofile)
					draw_set_color(c_white)
					draw_set_font(fnt_inv_title)
					draw_text(vx+xprofile+ 20, vy+yprofile-20, ds_list_find_value(trader_inv, i).title);
					draw_set_font(fnt_inv_desc)
					draw_set_color(c_ltgray)
					draw_text_ext(vx+xprofile+ 20, vy+yprofile-4, ds_list_find_value(trader_inv, i).desc, 12, 180);
					draw_set_color(c_white)
					draw_set_font(fnt_inv_price)
					draw_text(w*cell_size+vx+x_trade+3, h*cell_size+vy+y_trade+price_y, string(ds_map_find_value(current_prices,ds_list_find_value(trader_inv, i).title)));
					draw_set_font(fnt_inv_desc)
					
					//select item for trade
					draw_text(vx+vw-100, vy+vh-30, "Trade for item")
					if mouse_check_button_pressed(mb_left)or mouse_check_button_pressed(m_scroll_down){
								copy = copy_struct(trader_inv[|i])
								scr_add_item(copy, trader_trade)
								inv_drop_item(i,trader_inv)	
					}
					if mouse_check_button_pressed(mb_right){
								copy = copy_struct(trader_inv[|i])
								scr_add_num_items(copy, trader_trade)
								inv_drop_num_items(i,trader_inv)	
					}
					if mouse_check_button_pressed(mb_right)and mouse_check_button(mb_left){
								copy = copy_struct(trader_inv[|i])
								scr_add_items(copy, trader_trade)
								inv_drop_items(i,trader_inv)	
					}
				}
				
				
				
			}
			i++
		}
	}

	
	y_trade = ypos
	x_trade = xpos
	//draw your inventory
	i = 0
	for (h=0; h< height; h++){
		for (w=0; w< width; w++){
			if i <ds_list_size(inv) {
				
				//draw an empty slot
				draw_sprite(spr_item_slot, 0, w*cell_size+vx+xpos, h*cell_size+vy+ypos);
				
				//draw slots
				draw_sprite(ds_list_find_value(inv, i).sprite, 0, w*cell_size+vx+xpos+16, h*cell_size+vy+ypos+22);
				draw_text(w*cell_size+vx+xpos+3, h*cell_size+vy+ypos, string(ds_list_find_value(inv, i).count));
				draw_set_color(c_white)
				draw_set_font(fnt_inv_price)
				draw_text(w*cell_size+vx+x_trade+3, h*cell_size+vy+y_trade+price_y, string(ds_map_find_value(current_prices,ds_list_find_value(inv, i).title)));
				draw_set_font(fnt_inv_desc)

				
				//hover with mouse
				if (mouse_x > w*cell_size+vx+xpos)
				and (mouse_x < w*cell_size+vx+xpos+cell_size)
				and(mouse_y > h*cell_size+vy+ypos)
				and (mouse_y < h*cell_size+ypos+vy+cell_size){
					
					//draw info box
					draw_sprite(spr_item_profile, 0, vx+xprofile, vy+yprofile)
					draw_sprite(ds_list_find_value(inv, i).sprite, 0, vx+xprofile, vy+yprofile)
					draw_set_color(c_white)
					draw_set_font(fnt_inv_title)
					draw_text(vx+xprofile+ 20, vy+yprofile-20, ds_list_find_value(inv, i).title);
					draw_set_font(fnt_inv_desc)
					draw_set_color(c_ltgray)
					draw_text_ext(vx+xprofile+ 20, vy+yprofile-4, ds_list_find_value(inv, i).desc, 12, 180);

					
					//drop item
					draw_text(vx+vw-90, vy+vh-40, "Drop Item [Q]")
					if (keyboard_check_pressed(ord("Q"))){
						inv_drop_item(i,inv)
					}
					//select item for trading
					draw_text(vx+vw-100, vy+vh-30, "Trade for item")
					if mouse_check_button_pressed(mb_left){
								copy = copy_struct(inv[|i])
								scr_add_item(copy, inv_trade)
								inv_drop_item(i,inv)
								
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


