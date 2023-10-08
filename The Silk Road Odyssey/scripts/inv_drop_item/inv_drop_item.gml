function inv_drop_item(ind, l) {
    // Check if the index is valid
    if (ind >= 0 && ind < ds_list_size(l)) {
        if l[| ind].count > 1{
            l[| ind].count -=1
        } else {
            ds_list_delete(l, ind);
		}
    }
}
