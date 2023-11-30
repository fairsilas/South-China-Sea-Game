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

angle += turnspeed
speed = 0.2
if collision_line(x,y, lengthdir_x(200, angle+90), lengthdir_y(200, angle+90), obj_ship, false, true){
	draw_line_color(x,y, obj_ship.x, obj_ship.y, c_white, c_red)
}
