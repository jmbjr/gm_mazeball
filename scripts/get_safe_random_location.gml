/// get_safe_random_location(tiledepth of unsafe tiles)

var _depth = argument[0];
var _loc;
var _tile = 0;
var rand_x, rand_y;

while (_tile != -1)
{
    // try random locations till we find a location without a tile
    rand_x = (irandom_range(3*global.cell_size, room_width - 3*global.cell_size ) div global.cell_size) *global.cell_size;
    rand_y = (irandom_range(3*global.cell_size, room_height - 3*global.cell_size) div global.cell_size) *global.cell_size;
    
    _tile = tile_layer_find(_depth, rand_x , rand_y );
}

_loc[0] = rand_x ;
_loc[1] = rand_y;

return _loc;

