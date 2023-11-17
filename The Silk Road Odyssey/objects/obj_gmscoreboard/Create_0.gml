//create global game variables to be adjusted
global.score = 0

game_set_speed(60, gamespeed_fps);
room_speed = 60

/* 
	first create an account at https://gmscoreboard.com
	Then login and create a scoreboard for your account. 
	Copy the tagid of your scoreboard from the website and replace the code below using your tagid
	setup_gmscoreboard("tagid goes here");
*/ 

//this tag is for the Example scoreboard, replace with your tagid.
setup_gmscoreboard("0dc680cd49fda4dc0fc389894b1ff7d1");


//feel free to edit this object or create your own object to process gmscoreboard api requests.

