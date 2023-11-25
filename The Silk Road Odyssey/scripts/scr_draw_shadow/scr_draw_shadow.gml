// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_draw_shadow(shadow_length = 26){
	if place_meeting(x,y-shadow_length, obj_solid){
	draw_y = 0
	while(!place_meeting(x,y-draw_y, obj_solid)){
		draw_y ++
	}
	
	//draw wall shadow
	draw_sprite_ext(
	sprite_index, image_index, x-draw_y,y-draw_y-10,
	-image_xscale, -image_yscale*clamp((shadow_length/(draw_y*5))+.2, 0.2, .8), 
	image_angle-180, 
	c_black, image_alpha/10
	)
	
	// Draw floor shadow
	draw_sprite_ext(
	sprite_index, image_index, x,y,
	-image_xscale, -image_yscale/(shadow_length/draw_y), 
	image_angle-135, 
	c_black, image_alpha/10
	)	
	
}else{
	// Draw the shadow sprite with an offset (adjust as needed)
	draw_sprite_ext(
	sprite_index, image_index, x,y,
	-image_xscale, -image_yscale*(26/shadow_length), 
	image_angle-135, 
	c_black, image_alpha/10
	)	
}
}