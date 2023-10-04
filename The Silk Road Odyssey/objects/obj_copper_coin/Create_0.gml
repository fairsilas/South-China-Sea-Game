item_data =  {
	title : "Copper Coin",
	desc : "Worth 10元. A Qing Dynasty Copper coin. The hole in the middle makes it convenient to carry on a string.",
	weight : 1000,
	count : 1,
	price : 10,
	sprite : sprite_index,
	scr : function()
        {
			if mouse_check_button_pressed(mb_left){
				instance_create_depth(mouse_x, mouse_y, -1, obj_debree)
			}
        }
}

