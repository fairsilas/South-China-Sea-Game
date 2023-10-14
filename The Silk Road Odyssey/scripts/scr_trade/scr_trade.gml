// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function scr_trade(){
	
	
//switch trade on and off
if keyboard_check_pressed(vk_tab){
	currentInvState = InvStates.def
	scr_move_all_items(inv_trade, inv)
	scr_move_all_items(trader_trade, trader_inv)
}

price_y = 24

//only show inventory if it is active THIS PROBABLY SHOULD BE A STATE 
if (active = true){
	equipped_item = noone
	//draw basic GUI
	draw_sprite(spr_ship_info_panel_trade,0,vx,vy+vh)
	draw_text(vx-vw-43, vy+vh-40, "lbs:"+ string(total_weight)+" / MAX")
	draw_set_font(fnt_inv_desc)
	draw_set_color(c_ltgray)
	//draw trade button
	x_trade = 432
	y_trade = 390
	scr_trade_button(vx+x_trade, vy+y_trade)

	
	//draw traders selected items
	var x_trade = 570
	var y_trade = 400
	
	scr_draw_items(x_trade, y_trade, trader_trade, trader_inv, 5, 2)
	//draw traders selected items total value
	draw_text(vx+500,vy+470,string(scr_get_total_value(trader_trade)))
	
	
	//draw your selected items
	var x_trade = 190
	var y_trade = 400
	
	scr_draw_items(x_trade, y_trade, inv_trade, inv, 5, 2)
	//draw your items total value
	draw_text(vx+440,vy+470,string(scr_get_total_value(inv_trade)))
	
	
	//draw traders items
	x_trade = 390
	y_trade = 130
	
	scr_draw_items(x_trade, y_trade, trader_inv, trader_trade, width, height)

	
	y_trade = ypos
	x_trade = xpos
	scr_draw_items(x_trade, y_trade, inv, inv_trade, 6, 3)
	
	
	
	
	
	
	
	
	







	}
}


