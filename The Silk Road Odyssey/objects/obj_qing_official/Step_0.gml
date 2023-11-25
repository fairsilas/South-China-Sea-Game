//
if (current_state = land_npc_states.idle){
	image_xscale = 1
	if obj_player.x < x {
		image_xscale = -1	
	}
// wander around
}else if (current_state = land_npc_states.wander){
	image_xscale = 1
	if hspeed < 0 {
		image_xscale = -1	
	}
	
//run to nearest exit
}else if (current_state = land_npc_states.flee){
	
	if (place_meeting(x,y,obj_room_door)){
		image_alpha-=0.05
		speed = 0
	}
	if (image_alpha < 0){
		instance_destroy()
	}
	var nearest_door = instance_nearest(x,y, obj_room_door)
	scr_follow_target(nearest_door.x, nearest_door.y)
	scr_two_direction_sprite(spr_qing_official_charge)
	
}

//chase the player
else if (current_state = land_npc_states.chase){
	if (place_meeting(x,y,obj_room_door)){
		image_alpha-=0.05
		speed = 0
	}
	if (image_alpha < 0){
		instance_destroy()
	}
	scr_follow_target(obj_player.x, obj_player.y)
	scr_two_direction_sprite(spr_giant_chest_profile)
	
}


