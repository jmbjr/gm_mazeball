/// scr_move_state

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
        state = scr_dash_state;
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

//horizontal collision
if (place_meeting(x+hspd,y,obj_wall))
{
    while(!place_meeting(x+sign(hspd),y,obj_wall))
    {
        x += sign(hspd);
    }
    hspd = 0;
}
x += hspd;
 
//vertical collision
if (place_meeting(x,y+vspd,obj_wall))
{
    while(!place_meeting(x,y+sign(vspd),obj_wall))
    {
        y += sign(vspd);
    }
    vspd = 0;
}
y += vspd;
    

// handle animation
if (vspd > 0)
    sprite_index = player_down;
else if (vspd < 0)
    sprite_index = player_up;
    
if (hspd > 0)
    sprite_index = player_right;
else if (hspd < 0)
    sprite_index = player_left;



