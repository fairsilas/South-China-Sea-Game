function scr_add_num_items(item, list, num=10) {
    var duplicate_item_index = -1;

    // Check for duplicates in the inventory
    for (var i = 0; i < ds_list_size(list); i++) {
        if (list[| i]).title == item.title {
            duplicate_item_index = i;
            break; // Exit the loop once a duplicate is found
        }
    }

    if (duplicate_item_index == -1) { // Use '==' for comparison
		if (item.count <= num){
			ds_list_add(list, item);
		}else{
			item.count = num
			ds_list_add(list, item);
		}
		
		
    } else {
		if item.count >= num{
			list[| duplicate_item_index].count += num
		}else{
			list[| duplicate_item_index].count +=item.count	
		}
    }
}