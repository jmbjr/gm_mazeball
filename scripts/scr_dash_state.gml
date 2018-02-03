/// scr_dash_state

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
    hspd = lengthdir_x(dash_speed, dir);
    vspd = lengthdir_y(dash_speed, dir);
    image_speed = animation_speed;
    if (image_index == 0) image_index = 1;
}

scr_basic_collision();

// create dash effect
var dash = instance_create(x, y, obj_dash_effect);
dash.sprite_index = sprite_index;
dash.image_index = image_index;




