// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_init_default_prices(map, percent_variation=0,price_multiplier=1){
	
	map[? "Tael of Silver"] = round(	1000		*(choose(0,1)*random(percent_variation)));
	map[? "Copper Coin"] = 1
	map[? "Large Cannon"] = round(7500	*(1+choose(1,-1)*random(percent_variation)))*price_multiplier;
	map[? "Small Cannon"] = 2750*price_multiplier;
	map[? "Swivel Cannon"] = 3000*price_multiplier;
	map[? "Large Cannonball"] = 20*price_multiplier;
	map[? "Fine Gift Robes"] = 1400*price_multiplier;
	map[? "Tael of Silver"] = 1000*price_multiplier;
	map[? "Small Cannonball"] = 1000*price_multiplier;
	map[? "Wallpiece"] = 1000*price_multiplier;
	map[? "Tael of Silver"] = 1000*price_multiplier;
	map[? "cano"] = 1000*price_multiplier;
	
	
}
