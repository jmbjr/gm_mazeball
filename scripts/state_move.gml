/// state_move

scr_get_input();

dir = point_direction(0, 0, xaxis, yaxis);
var sprite_bbox_top = sprite_get_bbox_top(sprite_index) - sprite_get_yoffset(sprite_index);
var sprite_bbox_left = sprite_get_bbox_left(sprite_index) - sprite_get_xoffset(sprite_index);
var sprite_bbox_right = sprite_get_bbox_right(sprite_index) - sprite_get_xoffset(sprite_index);
var sprite_bbox_bottom = sprite_get_bbox_bottom(sprite_index) - sprite_get_yoffset(sprite_index);

if (xaxis == 0 && yaxis == 0) 
{
    hspd = 0;
    vspd = 0;
    image_speed = 0;
    image_index = 0;
}
else
{
// actually moving
    if (dash_key)
    {
        state = state_dash;
        alarm[0] = dur_dash;
    }
     
    hspd = lengthdir_x(walking_speed, dir);
    vspd = lengthdir_y(walking_speed, dir);
    image_speed = animation_speed;
    if (image_index == 0) image_index = 1;
}

if (change_view_key)
{
    obj_player1.follow_me = false;
    obj_player2.follow_me = false;
    follow_me = true;
}

scr_basic_collision();
    

// handle animation
if (vspd > 0)
    sprite_index = player_down;
else if (vspd < 0)
    sprite_index = player_up;
    
if (hspd > 0)
    sprite_index = player_right;
else if (hspd < 0)
    sprite_index = player_left;



