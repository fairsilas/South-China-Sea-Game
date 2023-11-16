
item_data =  {
	title : "Swivel Cannon",
	desc : "Also called a wallpiece. This small cannon is good for maneuverablility and short range attack.",
	weight : 100,
	count : 1,
	sprite : sprite_index,
	scr : function()
        {
			var yy = camera_get_view_y(view_camera[0])
			var hh = camera_get_view_height(view_camera[0])
			var i = obj_inventory
			var p = obj_ship
			if (i.reload_timer <= 0) and mouse_check_button_pressed(mb_left) and instance_exists(obj_ship) and mouse_y < yy+hh-100{
				//if you have ammo
				var ammo_index = scr_find_item("Small Cannonball")
				if (ammo_index != noone){
					inv_drop_item(i.inv, ammo_index)
					i.reload_timer = 150/scr_find_item("Swivel Cannon").count
					with(instance_create_depth(p.x, p.y, p.depth, obj_small_cannonball_proj)){
						direction = point_direction(p.x,p.y, mouse_x,mouse_y)
						speed = 4
					}
				}else{
					scr_tooltip("No Small Cannonballs")	
				}
			}
			
        }
}

