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

//follow the player
else if (current_state == land_npc_states.follow){
	scr_follow_target(obj_player.x, obj_player.y, 1)
	scr_two_direction_sprite(spr_qing_official_charge)
	//open dialog of trade with trader
	var i = my_inventory
	var my_p = my_prices
	if distance_to_object(obj_player) < 15{
		speed= 0
		scr_start_dialogue(ls,profile)
			with(obj_inventory){
				trader_inv = i
				current_prices = my_p
		}
	}
}

//follow the player
else if (current_state == land_npc_states.chase){
	
	scr_follow_target(obj_player.x, obj_player.y)
	scr_two_direction_sprite(spr_qing_official_charge)
	
	if distance_to_object(obj_player) < 15{
		image_index = 0
		speed = 0
		current_state = land_npc_states.attack
	}
}

//attack
 if (current_state == land_npc_states.attack) {
    speed = 0;
    image_speed = 1;
    sprite_index = spr_qing_official_slash;

    if (obj_player.x < x) {
        image_xscale = -1;
    } else {
        image_xscale = 1;
    }

    if (image_number - image_index < 1) {
            current_state = land_npc_states.chase;
            sprite_index = spr_qing_official_charge;
    }
}


