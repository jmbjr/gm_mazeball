/// scr_animate_player
var _player = argument[0];

with (_player)
{
    if (vspd > 0)
        sprite_index = player_down;
    else if (vspd < 0)
        sprite_index = player_up;
        
    if (hspd > 0)
        sprite_index = player_right;
    else if (hspd < 0)
        sprite_index = player_left;
}
