clicked = mouse_check_button_pressed(mb_left)
on_object = position_meeting(mouse_x,mouse_y, self);



if (keyboard_check_pressed(vk_enter)) {
       name = keyboard_string;
       keyboard_string = "";
       editing = false;
}
