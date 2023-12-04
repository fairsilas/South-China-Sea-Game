draw_self()
if keyboard_check_pressed(vk_enter){
	trans_started = true
}
if (trans_started = true){
	trans_val += trans_rate
	motion_add(90, .01)
	draw_set_color(c_black)
	draw_rectangle(0, 0, trans_val, room_height, false)
	draw_rectangle(room_width, 0, room_width-trans_val, room_height, false)
	draw_rectangle(0, 0, room_width, trans_val, false)
	draw_rectangle(0, room_height, room_width, room_height-trans_val, false)
	draw_set_color(c_white)
	audio_master_gain(clamp(1/1+(trans_val/room_width)/100, 0, 1))
}

if trans_val > room_width/2{
	room_goto_next()
	audio_stop_sound(snd_title_screen)
}





dir = point_direction(x, y, x, ystart+10)
motion_add(dir, .005)





