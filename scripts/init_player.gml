/// init_player

/// create
walking_speed = 2;

//I think I need a proper data structure for these states
//dash
dash_speed = walking_speed * 4;
dur_dash_max = room_speed*1.5;
dur_dash = 0;
cd_rate_dash = 5;

//frozen
dur_frozen_max = room_speed*8;
dur_frozen = 0;
cd_rate_frozen = 5;

dur_help = room_speed * 4;


view_zoom = 1;
view_max_zoom = 10;
show_help = true;
draw_bbox = false;

current_state = state.idle;

hspd = 0;
vspd = 0;
xaxis = 0;
yaxis = 0;
len = 0;
dir = 0;
animation_speed = 0.2;
image_speed = 0;

sprite_index = noone;
alarm[1] = dur_help;
 