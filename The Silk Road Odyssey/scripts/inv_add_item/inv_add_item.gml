// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function inv_add_item(title, description, count, object, sprite, weight, price){
	var ind = ds_list_find_index(obj_inventory.description, description)
	var found_count = ds_list_find_value(obj_inventory.count, ind)
	
	if found_count == undefined{
		ds_list_add(obj_inventory.title, title)
		ds_list_add(obj_inventory.description, description)
		ds_list_add(obj_inventory.count, count)
		ds_list_add(obj_inventory.object, object)
		ds_list_add(obj_inventory.sprite, sprite)
		ds_list_add(obj_inventory.weight, weight)
		ds_list_add(obj_inventory.price, price)
		obj_inventory.total_weight += weight
	}else{
		ds_list_set(obj_inventory.count, ind, found_count+count)
	}
	
	
}