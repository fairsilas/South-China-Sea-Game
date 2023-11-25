// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_two_direction_sprite(right_facing_moving_sprite){
	sprite_index = right_facing_moving_sprite
	image_speed = 1
	if hspeed >= 0 {
		image_xscale = 1	
	}else{
		image_xscale = -1	
	}
}