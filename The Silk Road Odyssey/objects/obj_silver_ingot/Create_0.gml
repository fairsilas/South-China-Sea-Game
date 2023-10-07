item_data =  {
	title : "A Tael of Silver  一两银)",
	desc : "A Worth around 1000 yuan. Although prices vary greatly depending on area and demand.(More info needed)",
	weight : 1,
	count : 1,
	price : 1000,
	sprite : sprite_index,
	scr : function()
        {
			if mouse_check_button_pressed(mb_left){
				instance_create_depth(mouse_x, mouse_y, -1, obj_debree)
			}
        }
}
