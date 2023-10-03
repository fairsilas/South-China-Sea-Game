// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_find_collision_point(object_colliding_with){
	if place_meeting(x,y, object_colliding_with){
		var len = round(distance_to_point(object_colliding_with.x, object_colliding_with.y)/1.7)
		var dir = point_direction(x,y,object_colliding_with.x, object_colliding_with.y)
		var xx = x+lengthdir_x(len, dir)
		var yy = y+lengthdir_y(len, dir)
		var midpoint = [xx, yy]
		
		return midpoint
	}
	return noone
}