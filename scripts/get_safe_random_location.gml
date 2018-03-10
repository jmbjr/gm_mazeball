/// get_safe_random_location(tiledepth of unsafe tiles)

var _depth = argument[0];
var _loc;
var _tile = 0;
var rand_x, rand_y;
var buffer = 8;

while (_tile != -1)
{
    // try random locations till we find a location without a tile
    rand_x = (irandom_range(4*global.cell_size, room_width -  4*global.cell_size ) div global.cell_size) *global.cell_size;
    rand_y = (irandom_range(4*global.cell_size, room_height - 4*global.cell_size) div global.cell_size) *global.cell_size;
    
    //check center tile
    _tile = tile_layer_find(_depth, rand_x , rand_y );
    //check corners considering buffer
    _tile = max(_tile, tile_layer_find(_depth, rand_x + buffer , rand_y + buffer));
    _tile = max(_tile, tile_layer_find(_depth, rand_x + buffer , rand_y - buffer));
    _tile = max(_tile, tile_layer_find(_depth, rand_x - buffer , rand_y + buffer));
    _tile = max(_tile, tile_layer_find(_depth, rand_x - buffer , rand_y - buffer));

}

_loc[0] = rand_x ;
_loc[1] = rand_y;

return _loc;

