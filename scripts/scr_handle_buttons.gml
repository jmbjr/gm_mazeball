/// scr_handle_buttons

// maybe should maintain a heirarchy of how to deal with buttons
// and use a switch/case

if (change_view_key)
    scr_follow_me();

if (dash_key)
{
    current_state = state.dash;
    dur_dash = dur_dash_max; 
}
