//die
if hp < 0{
	var a = angle
	instance_destroy()
	with(instance_create_depth(x,y,depth+10,obj_ship_sink)){
		angle = a
	}
}

scr_boat_physics()


if (current_state == ship_states.flee){
	var ad = angle_difference(angle, point_direction(x,y,obj_ship.x,obj_ship.y))
		show_debug_message(ad)
	
}
