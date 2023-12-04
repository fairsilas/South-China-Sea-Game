
if (trans_done = false){
	trans_val += trans_rate
	draw_set_color(c_black)
	draw_set_alpha(trans_val)
	depth = -99999
	draw_rectangle(0, 0, 960, room_height, false)
	draw_set_alpha(1)

}else{
	trans_val -= trans_rate	
	show_debug_message(trans_val)
	if (trans_val < 0.1){
		instance_destroy()
	}
}

if (trans_val >= 1 and trans_done = false){
	trans_done = true
	room_goto_next()
	instance_destroy()
}









