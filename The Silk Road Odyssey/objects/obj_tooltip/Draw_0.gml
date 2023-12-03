
vx = camera_get_view_x(view_camera[0])
vy = camera_get_view_y(view_camera[0])
vw = camera_get_view_width(view_camera[0])
vh = camera_get_view_height(view_camera[0])


draw_set_color(c_maroon)
draw_set_font(fnt_tooltip)
draw_set_halign(fa_center)

if !((blinking) and (alarm[2] < 0)){
	draw_text(vx+vw/2,vy+30, txt);
}



draw_set_halign(fa_left)
