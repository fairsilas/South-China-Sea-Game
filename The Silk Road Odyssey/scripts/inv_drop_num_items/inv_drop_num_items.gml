function inv_drop_num_items(ind, l,num=10) {
    // Check if the index is valid
    if (ind >= 0 && ind < ds_list_size(l)) {
        if l[| ind].count > num{
            l[| ind].count -=num
        } else {
            ds_list_delete(l, ind);
		}
    }
}
