// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function get_collision_distance(obj = obj_solid, dir=direction, sense_distance = 200){
	var check_len = sense_distance
	
	while collision_line(x, y, lengthdir_x(check_len, dir), lengthdir_y(check_len, dir), obj, false, true) {
		check_len -=2
		if (check_len < 10){
			return infinity
		}
		
	}
	return check_len
	
}