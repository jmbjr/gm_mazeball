///update grid
var _g = argument[0],
    _w = argument[1],
    _h = argument[2];
    
if (global.grid_refresh)
{
    ds_grid_clear(_g, tiletype.empty);
    
    for (var ii=0; ii<_w; ii++)
    {
        for (var jj=0; jj<_h; jj++)
        {
            if (tile_layer_find(tiledepth.solid,ii*global.cell_size, jj*global.cell_size))
                _g[# ii, jj] = tiletype.solid;
        }
    }
    global.grid_refresh = false;
}
