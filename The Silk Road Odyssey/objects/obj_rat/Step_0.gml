//stand still and peck
var n = instance_nearest(x,y,obj_entity)
if distance_to_object(obj_entity) < walk_distance{
		state = "flee"
}

if (state = "sit"){
	if alarm[0] < 0{
		if choose(0, 1) == 0{
			state = "wander"
			direction = irandom(360)
		}
		else{
			image_xscale = -image_xscale
		}
		alarm[0] = random_range(50,220)
	}
	depth = -y
	speed = 0
	
	scr_draw_shadow(10)
	sprite_index = spr_rat
}



image_speed = speed/spd
if (state = "flee"){
	if (place_meeting(x,y,obj_rathole)){
		image_alpha-=0.05
		speed = 0
	}
	if (image_alpha < 0){
		instance_destroy()
	}
	
	var nearest_door = instance_nearest(x,y, obj_rathole)
	scr_follow_target(nearest_door.x, nearest_door.y,spd*2)
}

//wonder around
if (state = "wander"){
	if alarm[0] < 0{
		if choose(0, 1) == 0{
			state = "sit"
			direction = irandom(360)
		}
		else{
			direction = irandom(360)
		}
		alarm[0] = random_range(50,220)
	}
	depth = -y
	speed = 1
	if place_meeting(x+hspeed, y, obj_solid){
		hspeed = -hspeed	
	}
	if place_meeting(x, y+vspeed, obj_solid){
		vspeed = -vspeed	
	}
	if place_meeting(x+hspeed, y+vspeed, obj_solid){
		vspeed = -vspeed	
		hspeed = -hspeed
	}
	sprite_index = spr_rat
}


//animation and depth
depth = -y
if hspeed > 0 {
	image_xscale = 1	
}else{
	image_xscale = -1	
}

