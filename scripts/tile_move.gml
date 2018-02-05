///tile_move(depth_src, depth_dest, x, y)

var _depth_src = argument[0];
var _depth_dest = argument[1];
var _x = argument[2];
var _y = argument[3];
var _g = obj_grid.grid;       // grab local grid handle for performance boost - not neccesary when a global var. Shown here for consistency reasons.
var _t = obj_grid.cell_size;

//VERY STRONG ASSUMPTION that tile width and height is _t. this should be a constant
var _tile = tile_layer_find(_depth_src, _x, _y);

//now put the tile on the new layer
if tile_exists(_tile) 
{
    var _tile_bkg = tile_get_background(_tile);
    var _tile_left = tile_get_left(_tile);
    var _tile_top = tile_get_top(_tile);
    var _tile_width = tile_get_width(_tile);
    var _tile_height= tile_get_height(_tile);
    
    var _row = _x div _t;
    var _col = _y div _t;

    
    tile_delete(_tile);
    tile_add(_tile_bkg, _tile_left, _tile_top, _tile_width, _tile_height, _x, _y, _depth_dest);
    global.grid_refresh = true;
}



    
    
