/// @description Insert description here
// You can write your code in this editor
var check_x = x
var check_y = y




var see_player = true /*!(collision_line(x,y, obj_player.x, obj_player.y, obj_solid, false,true))and(( 
					(distance_to_object(obj_player)< 100)and
					((sprite_index = spr_player_up and obj_player.y < y-10)or
					(sprite_index = spr_player_down and obj_player.y > y+10)or
					(sprite_index = spr_player_left and obj_player.x < x-10)or
					(sprite_index = spr_player_right and obj_player.x > x+10)))or((distance_to_object(obj_player)< 8)))
*/
randomize()

//if sees player then attack
if (state = IDLE)or (state = RETURN){
	if (see_player){
		state = CHASE
		alarm[11] = 200
	}
}

///patrol around
if (state = IDLE){
	// move toward empty cell randomly
	dir_x = lengthdir_x(spd/2, rand_dir)
	dir_y = lengthdir_y(spd/2, rand_dir)
	if(!place_meeting(x+dir_x, y+dir_y, obj_solid)){
		direction = rand_dir
		speed = spd/2
	}else{
		speed = 0
		rand_dir = choose(0, 90, 180, 270)
		dir_x = lengthdir_x(4, rand_dir)
		dir_y = lengthdir_y(4, rand_dir)
	}
}

//follow the player
if (state = CHASE){
	if speed = 0{
		alarm[10] = 0	
	}
	target_x = obj_player.x;
	target_y = obj_player.y;
	//avoid other enemies
	check_x = x
	check_y = y
	x = -10000
	y = -10000
	ne = instance_nearest(check_x,check_y, obj_enemy)
	x = check_x
	y = check_y
	dto_p = path_get_length(path)
	
	//allow player to lose enemy
	if (alarm[11] > 1){
			// avoid clumping
			if(distance_to_object(ne) < 8){
				if (dto_p < ne.dto_p){
					path_speed = spd
				}else{
					path_speed = slowed_spd
				}
			}
			if (see_player){
			alarm[11] = 200
			}
	}else if (alarm[11] <= 1){
		state = RETURN
	}
	
}
//return to starting pos
if (state = RETURN){
	
	target_x = xstart
	target_y = ystart
	
	//avoid other enemies
	var check_x = x
	var check_y = y
	x = -10000
	y = -10000
	ne = instance_nearest(check_x,check_y, obj_enemy)
	x = check_x
	y = check_y
	dto_p = path_get_length(path)
	if(distance_to_object(ne) < 8){
		if (dto_p < ne.dto_p){
			path_speed = slowed_spd
		}else{
			path_speed = slowed_spd/2
		}
	}
	if distance_to_point(xstart,ystart)<1{
		state = IDLE	
	}
}

var ne = instance_nearest(x,y,object_index)

var ne = instance_nearest(x, y, object_index);

// Refresh paths
if (alarm[10] <= 1) {
    var endX = path_get_x(path, path_get_number(path) - 1);
    var endY = path_get_y(path, path_get_number(path) - 1);
    
	if (point_distance(endX, endY, target_x, target_y) > 10) {
		path_clear_points(path);
		mp_potential_path_object(path, target_x, target_y, spd, 2, obj_avoidable);
		path_start(path, spd, path_action_stop, true)
		endX = path_get_x(path, path_get_number(path) - 1);
		endY = path_get_y(path, path_get_number(path) - 1);
		if (point_distance(endX, endY, target_x, target_y) > 10) {
			// Check if the target is nearby
			path_delete(path);
			path = path_add();
            // Switch to grid-based pathfinding
            mp_grid_path(obj_setup_pathfinding.grid, path, check_x, check_y, target_x, target_y, true)
			path_start(path, spd, path_action_stop, true)
		}
		endX = path_get_x(path, path_get_number(path) - 1);
		endY = path_get_y(path, path_get_number(path) - 1);
		//edge case
		if (point_distance(endX, endY, target_x, target_y) > 10) {
			mp_potential_path_object(path, target_x, target_y, spd, 2, obj_avoidable);
			path_start(path, spd, path_action_stop, true)
		}
		
	} 
        
        


	//loop
	alarm[10] = path_update_rate
}






while direction < 0{
	direction = -direction
}
while direction > 360{
	direction-=360
}

//up
if  (direction >= 90-45 and direction <90+45){
	sprite_index = spr_player_up_sprint
}
//down
if (direction >= 270-45 and direction <270+45){
	sprite_index = spr_player_down_sprint
}	
//left
if (direction >= 180-45 and direction <180+45){
	sprite_index = spr_player_left_sprint
}
//right
if(direction >= 0-45 and direction < 0+45){
	sprite_index = spr_player_right_sprint
}


if place_meeting(x+hspeed,y+vspeed,ne){
	try_x = x
	try_y = y
	max_range = 1
	while (!place_empty(try_x,try_y,obj_solid)){
		max_range+=1
		try_x = x+irandom_range(-max_range,max_range)-hspeed
		try_y = y+irandom_range(-max_range,max_range)-vspeed
		var ne = instance_nearest(x,y,obj_enemy)
		var pd = point_direction(ne.x,ne.y,x,y)
	
		direction = pd
		speed = slowed_spd
	}
	x = try_x
	y = try_y
}

if place_meeting(x+hspeed,y,obj_solid){
	hspeed = 0
}else 
if place_meeting(x,y+vspeed,obj_solid){
	vspeed = 0
}else
if place_meeting(x+hspeed,y+vspeed,obj_solid){
	speed = 0	
}




