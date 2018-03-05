///change_resolution

var mode = argument0;

with (obj_display_manager)
{
    zoom = mode+1;
    scr_zoom();
}
