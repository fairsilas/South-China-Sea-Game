// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_init_default_prices(map, percent_variation=0){
	
	map[? "Tael of Silver"] = round(	1000		*(1+choose(1,-1)*random(percent_variation)));
	map[? "Copper Coin"] = round(		10		*(1+choose(1,-1)*random(percent_variation)));
	map[? "Bolt"] = round(	1000	*(1+choose(1,-1)*random(percent_variation)));
	map[? "New item"] = 1000;
	map[? "Bundle of silk"] = 20;
	map[? "Fine Gift Robes"] = 1400;
	map[? "Tael of Silver"] = 1000;
	map[? "Tael of Silver"] = 1000;
	map[? "Tael of Silver"] = 1000;
	map[? "Tael of Silver"] = 1000;
	map[? "Tael of Silver"] = 1000;
	
	
}
