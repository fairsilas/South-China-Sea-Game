if (global.can_move = true){
	
	
	if (current_state = player_state.move){
		scr_player_move()
	}else
	if (current_state = player_state.stab){
		speed = 0
		image_speed = 1
		if image_index >= image_number -2{
			current_state = player_state.move
			if (sprite_index = spr_player_right_stab){
				sprite_index = spr_player_right
			}else{
				sprite_index = spr_player_left
			}
		}
	}
}else{
	image_index = 0
	speed = 0
}




