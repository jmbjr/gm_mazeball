///scr_basic_collision
var _grid = obj_grid.grid;
var _cell_size = obj_grid.cell_size;

//using ds_grid, we first figure out which grid we are moving into and figure out if there's something solid there
var xgrid = (x) div _cell_size;
var ygrid = (y) div _cell_size;

var xgrid_chk = (x+hspd) div _cell_size;
var ygrid_chk = (y+vspd) div _cell_size;
var tiletype_xchk = ds_grid_get(_grid, xgrid_chk, ygrid);
var tiletype_ychk = ds_grid_get(_grid, xgrid, ygrid_chk);

if (tiletype_xchk == tiletype.solid)
{
    show_debug_message(string(xgrid_chk));
    show_debug_message(string(ygrid_chk));
    hspd = 0;
}


if (tiletype_ychk == tiletype.solid)
{
    show_debug_message(string(xgrid_chk));
    show_debug_message(string(ygrid_chk));
    vspd = 0;
}

/**
//horizontal collision
if (place_meeting(x+hspd,y,par_wall))
{
    while(!place_meeting(x+sign(hspd),y,par_wall))
    {
        x += sign(hspd);
    }
    hspd = 0;
}
**/
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
**/
y += vspd;
