function scr_create_item(item_title = "Item", item_sprite = spr_copper_coin,  item_weight = 1, item_count = 1, item_desc = "", item_function = function(){}) {
	return { title : item_title, desc : item_desc, weight : item_weight, count : item_count, sprite : item_sprite, scr : item_function}
}//end of function