// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_add_item(item_data,list){
	//check
		var duplicate_item_ind = -1
		for(i=0; i < ds_list_size(list); i++){
			 if ds_list_size(list)>0 and ds_list_find_value(list, i).title == item_data.title{
				 duplicate_item_ind = i
			 }
		}
		
		
		if (duplicate_item_ind != -1){
			
			ds_list_find_value(list, duplicate_item_ind).count += 1
			
			
		}else{
			
			ds_list_add(list,item_data)
		
		}
		
	
	
}