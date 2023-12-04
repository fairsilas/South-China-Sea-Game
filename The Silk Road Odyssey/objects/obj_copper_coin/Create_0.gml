item_data =  {
	title : "Copper Coin",
	desc : "A copper coin. Worth around one Copper Coin.",
	weight : 1,
	count : 845,
	sprite : spr_copper_coin,
	scr : function(){
		var vy = camera_get_view_x(view_camera[0])
		var vh = camera_get_view_height(view_camera[0])
			if mouse_check_button_pressed(mb_left) and mouse_y > vy+(vh*0.7){
				scr_tooltip(choose("Heads!","Tails!"))	
			}
		}
}

