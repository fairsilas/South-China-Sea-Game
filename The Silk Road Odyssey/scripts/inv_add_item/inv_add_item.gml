// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function inv_add_item(item_data){
		var duplicate_item_ind = -1
		for(i=0; i<ds_list_size(obj_inventory.inv); i++){
			 if ds_list_find_value(obj_inventory.inv, i).title == item_data.title{
				 duplicate_item_ind = i
			 }
		}
		
		
		if (duplicate_item_ind != -1){
			var val = ds_list_find_value(obj_inventory.inv, duplicate_item_ind)
			val.count +=1
			ds_list_set(obj_inventory.inv, duplicate_item_ind, val)
			
		}else{
			
			ds_list_add(obj_inventory.inv,item_data)
		
		}
		
	
	
}