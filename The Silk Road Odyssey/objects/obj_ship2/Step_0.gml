if audio_started = false {
	audio_started = true
	audio_play_sound_on(em, snd_sailboat_sound,false, 10)
}

if place_meeting(x,y,obj_ship){
	if obj_ship.speed > 2{
		instance_destroy()
		
	}else{
		obj_ship.speed = -obj_ship.speed
		obj_ship.angle = 180-point_direction(x,y,obj_ship.x, obj_ship.y)+45+(obj_ship.angle/10)
	}
	
}