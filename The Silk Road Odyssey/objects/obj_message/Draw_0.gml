draw_set_color(c_green)
draw_set_halign(fa_center)
draw_text_ext_transformed(x,y,txt,50,1000, draw_sz, draw_sz, 0)
draw_set_halign(fa_left)


if skippable = true and (keyboard_check_pressed(vk_anykey)or mouse_check_button_pressed(mb_left)){
	room_goto(global.current_place.rm)
}

if (skippable = false){
	draw_sz+=0.01
}