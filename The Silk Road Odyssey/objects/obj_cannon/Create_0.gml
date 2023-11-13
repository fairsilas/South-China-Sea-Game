
item_data =  {
	title : "Large Cannon",
	desc : "Good for longer range but not very maneuverable.",
	weight : 1000,
	count : 1,
	sprite : sprite_index,
	scr : function()
        {
			var i = obj_inventory
			var yy = camera_get_view_y(view_camera[0])
			var hh = camera_get_view_height(view_camera[0])
			if (i.reload_timer <= 0) and mouse_check_button_pressed(mb_left) and instance_exists(obj_ship) and mouse_y < yy+hh-100{
				var p = obj_ship
				i.reload_timer = 300/scr_find_item("Large Cannon").count
				//fire from random hole in boat
				shot_hole = choose(0,16, -8, 24, -16)
				sh_x= lengthdir_x(shot_hole, p.angle)
				sh_y = lengthdir_y(shot_hole, p.angle)
				var pd = angle_difference(point_direction(obj_ship.x, obj_ship.y, mouse_x, mouse_y),obj_ship.angle)
				while pd < 0{
					pd +=360	
				}
				with(instance_create_depth(p.x+sh_x, p.y+sh_y, p.depth, obj_cannonball_proj)){
					if (pd > 180){
						direction = p.angle-(90)
					}else{
						direction = p.angle+(90)
					}
					//direction = p.angle+choose(-90, 90)
					speed = 5
				}
				
			}
        }
}

