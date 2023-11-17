mode = 0
battle_camera_mode = true


vx = camera_get_view_x(view_camera[0])
vy = camera_get_view_y(view_camera[0])
vw = camera_get_view_width(view_camera[0])
vh = camera_get_view_height(view_camera[0])

global.player = obj_player
x = room_width/3
y = room_height/3

alarm[5] = 1 //snap to player


camera_set_view_pos(view_camera[0], x,y)


