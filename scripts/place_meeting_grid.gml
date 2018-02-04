///place_meeting_grid(xpos,ypos,tile_type)
var xpos = argument[0];
var ypos = argument[1];
var tile_type = argument[2];
var chk = false;

//we check 5 points to see if any of them live in a grid cell that matches the tiletype
var _grid = obj_grid.grid;
var _cell_size = obj_grid.cell_size;

var bbox_width = bbox_right - bbox_left;
var bbox_height = bbox_bottom - bbox_top;

//for each point, we need to get the grid equiv, then check for tiletype
xchk[0] = xpos div _cell_size; // middle
xchk[1] = (xpos + bbox_width/2) div _cell_size; //right
xchk[2] = (xpos - bbox_width/2) div _cell_size; //left
xchk[3] = (xpos + bbox_width/2) div _cell_size; //right
xchk[4] = (xpos - bbox_width/2) div _cell_size; //left

ychk[0] = ypos div _cell_size; //middle
ychk[1] = (ypos - bbox_height/2) div _cell_size; //top
ychk[2] = (ypos - bbox_height/2) div _cell_size; //top
ychk[3] = (ypos + bbox_height/2) div _cell_size; //bottom
ychk[4] = (ypos + bbox_height/2) div _cell_size; //bottom

for (var ii=0; ii<array_length_1d(xchk); ii++)
{
    tile_type_chk = ds_grid_get(_grid, xchk[ii], ychk[ii]);
    chk = ((tile_type_chk == tile_type) || chk);
}

return chk;

