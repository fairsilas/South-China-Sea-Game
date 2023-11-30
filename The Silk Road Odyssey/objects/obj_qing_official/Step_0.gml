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
	
//flee
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
	scr_two_direction_sprite(spr_qing_official_walk)
}

//chase
else if (current_state = land_npc_states.chase){
	if distance_to_object(obj_player) < 30{
		current_state = land_npc_states.attack
		image_index = 0
		speed = 0
	}else{
	scr_follow_target(obj_player.x, obj_player.y, spd)
	scr_two_direction_sprite(spr_qing_official_charge)
	}
}

//follow 
else if (current_state = land_npc_states.follow){
	scr_follow_target(obj_player.x, obj_player.y,walk_spd)
	scr_two_direction_sprite(spr_qing_official_walk)
	if (distance_to_object(obj_player) < 20){
			scr_start_dialogue(ls,profile)
			speed = 0
	}
	
}

//attack 
else if (current_state = land_npc_states.attack){
	sprite_index = spr_qing_official_slash
	if image_index >= image_number-1{
		current_state = land_npc_states.chase
	}
	speed = 0
	image_xscale = 1
	if obj_player.x < x {
		image_xscale = -1	
	}
}

//hurt
else if (current_state = land_npc_states.hurt){
	sprite_index = spr_qing_official_hurt
	if image_index >= image_number-1{
		current_state = land_npc_states.chase
	}
	speed = 0
	image_xscale = 1
	if obj_player.x < x {
		image_xscale = -1	
	}
}

//get hit
if (current_state != land_npc_states.hurt) and (current_state != land_npc_states.attack) and place_meeting(x,y,obj_hitbox) {
		current_state = land_npc_states.hurt
		image_index = 1
}

if place_meeting(x+hspeed,y,obj_solid){
	hspeed = 0	
}
if place_meeting(x,y+vspeed,obj_solid){
	vspeed = 0	
}


