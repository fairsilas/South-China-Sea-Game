function scr_add_item(item, list) {
    var duplicate_item_index = -1;

    // Check for duplicates in the inventory
    for (var i = 0; i < ds_list_size(list); i++) {
        if (ds_list_find_value(list, i).title == item.title) {
            duplicate_item_index = i;
            break; // Exit the loop once a duplicate is found
        }
    }

    if (duplicate_item_index == -1) { // Use '==' for comparison
        ds_list_add(list, item);
    } else {
        var val = ds_list_find_value(list, duplicate_item_index);
        val.count += 1;
        ds_list_set(list, duplicate_item_index, val);
    }
}