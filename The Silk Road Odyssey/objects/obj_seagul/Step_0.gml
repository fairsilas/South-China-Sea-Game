//stand still and peck
var n = instance_nearest(x,y,obj_entity)

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
	sprite_index = spr_seagul_sit	
	if distance_to_object(obj_entity) < walk_distance{
		state = "walk"
	}

}

//walk away
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
		hspeed = 0	
	}
	if place_meeting(x, y+vspeed, obj_solid){
		vspeed = 0	
	}
	sprite_index = spr_seagul_walk
}

//walk away
if (state = "walk"){
	depth = -y
	move_towards_point(n.x,n.y, -walk_spd)
	if place_meeting(x+hspeed, y, obj_solid){
		hspeed = 0	
	}
	if place_meeting(x, y+vspeed, obj_solid){
		vspeed = 0	
	}
	sprite_index = spr_seagul_walk
	if distance_to_object(obj_entity) < fly_distance{
		state = "fly"
	}
	if distance_to_object(obj_entity) < walk_distance{
		state = "sit"
	}
}

//get 
if distance_to_object(obj_entity) < fly_distance{
	state = "fly"
}

//fly away
if (state = "fly"){
	depth = -y-100
	sprite_index = spr_seagul_fly
	move_towards_point(randx, -100, spd)
	
}else{
	scr_draw_shadow(10)
}

//animation and depth


if hspeed >0 {
	image_xscale = 1
}
if hspeed <0{
	image_xscale = -1
}