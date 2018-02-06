/// scr_move (move_speed)

var move_speed = argument[0];
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
    hspd = lengthdir_x(move_speed, dir);
    vspd = lengthdir_y(move_speed, dir);
    image_speed = animation_speed;
    if (image_index == 0) image_index = 1;
}
