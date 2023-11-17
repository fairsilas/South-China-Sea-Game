draw_self()
vx = camera_get_view_x(view_camera[0])
vy = camera_get_view_y(view_camera[0])

global.player = obj_player
x = global.player.x
y = global.player.y

camera_set_view_speed(view_camera[0], distance_to_point(vx+(vw/2), y)/30,distance_to_point(x, vy+(vh/2))/30)