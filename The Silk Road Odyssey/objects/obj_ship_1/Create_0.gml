global.player = self
audio_play_sound(snd_seaguls, 1, true)
audio_listener_orientation(0,1,0,0,0,1);
depth = 0

vx = camera_get_view_x(view_camera[0])
vy = camera_get_view_y(view_camera[0])
vw = camera_get_view_width(view_camera[0])
vh = camera_get_view_height(view_camera[0])
camera_set_view_pos(view_camera[0], x+vw/2,y+vh/2)




angle = 0
//turnspeed = 1
//max_speed = 2

//acc = 0.01
//rev_acc = -0.01
//momentum = 0.085
//frict = 0.09
turnspeed = 1
max_speed = 2

acc = 0.01
rev_acc = 0.01
momentum = 0.085
frict = 0.09



ripple_timer = 0
ripple_freq = 20
ripple_rand = 10


