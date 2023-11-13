if place_meeting(x,y,obj_ship){
	
	room_goto(rm_test_dialogue)
	global.current_place = global.target_place
	global.target_place = noone
	audio_play_sound(snd_location_reached, 10, false, 10)
}
	



