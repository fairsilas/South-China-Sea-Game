// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_boat_physics(){
	direction = direction % 360
	angle = angle % 360
	var ship_reversing = true
	
	ship_reversing = abs(angle_difference(direction,angle)) > 90 
	show_debug_message(angle_difference(direction,angle))


	//max speed
	if (speed > sign(speed)*max_speed){
		speed = sign(speed)*max_speed
	}

	if abs(speed) > 0.1{
		if not ship_reversing{
			motion_add(angle, momentum)
		}else{
			motion_add(angle+180, momentum)
		}
		speed -= sign(speed)*frict
	}
}