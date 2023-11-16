// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_player_move(){
	var up = (keyboard_check(vk_up) or keyboard_check(ord("W")))and !place_meeting(x,y-sprint_spd,obj_solid)
	var down = (keyboard_check(vk_down) or keyboard_check(ord("S")))and !place_meeting(x,y+sprint_spd,obj_solid)
	var left = (keyboard_check(vk_left) or keyboard_check(ord("A")))and !place_meeting(x-sprint_spd,y,obj_solid)
	var right = (keyboard_check(vk_right) or keyboard_check(ord("D")))and !place_meeting(x+sprint_spd,y,obj_solid)
	var sprint = keyboard_check(vk_shift)
	
	//sprinting
	if sprint{
		if (up){
			y-=sprint_spd	
			sprite_index = spr_player_up_sprint
		}
	
		if (down){
			y+=sprint_spd	
			sprite_index = spr_player_down_sprint
		}
	
		if (left){
			x-=sprint_spd	
			sprite_index = spr_player_left_sprint
		}
	
		if (right){
			x+=sprint_spd
			sprite_index = spr_player_right_sprint
		}
	}
	//walking
	if !sprint{
		if (up){
			y-=walk_spd	
			sprite_index = spr_player_up
		}
	
		if (down){
			y+=walk_spd	
			sprite_index = spr_player_down
		}
	
		if (left){
			x-=walk_spd	
			sprite_index = spr_player_left
		}
	
		if (right){
			x+=walk_spd
			sprite_index = spr_player_right
		}
	}
	
	
	
	if (up or down or left or right){
		image_speed = 1	
		//create footstep dust
		if (steps == 0 and floor(image_index) = 0){
			steps = 1
			instance_create_depth(x,y,depth+1, obj_player_dust)	
		}
		if (steps == 1 and floor(image_index) = 2){
			steps = 0
			instance_create_depth(x,y,depth+1, obj_player_dust)	
		}

	}else{
		steps = 0
		image_index = 0
		image_speed = 0
	}
}