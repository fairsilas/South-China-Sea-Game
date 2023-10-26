draw_self()

button_rad = 8

for (i=0;i<array_length(places);i++){
	var p = places[i]
	var hover = (mouse_x > p.xx-button_rad)
				and (mouse_x < p.xx+button_rad)
				and(mouse_y > p.yy-button_rad)
				and (mouse_y < p.yy+button_rad)
	
	
	
	draw_circle_color(p.xx, p.yy, 8, c_white, p.col, false)
}
	