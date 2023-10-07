item_data =  {
	title : "Bolt",
	desc : "A big metal bolt. Part of an old broken ship.",
	weight : 1000,
	count : 1,
	price : 5,
	sprite : sprite_index,
	scr : function()
        {
			if mouse_check_button_pressed(mb_left){
				instance_create_depth(mouse_x, mouse_y, -1, obj_debree)
			}
        }
}

