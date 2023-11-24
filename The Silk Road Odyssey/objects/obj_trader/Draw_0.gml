angle = image_angle

draw_sprite_ext(sprite_index, image_index,x,y+4,image_xscale,image_yscale,angle,c_black, 0.1)
draw_sprite_ext(sprite_index, image_index,x+2,y+8,image_xscale,image_yscale,angle,c_black, 0.1)
draw_sprite_ext(sprite_index, image_index,x-2,y-2,image_xscale,image_yscale,angle,c_black, 0.1)

draw_sprite_ext(sprite_index, image_index,x,y,image_xscale,image_yscale,angle,image_blend,image_alpha)


//create button
var w = 64
var h = 64
var bx = x;
var by = y-64;

//show button
if  (distance_to_object(obj_ship) < 100)and(obj_inventory.equipped_item == noone)and(obj_inventory.currentInvState == state.idle){
	if (relationship >= 50){
			//open dialog of trade with trader
			var i = my_inventory
			var my_p = my_prices
			if (mouse_x < bx+(w/2))and (mouse_x > bx-(w/2)) and (mouse_y < by+(h/2))and (mouse_y > by-(h/2)){
				draw_sprite(spr_dialogue_button,1,bx,by)
				if mouse_check_button_pressed(mb_left){
					scr_start_dialogue(default_ls,profile)
					with(obj_inventory){
						trader_inv = i
						current_prices = my_p
					}
				}
			}else{
				draw_sprite(spr_dialogue_button,0,bx,by)
			}
	}else{
	//no dialogue if trader is angry
		draw_sprite(spr_dialogue_button_angry,0,bx,by)
		current_state = ship_states.flee
	}
}



