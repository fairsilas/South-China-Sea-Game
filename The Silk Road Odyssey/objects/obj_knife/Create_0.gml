
item_data =  {
	title : "Knife",
	desc : "A simple knife. Sharp and ergonomic but not anything special.",
	weight : 5,
	count : 1,
	sprite : sprite_index,
	scr : function(){
	    var yy = camera_get_view_y(view_camera[0]);
	    var hh = camera_get_view_height(view_camera[0]);
	    var p = obj_player;
    
	    //if try to stabAs
	    if ( mouse_check_button_pressed(mb_left) and instance_exists(obj_player) and p.current_state == player_state.move and (mouse_y < yy+hh-100)){
        
	        p.image_index = 0;
	        p.image_speed = 1;
	        if (p.x < mouse_x){
	            p.sprite_index = spr_player_right_stab;
	        } else {
	            p.sprite_index = spr_player_left_stab;
	        }
	        p.current_state = player_state.stab;
	    }
	}

}

