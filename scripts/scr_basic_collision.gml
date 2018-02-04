///scr_basic_collision

//horizontal collision
if (place_meeting_grid(x+hspd, y, tiletype.solid))
{
    while(!place_meeting_grid(x+sign(hspd), y, tiletype.solid))
    {
        x += sign(hspd);
    }
    hspd = 0;
}
x += hspd;
  
//vertical collision
if (place_meeting_grid(x, y+vspd, tiletype.solid))
{
    while(!place_meeting_grid(x, y+sign(vspd), tiletype.solid))
    {
        y += sign(vspd);
    }
    vspd = 0;
}
y += vspd;

/**
Before using the ds_grid, this worked below with checking against an object inheriting from par_wall
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
 
/**
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
**/
