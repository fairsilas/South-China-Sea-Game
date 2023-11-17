var door = self
if alarm[1] <0{
with (obj_player){
	if place_meeting(x+hspeed,y, door){
		door.alarm[1] = 10
		x = xprevious
		hspeed = 0
	}else 
	if place_meeting(x,y+vspeed, door){
		door.alarm[1] = 10
		y = yprevious
		vspeed = 0
	}
	
}

}




