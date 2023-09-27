// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function inv_drop_item(index){
	var count = ds_list_find_value(obj_inventory.count, index)
	var drop_object = ds_list_find_value(obj_inventory.object, index)
	ds_list_add(dropped_object, drop_object)
	if count = 1{
		ds_list_delete(obj_inventory.title, index)
		ds_list_delete(obj_inventory.description, index)
		ds_list_delete(obj_inventory.count, index)
		ds_list_delete(obj_inventory.object, index)
		ds_list_delete(obj_inventory.sprite, index)
		ds_list_delete(obj_inventory.sprite, index)
		ds_list_delete(obj_inventory.price, index)
		obj_inventory.total_weight -= ds_list_find_value(obj_inventory.weight, index)
		ds_list_delete(obj_inventory.weight, index)
	}else{
		ds_list_set(obj_inventory.count, index, count-1)
	}
	
	
}