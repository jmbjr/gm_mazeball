/// initialize grid for tiles (room_width, room_height)
var _rw = argument[0],
    _rh = argument[1];
    
width = _rw / global.cell_size;
height = _rh / global.cell_size;
grid = ds_grid_create(_rw, _rh);
