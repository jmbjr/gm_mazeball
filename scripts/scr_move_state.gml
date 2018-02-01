/// scr_move_state
scr_get_input();

var dir = point_direction(0, 0, xaxis, yaxis);

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
    hspd = lengthdir_x(walking_speed, dir);
    vspd = lengthdir_y(walking_speed, dir);
    image_speed = animation_speed;
    if (image_index == 0) image_index = 1;
}

phy_position_x += hspd;
phy_position_y += vspd;

// handle animation
if (vspd > 0)
    sprite_index = spr_player_down;
else if (vspd < 0)
    sprite_index = spr_player_up;
    
if (hspd > 0)
    sprite_index = spr_player_right;
else if (hspd < 0)
    sprite_index = spr_player_left;



