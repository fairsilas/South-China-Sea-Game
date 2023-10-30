if place_meeting(x,y,obj_boat)and instance_nearest(x,y,obj_boat)!= creator{
	instance_destroy()
	show_question(scr_find_collision_point(instance_nearest(x,y,obj_boat)))
	var xx, yy = scr_find_collision_point(instance_nearest(x,y,obj_boat))
	
	repeat(10){
		instance_create_depth(xx,yy,depth-1, obj_debree)	
	}
}


