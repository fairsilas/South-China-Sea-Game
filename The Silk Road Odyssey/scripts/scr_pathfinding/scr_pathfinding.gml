// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_init_pathfinding(targ_x, targ_y, spd = 2, path_refresh = 10){
	if !instance_exists(obj_setup_pathfinding){
		instance_create_depth(0,0,0,obj_setup_pathfinding)
	}

	slowed_spd = random_range(spd/3, spd)

	//set up CHASE variables
	//rate at which the path will be updated
	path_update_rate = path_refresh
	//get player's x and y coordinates
	target_x = targ_x
	target_y = targ_y
	//calculate distance to player
	dto_p = distance_to_point(target_x, target_y)

	//create grid
	grid = obj_setup_pathfinding.grid
	//create a priority queue
	list = ds_priority_create()

	path = path_add()
	path_set_precision(path, 4);// how sharp should turns be?
	alarm[10] = path_update_rate
}

function scr_prevent_inside_solid(object_to_avoid = obj_solid){
	//prevent getting stuck
	var try_len = 1
	while place_meeting(x, y, obj_solid){
		try_len++
		var xtry = x+irandom_range(-try_len, try_len)
		var ytry = y+irandom_range(-try_len, try_len)
		if !place_meeting(xtry,ytry,obj_solid){
			x = xtry
			y = ytry
		}
	}
}

function scr_follow_target(target_x, target_y){
	
	//avoid other enemies
	var check_x = x
	var check_y = y
	x = -1000
	y = -1000
	ne = instance_nearest(check_x,check_y, object_index)
	x = check_x
	y = check_y
	var dto_ne = distance_to_object(ne)
	var endX = path_get_x(path, path_get_number(path) - 1);
	var endY = path_get_y(path, path_get_number(path) - 1);
	
	scr_prevent_inside_solid()
	//avoid bunching up
	if (place_meeting(x,y,ne))and speed !=0{
		    var angle = point_direction(x, y, ne.x, ne.y);
		    var new_x = x + lengthdir_x(-spd / 1 + (dto_ne / 800), angle);
		    var new_y = y + lengthdir_y(-spd / 1 + (dto_ne / 800), angle);
			if !place_meeting(new_x+hspeed,new_y+vspeed,obj_solid){
			    x = new_x;
			    y = new_y;	
			}
	}else
	if !collision_line(target_x, target_y, x, y, obj_solid, false, true){
			move_towards_point(target_x,target_y,spd)
	}else
	
	if (alarm[10] <= 1){
		alarm[10] = path_update_rate
	    
    
		//if path ending is far from target location
		if (point_distance(endX, endY, target_x, target_y) > 10) {
			
			//refresh path
			path_clear_points(path);
			mp_potential_path_object(path, target_x, target_y, spd, 2, obj_solid);
			path_start(path, spd, path_action_stop, true)
			endX = path_get_x(path, path_get_number(path) - 1);
			endY = path_get_y(path, path_get_number(path) - 1);
			
			//if it is still far away try grid
			if (point_distance(endX, endY, target_x, target_y) > 10) {
				// Check if the target is nearby
				path_delete(path);
				path = path_add();
	            // Switch to grid-based pathfinding
	            mp_grid_path(obj_setup_pathfinding.grid, path, x, y, target_x, target_y, true)
				path_start(path, spd, path_action_stop, true)
			}
			endX = path_get_x(path, path_get_number(path) - 1);
			endY = path_get_y(path, path_get_number(path) - 1);
			//edge case
			if (point_distance(endX, endY, target_x, target_y) > 10) {
				mp_potential_path_object(path, target_x, target_y, spd, 2, obj_solid);
				path_start(path, spd, path_action_stop, true)
			}
		} 
	}
}

