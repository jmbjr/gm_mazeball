/// scr_move_state
scr_get_input();

if (any_dir_key)
{
    image_speed = 0.2;
    if (image_index == 0) image_index = 1;
}
else
{
    image_speed = 0;
    image_index = 0;
}

if (right_key)
{
    phy_position_x += walking_speed;
    sprite_index = spr_player_right;
}
if (left_key)
{
    phy_position_x -= walking_speed;
    sprite_index = spr_player_left;
}
if (up_key)
{
    phy_position_y -= walking_speed;
    sprite_index = spr_player_up;
}
if (down_key)
{
    phy_position_y += walking_speed;
    sprite_index = spr_player_down;
}
