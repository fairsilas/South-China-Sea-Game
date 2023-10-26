b_1 = keyboard_check_pressed(ord("Q"))
b_2 = keyboard_check_pressed(ord("W"))
b_3 = keyboard_check_pressed(ord("E"))
b_either = keyboard_check_pressed(ord("E")) or keyboard_check_pressed(ord("Q"))

var data = ds_map_find_value(dia_map, current_dia)


var c_len = array_length(data.choices)

if (b_either){
	if (c_len == 1){
		current_dia = data.choices[0]
	}
	else if (c_len >= 2){
		
		if (b_1){
			current_dia += data.choices[0]
		}
		if (b_2){
			current_dia+= data.choices[1]
		}
		if (b_3){
			current_dia+= data.choices[2]
		}
	}
	
	if (c_len == 0){
		instance_destroy()
		instance_destroy(obj_type_text)
	}else{
		var data = ds_map_find_value(dia_map, current_dia)
		scr_type_txt(data.main_text)
	}
}