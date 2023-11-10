if place_meeting(x,y,obj_boat)and instance_nearest(x,y,obj_boat)!= creator{
	
	var ca = scr_find_collision_point(instance_nearest(x,y,obj_boat))
	if ca != noone{
		repeat(10){
			instance_create_depth(ca[0],ca[1],depth-1, obj_debree)	
		}
	}
	instance_destroy()
}


