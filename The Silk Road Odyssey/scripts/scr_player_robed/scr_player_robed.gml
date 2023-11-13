// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_player_robed(){
	var up = (keyboard_check(vk_up) or keyboard_check(ord("W")))and !place_meeting(x,y-spd,obj_solid)
	var down = (keyboard_check(vk_down) or keyboard_check(ord("S")))and !place_meeting(x,y+spd,obj_solid)
	var left = (keyboard_check(vk_left) or keyboard_check(ord("A")))and !place_meeting(x-spd,y,obj_solid)
	var right = (keyboard_check(vk_right) or keyboard_check(ord("D")))and !place_meeting(x+spd,y,obj_solid)
	
	if (up){
		y-=spd	
		sprite_index = spr_player_up
	}
	
	if (down){
		y+=spd	
		sprite_index = spr_player_down
	}
	
	if (left){
		x-=spd	
		sprite_index = spr_player_left
	}
	
	if (right){
		x+=spd
		sprite_index = spr_player_right
	}
	
	if (up or down or left or right){
		image_speed = 1	
		if (footstep_printed != round(image_index))and round(image_index)!=0{
			footstep_printed = round(image_index)
			if (round(image_index)%2 == 0){
				var y_o = -3
			}else{
				var y_o = 0
				
			}
			var x_o = random_range(-3,3)
			
			with(instance_create_depth(x+x_o,y+y_o,depth+10,obj_footstep)){
				if (up){image_angle = 90}
				if (left){image_angle = 180}
				if (right){image_angle = 0}
				if (down){image_angle = 270}
			}
		}

	}else{
		image_index = 0
		image_speed = 0
	}
}