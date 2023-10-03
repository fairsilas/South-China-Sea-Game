// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_shake_screen(duration=10){
	obj_player_view.mode = 1
	obj_player_view.alarm[0] = duration
}