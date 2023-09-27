total_weight = 0;

active = false

//set up view x and y
vx = camera_get_view_x(view_camera[0])
vy = camera_get_view_y(view_camera[0])
vw = camera_get_view_width(view_camera[0])
vh = camera_get_view_height(view_camera[0])

//set up where inventory shows up
width = 16
height = 3
cell_size = 35
xpos = vw/5
ypos = vh /1.19

xprofile =16
yprofile = vh -170

title = ds_list_create()
object = ds_list_create()
sprite = ds_list_create()
description = ds_list_create()
count = ds_list_create()
weight = ds_list_create()
price = ds_list_create()
equipped_item = noone

dropped_object = ds_list_create()





