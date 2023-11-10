if hp < 0{
	instance_destroy()
	instance_create_depth(x,y,depth+10,obj_ship_sink)
}