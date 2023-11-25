draw_self()

//create button
var w = 64
var h = 64
var bx = x;
var by = y-100;

//show button
if  (distance_to_object(obj_player) < 100)and (current_state = land_npc_states.idle){
	
	
	//open dialog of trade with trader
	var i = my_inventory
	var my_p = my_prices
	if (mouse_x < bx+(w/2))and (mouse_x > bx-(w/2)) and (mouse_y < by+(h/2))and (mouse_y > by-(h/2)){
		draw_sprite(spr_dialogue_button,1,bx,by)
		if mouse_check_button_pressed(mb_left){
			scr_start_dialogue(ls,profile)
			with(obj_inventory){
				trader_inv = i
				current_prices = my_p
			}
		}
	}else{
		draw_sprite(spr_dialogue_button,0,bx,by)	
	}
}

scr_draw_shadow()
depth = -y

