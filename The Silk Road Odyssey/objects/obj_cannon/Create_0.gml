
item_data =  {
	title : "Large Cannon",
	desc : "Good for longer range but not very maneuverable.",
	weight : 1000,
	count : 1,
	sprite : sprite_index,
	scr : function()
        {
			var yy = camera_get_view_y(view_camera[0])
			var hh = camera_get_view_height(view_camera[0])
			if mouse_check_button_pressed(mb_left) and instance_exists(obj_ship) and mouse_y < yy+hh-100{
				var p = obj_ship
				scr_shake_screen(4)
				//fire from random hole in boat
				shot_hole = choose(0,16, -16, 24, -24)
				sh_x= lengthdir_x(p.angle)
				sh_y = lengthdir_y(p.angle)
				
				with(instance_create_depth(p.x, p.y, p.depth, obj_cannonball_proj)){
					direction = p.angle+choose(-90, 90)
					speed = 10
				}
			}
        }
}

