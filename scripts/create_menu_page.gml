///create_menu_page
///@arg ["Name1", type1, entries1...]
///@arg ["Name2", type2, entries2...]

var arg, i = 0;
var num_cols = 5;

repeat(argument_count) 
{
    arg[i] = argument[i];
    i++;
}

var ds_grid_id = ds_grid_create(num_cols, argument_count);

i=0;
repeat(argument_count)
{
    var _array = arg[i];
    var array_len = array_length_1d(_array);
    
    var xx = 0;
    repeat(array_len)
    {
        ds_grid_id[# xx, i] = _array[xx];
        xx++;
    }
    i++;
}



return ds_grid_id;

