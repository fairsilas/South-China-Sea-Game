l_click = mouse_check_button_pressed(mb_left)

var data = ds_map_find_value(dia_map, current_dia)

var num_choices = array_length(data.choices)
var c_len = array_length(data.choices)

if (num_choices >= 1){
	if (q_showing = true){
		for (i=0; i< num_choices; i++) {
			var q_sep = 35
			yy = y+50+(i*q_sep)
		
			var w = 200
			var h = 25
	
			var hover = (mouse_x > x) and (mouse_x < x+w)and(mouse_y > yy)and (mouse_y < yy+h)
			var xx;
			if hover{
				draw_set_color(c_white)
				xx = x-2
			}else{
				draw_set_color(c_grey)	
				xx = x
			}
			
			var str = data.choices[i][0]
			var m = 3;
			var l = 10;
			draw_text(xx, yy, data.choices[i][0])
			draw_rectangle(xx - m, yy - m, xx + string_length(str)*l + m, yy + string_height(str) + m, true);
		
			if (l_click) and (hover){
				if (data.choices[i][1] == "end"){
					instance_destroy()
				
				}else{
					current_dia = data.choices[i][1]
					scr_type_txt(ds_map_find_value(dia_map, current_dia).main_text)
					q_showing = false
					alarm[0] = q_rate*string_length(ds_map_find_value(dia_map, current_dia).main_text)
				}		
			}
		}
	}
}else{
	instance_destroy()	
}



