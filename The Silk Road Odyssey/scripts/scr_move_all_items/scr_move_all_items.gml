function scr_move_all_items(source, dest) {
    // Check for duplicates in the inventory
    while ds_list_size(source) > 0{
		copy = copy_struct(source[|0])
		scr_add_items(copy, dest)
		inv_drop_items(0,source)
	}
}