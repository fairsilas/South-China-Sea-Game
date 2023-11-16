if (destroyed = false) and mouse_check_button_pressed(mb_left) and position_meeting(mouse_x, mouse_y, self){
	destroyed = true
	instance_destroy(obj_enter_name)
	instance_destroy(obj_enter_sex)
	instance_destroy(obj_enter_why)
	image_index = 0;
	sprite_index = spr_application_burn;
}

if (image_index >= image_number-2) and (destroyed = true){
	instance_destroy()
}

