// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_start_dialogue(conversation_struct_array, p){
	var csa = conversation_struct_array
	p = profile
	with(obj_inventory){
		profile = p
	}
	if !instance_exists(obj_dialogue){
		with(instance_create_depth(x,y,-1,obj_dialogue)){
			ls = csa
			q_rate = 4
			dia_map = ds_map_create()
			for (i=0;i<array_length(ls);i++){
				ds_map_add(dia_map, ls[i].topic, ls[i])
			}

			current_dia = ls[0].topic
			scr_type_txt(ds_map_find_value(dia_map, current_dia).main_text)
			q_showing = false
			alarm[0] = q_rate*string_length(ds_map_find_value(dia_map, current_dia).main_text)
		}
	}
	
}
