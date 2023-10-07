// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_boat_physics(){

	//set up user controls
	var left = false
	var right = false
	var up = false
	var down = false

	while angle > 360{
		angle -=360
	}
	while angle < -360{
		angle +=360
	}

	while direction > 360{
		direction -=360
	}
	while direction < -360{
		direction +=360
	}




	if (left){
		angle += turnspeed*speed/(speed+1)
	}

	if (right){
		angle -= turnspeed*speed/(speed+1)
	}

	//propel
	if (up) {
		motion_add(angle, acc)	
	}
	if (down){
		motion_add(angle, rev_acc)	
	}

	//max speed
	if (speed > max_speed){
		speed = max_speed
	}

	//physics behavior
	if speed > 0 {
		speed -= frict
		motion_add(angle, momentum)
	}

	//create ripple effect
	ripple_timer --
	if (ripple_timer < 0){
		ripple_timer = (ripple_freq+random_range(ripple_rand, -ripple_rand))/(abs(speed)+0.1)
		var rip = instance_create_depth(x,y, depth+1, obj_ripple)
		rip.image_angle = angle
		var rip = instance_create_depth(x,y, depth+1, obj_ripple2)
		rip.image_angle = angle
	}



}