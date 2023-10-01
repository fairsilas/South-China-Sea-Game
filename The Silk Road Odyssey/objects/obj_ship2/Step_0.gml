if audio_started = false {
	audio_started = true
	audio_play_sound_on(em, snd_sailboat_sound,false, 10)
}

if place_meeting(x,y,obj_ship){
	instance_destroy()
	obj_ship.speed = -obj_ship.speed
}