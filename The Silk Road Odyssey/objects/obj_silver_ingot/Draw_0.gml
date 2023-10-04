depth = -y
draw_self()


if place_meeting(x,y,obj_ship){
	instance_destroy()
	inv_add_item(item_data)
}