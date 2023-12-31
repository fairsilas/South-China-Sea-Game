if global.can_move = false{
	speed = 0	
}

//set audio
audio_listener_position(x,y,0)
//motion_add(180, 0.01)

//handle view camera
vx = camera_get_view_x(view_camera[0])
vy = camera_get_view_y(view_camera[0])
vw = camera_get_view_width(view_camera[0])
vh = camera_get_view_height(view_camera[0])
camera_set_view_speed(view_camera[0], distance_to_point(vx+(vw/2), y)/30,distance_to_point(x, vy+(vh/2))/30)

//set up user controls
var left = keyboard_check(vk_left)or keyboard_check(ord("A"))
var right = keyboard_check(vk_right)or keyboard_check(ord("D"))
var up = keyboard_check(vk_up)or keyboard_check(ord("W"))
var down = keyboard_check(vk_down)or keyboard_check(ord("S"))



if (left){
	angle += (turnspeed*speed/(speed+2)+0.1)
}

if (right){
	angle -= turnspeed*speed/(speed+2)+0.1
}

//propel
if (up) {
	motion_add(angle, acc)	
}
if (down){
	motion_add(angle+180, rev_acc)	
}

scr_boat_physics()

//create ripple effect
ripple_timer --
if (ripple_timer < 0){
	ripple_timer = (ripple_freq+random_range(ripple_rand, -ripple_rand))/(speed+0.1)
	var rip = instance_create_depth(x,y, depth+1, obj_ripple)
	rip.image_angle = angle
	var rip = instance_create_depth(x,y, depth+1, obj_ripple2)
	rip.image_angle = angle
}
