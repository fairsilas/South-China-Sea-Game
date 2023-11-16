draw_set_font(fnt_default)
draw_set_color(c_white);
draw_set_halign(fa_center)
draw_set_valign(fa_middle)


//max length
var len = string_length(keyboard_string)
if (len > max_char_length){
	keyboard_string = string_delete(keyboard_string, len, 1)
}
draw_text(x, y, keyboard_string);

//draw_circle(x,y,4+string_width(keyboard_string)/2, true)
draw_set_halign(fa_left)
draw_set_valign(fa_middle)
