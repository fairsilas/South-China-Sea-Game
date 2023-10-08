// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function inv_drop_item(ind,l){
		var val = ds_list_find_value(l, ind)
		
		if (ds_list_find_value(l, ind) and val.count > 1){
			val.count -=1
			ds_list_set(l, ind, val)
			
		}else{
			
			ds_list_delete(l, ind)
		
		}
	

}