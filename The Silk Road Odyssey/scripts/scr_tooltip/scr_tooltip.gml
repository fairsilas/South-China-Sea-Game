// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_tooltip(text){
	var t = text
	if !instance_exists(obj_tooltip){
		with(instance_create_depth(0,0, obj_inventory.depth-1, obj_tooltip)){
			txt = t
		}
	}
}