mode = 0
battle_camera_mode = true



x = obj_ship.x
y = obj_ship.y

vw = camera_get_view_width(view_camera[0])
vh = camera_get_view_height(view_camera[0])
camera_set_view_pos(view_camera[0], x-(vw/2), y-(vh/2))


