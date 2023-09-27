if (mode = 0){
vx = camera_get_view_x(view_camera[0])
vy = camera_get_view_y(view_camera[0])
x = obj_ship.x
y = obj_ship.y
camera_set_view_speed(view_camera[0], distance_to_point(vx+(vw/2), y)/30,distance_to_point(x, vy+(vh/2))/30)

}else if (mode = 1){
	x = obj_ship.x + choose(-5,5)
	y = obj_ship.y+ choose(-5,5)
	camera_set_view_speed(view_camera[0], distance_to_point(vx+(vw/2), y)/9,distance_to_point(x, vy+(vh/2))/9)
	}

if keyboard_check_pressed(vk_space){
	if mode = 1	{
		mode = 0
	}else
	if mode = 0	{
		mode = 1
	}
}