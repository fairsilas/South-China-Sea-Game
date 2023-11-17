// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_init_default_prices(map, percent_variation=0){
	
	map[? "Tael of Silver"] = round(	1000		*(choose(0,1)*random(percent_variation)));
	map[? "Copper Coin"] = 1
	map[? "Large Cannon"] = round(1000	*(1+choose(1,-1)*random(percent_variation)));
	map[? "Small Cannon"] = 1000;
	map[? "Swivel Cannon"] = 1000;
	
	map[? "Large Cannonball"] = 20;
	map[? "Fine Gift Robes"] = 1400;
	map[? "Tael of Silver"] = 1000;
	map[? "Small Cannonball"] = 1000;
	map[? "Wallpiece"] = 1000;
	map[? "Tael of Silver"] = 1000;
	map[? "cano"] = 1000;
	
	
}
