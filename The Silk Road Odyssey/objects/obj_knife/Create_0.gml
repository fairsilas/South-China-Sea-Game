
item_data =  {
	title : "Knife",
	desc : "A simple knife. Sharp and ergonomic but not anything special.",
	weight : 1000,
	count : 1,
	sprite : sprite_index,
	scr : function()
        {
			var i = obj_inventory
			var yy = camera_get_view_y(view_camera[0])
			var hh = camera_get_view_height(view_camera[0])
			
			//if try to stab
			if mouse_check_button_pressed(mb_left) and instance_exists(obj_player) and (mouse_y < yy+hh-100){
				var p = obj_player
				obj_player.current_state = player_state.stab
				
					//scr_tooltip("!")
				}
			}
        }
}

