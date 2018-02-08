/// scr_move (move_speed)

var _player = argument[0];
var _move_speed = argument[1];

with (_player)
{
    dir = point_direction(0, 0, xaxis, yaxis);
    
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
        hspd = lengthdir_x(_move_speed, dir);
        vspd = lengthdir_y(_move_speed, dir);
        image_speed = animation_speed;
        if (image_index == 0) image_index = 1;
    }
}
