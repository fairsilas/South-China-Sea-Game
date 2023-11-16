clicked = mouse_check_button_pressed(mb_left)
on_object = position_meeting(mouse_x,mouse_y, self);


//click off and stop editing
if (clicked && (!on_object) && editing)  {
    name = keyboard_string;
	keyboard_string = ""
    editing = false;
}

//enter changes and stop editing
if (editing) {
    if (keyboard_check_pressed(vk_enter)) {
        name = keyboard_string;
        keyboard_string = "";
        editing = false;
    }
}

