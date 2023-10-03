if (mode = 0){
vx = camera_get_view_x(view_camera[0])
vy = camera_get_view_y(view_camera[0])
x = obj_ship.x
y = obj_ship.y
camera_set_view_speed(view_camera[0], distance_to_point(vx+(vw/2), y)/30,distance_to_point(x, vy+(vh/2))/30)

}else if (mode = 1){
	xsh = choose(-2,2)
	ysh = choose(-2,2)
	x = obj_ship.x + choose(-2,2)
	y = obj_ship.y+ choose(-2,2)
	camera_set_view_pos(view_camera[0], vx+xsh, vy+ysh)
	camera_set_view_speed(view_camera[0], distance_to_point(vx+(vw/2), y)/2,distance_to_point(x, vy+(vh/2)))
	}

if keyboard_check_pressed(vk_space){
	if mode = 1	{
		mode = 0
	}else
	if mode = 0	{
		mode = 1
	}
}