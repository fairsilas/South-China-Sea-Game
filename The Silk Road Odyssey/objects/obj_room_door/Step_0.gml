var door = self


if (alarm[0] < 0){
with (obj_player){
	if place_meeting(x+hspeed,y, door){
		door.alarm[1] = 1
		x -= hspeed+1*sign(hspeed)
		hspeed = 0
	}else 
	if place_meeting(x,y+vspeed, door){
		door.alarm[1] = 1
		y -= vspeed+1*sign(vspeed)
		vspeed = 0
	}
	
}
}








