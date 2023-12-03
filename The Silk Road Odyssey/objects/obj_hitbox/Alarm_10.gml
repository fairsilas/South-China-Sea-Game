//hit entities if they are not the creator
var ne
with(creator){
	check_x = x
	check_y = y
	x = -10000
	y = -10000
	ne = instance_nearest(check_x,check_y, obj_entity)
	x = check_x
	y = check_y
}

if place_meeting(x,y,ne){
	ne.hit = damage
}
instance_destroy()



