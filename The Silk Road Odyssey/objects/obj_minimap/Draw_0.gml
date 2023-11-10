var rad_hover = 10
var rad = 8
var hovered = false

if room==rm_map{
	for (i=0;i<array_length(places);i++){
		var p = places[i]
		var hover = (mouse_x > p.xx-rad_hover)
					and (mouse_x < p.xx+rad_hover)
					and(mouse_y > p.yy-rad_hover)
					and (mouse_y < p.yy+rad_hover);
		if (p = global.current_place){
			draw_set_color(c_black)
			for (j=0;j<array_length(p.adj);j++){
				draw_set_color(c_black)
				draw_line_width(p.xx,p.yy, adj_map[? p.adj[j]].xx,adj_map[? p.adj[j]].yy,2)
			}
		}else{
	
			draw_set_font(fnt_map)
			draw_set_color(c_black)
	
			if !hover{
				//default state
			
				//draw node default
				draw_circle(p.xx, p.yy, rad, false)
				draw_text(p.xx+10, p.yy-10, p.title)
				draw_set_color(p.col)
				draw_circle(p.xx, p.yy, rad/2, false)
			}else{
				hovered = true
				//mouse hover
			
				//draw description and title of SELECTED location
				draw_set_color(c_white)
				draw_text(30+room_width/1.5, room_height-50, p.title)
				draw_set_font(fnt_inv_desc)
				draw_text(30+room_width/1.5, room_height-30, p.desc)
				draw_set_font(fnt_map)
				draw_set_color(c_black)
			
				//make node enlarge
				draw_circle(p.xx, p.yy, rad_hover, false)
				draw_text(p.xx+10, p.yy-10, p.title)
				draw_set_color(p.col)
				draw_circle(p.xx, p.yy, rad_hover/2, false)
				if mouse_check_button_pressed(mb_left){
					for (j=0;j<array_length(global.current_place.adj);j++){
						if adj_map[? global.current_place.adj[j]] == p{
							global.target_place = p	
						}
					}
				}
			
			}
		}
	
		if (p = global.current_place){
			draw_sprite(spr_map_junk, 0, p.xx, p.yy)
		}
		if (p == global.target_place){
			draw_sprite(spr_map_target, 0, p.xx, p.yy)
		}
	}

	{
		//draw description and title of current location
				draw_set_color(c_white)
				draw_sprite(spr_map_junk, 0, 20, 30)
				draw_text(30, 30, global.current_place.title)
				draw_set_font(fnt_inv_desc)
				draw_text(30, 50, "You are currently at "+global.current_place.title+". "+global.current_place.desc)
				draw_set_font(fnt_map)
				draw_set_color(c_black)
			
		//draw description and title of target location
				if global.target_place != noone{
				draw_set_color(c_white)
				draw_sprite(spr_map_target, 0, 20, 130)
				draw_text(30, 130, global.target_place.title)
				draw_set_font(fnt_inv_desc)
				draw_text(30, 150, global.target_place.desc)
				draw_set_font(fnt_map)
				draw_set_color(c_black)
				if mouse_check_button_pressed(mb_left)and obj_minimap_travel_button.image_index = 1{
					room_goto(rm_merchant_encounter)
				}
				}
	}
}

	