draw_self()
if keyboard_check_pressed(vk_enter){
	trans_started = true
	instance_create_depth(x,y,-10000, obj_fade_to_next)
	audio_stop_sound(snd_title_screen)
}


if (trans_started = true){
	trans_val += trans_rate
	motion_add(90, .01)
}









dir = point_direction(x, y, x, ystart+10)
motion_add(dir, .005)





