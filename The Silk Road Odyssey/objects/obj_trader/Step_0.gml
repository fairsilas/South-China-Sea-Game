if hp < 0{
	var a = angle
	instance_destroy()
	with(instance_create_depth(x,y,depth+10,obj_ship_sink)){
		angle = a
	}
}