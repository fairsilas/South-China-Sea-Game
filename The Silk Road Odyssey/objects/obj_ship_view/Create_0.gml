mode = 0
battle_camera_mode = true
view_center_timer = 10

vx = camera_get_view_x(view_camera[0])
vy = camera_get_view_y(view_camera[0])
vw = camera_get_view_width(view_camera[0])
vh = camera_get_view_height(view_camera[0])


x = obj_ship.x
y = obj_ship.y

alarm[5] = 1 //snap to player


camera_set_view_speed(view_camera[0], 1000,1000)


