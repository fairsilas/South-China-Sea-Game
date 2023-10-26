// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_type_txt(text){
	if instance_exists(obj_type_text){
		instance_destroy(obj_type_text)
	}
	with(instance_create_depth(x,y,-1,obj_type_text)){
		txt = text
	}
}