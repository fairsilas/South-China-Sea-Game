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
if  (distance_to_object(obj_player) < 100)and(obj_inventory.equipped_item == noone){
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



