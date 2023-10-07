/// @description Insert description here
// You can write your code in this editor
if keyboard_check_pressed(vk_tab){
	active = !active
}

vx = camera_get_view_x(view_camera[0])
vy = camera_get_view_y(view_camera[0])
vw = camera_get_view_width(view_camera[0])
vh = camera_get_view_height(view_camera[0])

