
item_data =  {
	title : "Large Cannon",
	desc : "Good for long distance attacks but not very maneuverable.",
	weight : 1000,
	count : 1,
	sprite : sprite_index,
	scr : function()
        {
			if mouse_check_button_pressed(mb_left) and instance_exists(obj_ship){
				var p = obj_ship
				scr_shake_screen(4)
				with(instance_create_depth(p.x, p.y, p.depth, obj_cannonball_proj)){
					direction = p.angle+choose(-90, 90)
					speed = 10
				}
			}
        }
}

