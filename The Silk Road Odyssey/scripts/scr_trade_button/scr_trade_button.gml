// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_trade_button(xx, yy){
	var w = 86
	var h = 33
	
	var hover = (mouse_x > xx)
				and (mouse_x < xx+w)
				and(mouse_y > yy)
				and (mouse_y < yy+h)
				
				
		
	if ds_list_size(inv_trade) > 0 and ds_list_size(trader_trade) > 0{
		var yours = scr_get_total_value(inv_trade)
		var traders = scr_get_total_value(trader_trade)
		
		//if trade is valid
		if (yours >= traders){
			if hover{
				//allow player to accept trade
				if mouse_check_button(mb_left){
					scr_move_all_items(trader_trade, inv)
					scr_move_all_items(inv_trade,trader_inv)
					draw_sprite(spr_trade_button, 4, xx, yy)
				}else{
					draw_sprite(spr_trade_button, 3, xx, yy)
				}
			}else{
				//trade is acceptable
				draw_sprite(spr_trade_button, 2, xx, yy)
			}
		//trade is not valid
		}else if (yours < traders){
			draw_sprite(spr_trade_button, 1, xx, yy)	
		}
	}else{
		//trade not complete
		draw_sprite(spr_trade_button, 0, xx, yy)	
	}
	
	
	
}