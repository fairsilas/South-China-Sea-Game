/// @description Insert description here
// You can write your code in this editor

vx = camera_get_view_x(view_camera[0])
vy = camera_get_view_y(view_camera[0])
vw = camera_get_view_width(view_camera[0])
vh = camera_get_view_height(view_camera[0])
draw_set_font(fnt_text)

depth = -14000
l_click = mouse_check_button_pressed(mb_left)

var data = ds_map_find_value(dia_map, current_dia)

var num_choices = array_length(data.choices)
var c_len = array_length(data.choices)

if data.scr != "do nothing"{
	//execute the script
}

if (num_choices >= 1){
	if (q_showing = true){
		for (i=0; i< num_choices; i++) {
			var q_sep = 30
			
			var xx = vx+385
			var yy = vy+405+(i*q_sep);
			
			var w = 200
			var h = 25
	
			var hover = (mouse_x > xx) and (mouse_x < xx+w)and(mouse_y > yy)and (mouse_y < yy+h)
			
			if hover{
				draw_set_color(c_white)
				xx = vx+385+1
			}else{
				draw_set_color(c_grey)	
			}
			
			var str = data.choices[i][0]
			var m = 3;
			var l = 1;
			draw_text(xx, yy, data.choices[i][0])
			draw_rectangle(xx - m, yy - m, xx + string_width(str)*l + m, yy + string_height(str) + m, true);
		
			if (l_click) and (hover){
				if (data.choices[i][1] == "end"){
					instance_destroy()
					with(obj_inventory){currentInvState = InvStates.def}
				
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
