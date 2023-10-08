
function scr_add_item2(item ,item_list){
	//check
	ttl = 0
	for (i=0; i< ds_list_size(item_list); i++){
		ttl +=1
	}
	show_debug_message(string(ttl))
		
	ds_list_add(item_list,item)

	
}