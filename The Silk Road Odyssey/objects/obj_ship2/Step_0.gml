
if audio_started = false {
	audio_started = true
	audio_play_sound_on(em, snd_sailboat_sound,false, 10)
}

//if place_meeting(x,y,obj_ship){
//		instance_destroy()
	
//}

if scr_find_collision_point(obj_ship) != noone{
	
	if (obj_ship.speed > 1){
		//destroy
		var xy = scr_find_collision_point(obj_ship)
		repeat(10){
			instance_create_depth(xy[0],xy[1],-1, obj_debree)
		}
		scr_shake_screen(2)
		instance_destroy()
		obj_ship.speed /=2
	}else{
		var xy = scr_find_collision_point(obj_ship)
		repeat(3){
			instance_create_depth(xy[0],xy[1],-1, obj_debree)
		}
		scr_shake_screen(2)
		obj_ship.speed = obj_ship.speed=0
		with (obj_ship){
			move_towards_point(xy[0],xy[1],-0.5)
		}
		move_towards_point(xy[0],xy[1],-0.5)
	}
	
	
}