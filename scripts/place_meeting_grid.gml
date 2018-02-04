///place_meeting_grid(xpos,ypos,tile_type)
var xpos = argument[0];
var ypos = argument[1];
var tile_type = argument[2];
var chk = false;
var tile_type_chk = 0;
var xchk = noone;
var ychk = noone;

//we check 5 points to see if any of them live in a grid cell that matches the tiletype
var _grid = obj_grid.grid;
var _cell_size = obj_grid.cell_size;

var bbox_width = bbox_right - bbox_left;
var bbox_height = bbox_bottom - bbox_top;

var xoffset = bbox_width - sprite_xoffset;
var yoffset = bbox_height - sprite_yoffset;

//for each point, we need to get the grid equiv, then check for tiletype
xchk[0] = (xpos - xoffset) div _cell_size; // middle
xchk[1] = (xpos - xoffset + round(bbox_width/2)) div _cell_size; //right
xchk[2] = (xpos - xoffset - round(bbox_width/2)) div _cell_size; //left
xchk[3] = (xpos - xoffset + round(bbox_width/2)) div _cell_size; //right
xchk[4] = (xpos - xoffset - round(bbox_width/2)) div _cell_size; //left

ychk[0] = (ypos - yoffset) div _cell_size; //middle
ychk[1] = (ypos - yoffset - round(bbox_height/2)) div _cell_size; //top
ychk[2] = (ypos - yoffset - round(bbox_height/2)) div _cell_size; //top
ychk[3] = (ypos - yoffset + round(bbox_height/2)) div _cell_size; //bottom
ychk[4] = (ypos - yoffset + round(bbox_height/2)) div _cell_size; //bottom

for (var ii=0; ii<array_length_1d(xchk); ii++)
{
    var tile_type_chk = ds_grid_get(_grid, xchk[ii], ychk[ii]);
    chk = ((tile_type_chk == tile_type) || chk);
}

return chk;

