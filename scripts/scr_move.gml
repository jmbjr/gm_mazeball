/// scr_move (move_speed)

var _player = argument[0];
var _move_speed = argument[1];

_move_speed *= speed_multiplier;

with (_player)
{    
    if (dir == -1) 
    {
        hspd = 0;
        vspd = 0;
        image_speed = 0;
        image_index = 0;
    }
    else
    {
        // actually moving
        var _s = point_distance(0,0, -inputdog_analog("left",playerSlot)+inputdog_analog("right",playerSlot),
                                -inputdog_analog("up",playerSlot)+inputdog_analog("down",playerSlot))
        
        hspd = lengthdir_x(_move_speed * _s, dir);
        vspd = lengthdir_y(_move_speed * _s, dir);
        image_speed = animation_speed;
        if (image_index == 0) image_index = 1;
    }
}
