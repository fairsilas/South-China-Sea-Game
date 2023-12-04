//die
if hp < 0{
	var a = angle
	instance_destroy()
	with(instance_create_depth(x,y,depth+10,obj_ship_sink)){
		angle = a
	}
}

scr_boat_physics()

if hp < max_hp/2{
	current_state = ship_states.flee
	
}

if (hp < max_hp){
	relationship -= 0
}

if (current_state == ship_states.flee){
	
	var ad = angle_difference(angle, point_direction(x,y,obj_ship.x,obj_ship.y))
		show_debug_message(ad)
		motion_add(angle, acc)
	
}



if (get_collision_distance(obj_edge_clouds, angle, 200 < 200)){
	angle += turnspeed
}else{
	motion_add(angle, acc)	
}
