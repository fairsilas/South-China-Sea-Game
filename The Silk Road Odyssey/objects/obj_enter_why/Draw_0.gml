draw_set_font(fnt_small)
draw_set_color(c_black);


if (editing) {
	//max length
	var len = string_length(keyboard_string)
	if (len > max_char_length){
		keyboard_string = string_delete(keyboard_string, len, 1)
	}
	draw_text(x, y, keyboard_string);
	draw_self();
}else{
	
	draw_text(x, y, name);
}


