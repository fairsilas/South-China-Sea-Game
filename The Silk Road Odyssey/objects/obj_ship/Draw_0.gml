image_angle = angle

draw_sprite_ext(sprite_index, image_index,x-2,y+2,image_xscale,image_yscale,angle,c_black, 0.1)
draw_sprite_ext(sprite_index, image_index,x-4,y+4,image_xscale,image_yscale,angle,c_black, 0.1)
draw_sprite_ext(sprite_index, image_index,x-6,y+6,image_xscale,image_yscale,angle,c_black, 0.1)

draw_sprite_ext(sprite_index, image_index,x,y,image_xscale,image_yscale,angle,image_blend,image_alpha)