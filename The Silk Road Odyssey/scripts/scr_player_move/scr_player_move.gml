// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_player_move(){
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

	}else{
		image_index = 0
		image_speed = 0
	}
}