// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_find_item(item_name){
	for (i=0; i< ds_list_size(obj_inventory.inv); i++){
		if ds_list_find_value(obj_inventory.inv, i).title = item_name{
			return ds_list_find_value(obj_inventory.inv, i)
		}
	}
	return noone
}