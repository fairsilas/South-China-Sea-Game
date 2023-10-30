
item_data =  {
	title : "Large Cannon",
	desc : "Good for long distance attacks but not very maneuverable.",
	weight : 1000,
	count : 1,
	sprite : sprite_index,
	scr : function()
        {
			if mouse_check_button_pressed(mb_left){
				var a = angle
				with(instance_create_depth(x,y, depth, obj_cannonball_proj)){
					direction = a+choose(-90, 90)
					speed = 10
				}
			}
			
        }
}

