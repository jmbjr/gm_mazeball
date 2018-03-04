///change_window_mode

var mode = argument0;

with (obj_display_manager)
{
    switch (mode) {
        case 0: zoom = 1; break;
        case 1: zoom = max_zoom; break;
    }
    scr_zoom();
}
