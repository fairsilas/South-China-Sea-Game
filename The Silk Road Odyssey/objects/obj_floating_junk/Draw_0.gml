angle = image_angle

draw_self()

//create button
var w = 64
var h = 64
var bx = x;
var by = y-64;

//show button
if  (distance_to_object(obj_player) < 100){
	if (can_board = true){
			//open dialog of trade with trader
			if (mouse_x < bx+(w/2))and (mouse_x > bx-(w/2)) and (mouse_y < by+(h/2))and (mouse_y > by-(h/2)){
				draw_sprite(spr_boat_board_button,1,bx,by)
				if mouse_check_button_pressed(mb_left){
					room_goto(rm_map)
				}
			}else{
				draw_sprite(spr_boat_board_button,0,bx,by)	
			}
	}else{
	//no dialogue if trader is angry
		draw_sprite(spr_dialogue_button_angry,0,bx,by)	
	}
}



