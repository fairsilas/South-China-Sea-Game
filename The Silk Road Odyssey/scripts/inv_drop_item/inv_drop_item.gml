// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function inv_drop_item(index){
		var val = ds_list_find_value(obj_inventory.inv, index)
		
		if (val.count > 1){
			val.count -=1
			ds_list_set(obj_inventory.inv, index, val)
			
		}else{
			
			ds_list_delete(obj_inventory.inv, index)
		
		}
	

}