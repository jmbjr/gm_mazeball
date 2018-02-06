/// scr_handle_buttons

if (change_view_key)
    scr_follow_me();

if (dash_key)
{
    state = state_dash;
    alarm[0] = dur_dash;
}
