//stand still and peck
var n = instance_nearest(x,y,obj_entity)

if (state = "sit"){
	depth = -y
	speed = 0
	scr_draw_shadow(10)
	sprite_index = spr_seagul_sit	
	if distance_to_object(obj_entity) < walk_distance{
		state = "walk"
	}
	if distance_to_object(obj_entity) < fly_distance{
		state = "fly"
	}
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
	scr_draw_shadow(10)
	sprite_index = spr_seagul_walk
	if distance_to_object(obj_entity) < fly_distance{
		state = "fly"
	}
	if distance_to_object(obj_entity) < walk_distance{
		state = "sit"
	}
}


//fly away
if (state = "fly"){
	depth = -y-100
	sprite_index = spr_seagul_fly
	move_towards_point(randx, -100, spd)
	
}

//animation and depth


if hspeed >0 {
	image_xscale = 1
}
if hspeed <0{
	image_xscale = -1
}