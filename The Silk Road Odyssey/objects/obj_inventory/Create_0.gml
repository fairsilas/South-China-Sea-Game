//ship and player stats

total_weight = 0;
max_weight = 100*2000 // 100 tons
global.player = obj_ship

your_trade_value = 0
trader_trade_value = 0

equipped_item = noone
current_prices = ds_map_create()
scr_init_default_prices(current_prices, 0.1)







enum InvStates {
    def,
    trade
}

// Initialize the current inventory state
currentInvState = InvStates.def;

active = true

//set up view x and y
vx = camera_get_view_x(view_camera[0])
vy = camera_get_view_y(view_camera[0])
vw = camera_get_view_width(view_camera[0])
vh = camera_get_view_height(view_camera[0])

//set up where inventory shows up
width = 15
height = 3
cell_size = 42

xpos = vw/5
ypos = vh /1.19


xprofile = 80
yprofile = vh -200

inv = ds_list_create()
trader_inv = ds_list_create()

trader_trade = ds_list_create()
inv_trade = ds_list_create()









