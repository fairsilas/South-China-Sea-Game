depth = -y
draw_self()
vx = camera_get_view_x(view_camera[0])
vy = camera_get_view_y(view_camera[0])
vw = camera_get_view_width(view_camera[0])
vh = camera_get_view_height(view_camera[0])


if place_meeting(x,y,obj_ship){
	draw_set_halign(fa_center)
	draw_set_font(fnt_inv_desc)
	draw_text(vx+vw/2, vy+8, "Pick up the bolt [E]")
	draw_set_halign(fa_left)
	
	if keyboard_check_pressed(ord("E")){
		instance_destroy()
		inv_add_item(name,desc , 1, object_index, sprite_index, weight, price)
	}
}