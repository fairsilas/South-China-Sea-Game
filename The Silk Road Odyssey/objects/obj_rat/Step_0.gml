depth = -y
if hspeed > 0 {
	image_xscale = 1	
}else{
	image_xscale = -1	
}

if place_meeting(x+hspeed,y, obj_solid){
	hspeed = -hspeed
}