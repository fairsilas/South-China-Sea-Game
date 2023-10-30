vx = camera_get_view_x(view_camera[0])
vy = camera_get_view_y(view_camera[0])
vw = camera_get_view_width(view_camera[0])
vh = camera_get_view_height(view_camera[0])

xx = 385
yy = 123
draw_set_color(c_white)
draw_set_font(fnt_default)
draw_text_ext(vx+xx,vy+yy,currentLetter, 25, (room_width/2.5));


if (alarm[0] <= 0)and (currentIndex <= string_length(txt)){
	currentIndex++;
	currentLetter += string_char_at(txt, currentIndex);
    alarm[0] = room_speed * delay * random_range(0.9, 1.1);	
}