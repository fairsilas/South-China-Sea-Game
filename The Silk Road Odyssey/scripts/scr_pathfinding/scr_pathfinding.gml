// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_init_pathfinding(targ_x, targ_y, spd = 2){
	if !instance_exists(obj_setup_pathfinding){
		instance_create_depth(0,0,0,obj_setup_pathfinding)
	}

	slowed_spd = random_range(spd/3, spd)


	//set up CHASE variables
	//rate at which the path will be updated
	path_update_rate = 10
	//create a new path
	path = path_add()
	//set precision for sharpness of turns
	path_set_precision(path, 10);
	//set alarm to update path
	alarm[10] = path_update_rate
	//get player's x and y coordinates
	target_x = targ_x
	target_y = targ_y
	//calculate distance to player
	dto_p = distance_to_point(target_x, target_y)

	//create grid
	grid = obj_setup_pathfinding.grid
	//create a priority queue
	list = ds_priority_create()

	//set initial state to IDLE
	path_update_rate = 30
	path = path_add()
	path_set_precision(path, 4);// how sharp should turns be?
	alarm[10] = path_update_rate
}

function scr_follow_target(target_x, target_y){
	var ne = instance_nearest(x, y, object_index);

// update paths
if (alarm[10] <= 1) {
    var endX = path_get_x(path, path_get_number(path) - 1);
    var endY = path_get_y(path, path_get_number(path) - 1);
    
	if !collision_line(target_x, target_y, x, y, obj_solid, false, true){
		move_towards_point(target_x,target_y,spd)	
	}
	else if (point_distance(endX, endY, target_x, target_y) > 10) {
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
}

