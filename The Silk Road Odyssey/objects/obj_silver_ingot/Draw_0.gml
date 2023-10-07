depth = -y
draw_self()


if place_meeting(x,y,obj_ship){
	instance_destroy()
	scr_add_item(item_data,obj_inventory.inv)
}