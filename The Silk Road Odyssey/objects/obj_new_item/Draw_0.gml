depth = -y
draw_self()
vx = camera_get_view_x(view_camera[0])
vy = camera_get_view_y(view_camera[0])
vw = camera_get_view_width(view_camera[0])
vh = camera_get_view_height(view_camera[0])


if place_meeting(x,y,obj_ship){
	instance_destroy()
	scr_add_item(item_data,obj_inventory.inv)
}