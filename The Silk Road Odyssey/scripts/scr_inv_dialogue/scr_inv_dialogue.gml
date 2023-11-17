// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_inv_dialogue(){
	global.can_move = false


	if (active = true){
	draw_sprite(spr_ship_info_panel_talk,0,vx,vy+vh)
	draw_sprite(profile.spr,sprite_index,vx+171,vy+116)
	draw_set_color(c_white)
	draw_set_font(fnt_inv_title)
	draw_text(vx+180,vy+336,profile.title)
	draw_set_font(fnt_inv_desc)
	draw_text_ext(vx+180,vy+400,profile.desc, 16, 178)
	}
}