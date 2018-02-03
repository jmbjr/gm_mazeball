///scr_basic_collision

//horizontal collision
if (place_meeting(x+hspd,y,par_wall))
{
    while(!place_meeting(x+sign(hspd),y,par_wall))
    {
        x += sign(hspd);
    }
    hspd = 0;
}
x += hspd;
 
//vertical collision
if (place_meeting(x,y+vspd,par_wall))
{
    while(!place_meeting(x,y+sign(vspd),par_wall))
    {
        y += sign(vspd);
    }
    vspd = 0;
}
y += vspd;
