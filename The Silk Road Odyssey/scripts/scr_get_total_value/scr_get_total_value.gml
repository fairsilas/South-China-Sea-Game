function scr_get_total_value(item_list){
	//total value starts at 0 and item prices are added
	total_val = 0
	
	//add all valid items prices together and return the total
	for (i=0; i< ds_list_size(item_list); i++){
		var item = ds_list_find_value(item_list, i)
		if ds_map_find_value(current_prices, item_list[|i].title) != undefined{
			total_val += item.count* ds_map_find_value(current_prices, item_list[|i].title)
		}
	}
	
	return total_val
}