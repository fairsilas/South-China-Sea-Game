
item_data =  {
	title : "Swivel Cannon",
	desc : "Also called a wallpiece. This small cannon is good for maneuverablility and short range attack.",
	weight : 100,
	count : 1,
	sprite : sprite_index,
	scr : function()
        {
			if mouse_check_button_pressed(mb_left) and instance_exists(obj_ship){
				var p = obj_ship
				with(instance_create_depth(p.x, p.y, p.depth, obj_cannonball_proj)){
					direction = point_direction(p.x,p.y, mouse_x,mouse_y)
					speed = 10
				}
			}
			
        }
}

