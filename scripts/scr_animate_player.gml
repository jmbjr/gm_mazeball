/// scr_animate_player
var _player = argument[0];

with (_player)
{
    if (vspd > 0)
        spritedir = facing.down;
    else if (vspd < 0)
        spritedir = facing.up;
        
    if (hspd > 0)
        spritedir = facing.right;
    else if (hspd < 0)
        spritedir = facing.left;
}
