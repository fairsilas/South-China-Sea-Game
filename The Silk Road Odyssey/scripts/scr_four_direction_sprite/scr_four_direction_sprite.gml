// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_four_direction_sprite(spr_up, spr_down, spr_left, spr_right){
	
	//fix angle number to 0-360
	while direction < 0{
		direction = -direction
	}
	while direction > 360{
		direction-=360
	}

	//up
	if  (direction >= 90-45 and direction <90+45){
		sprite_index = spr_up
	}
	//down
	if (direction >= 270-45 and direction <270+45){
		sprite_index = spr_down
	}	
	//left
	if (direction >= 180-45 and direction <180+45){
		sprite_index = spr_left
	}
	//right
	if(direction >= 0-45 and direction < 0+45){
		sprite_index = spr_right
	}
}