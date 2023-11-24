var nb =  instance_nearest(x,y,obj_boat)

if place_meeting(x,y,obj_boat)and nb!= creator{
	instance_create_depth(x,y,depth-1,obj_small_explosion)
	nb.hp -= 10
	
	var ca = scr_find_collision_point(nb)
	if ca != noone{
		
		repeat(5){
			instance_create_depth(ca[0],ca[1],depth-1, obj_debree)	
		}
	}
	instance_destroy()
}


