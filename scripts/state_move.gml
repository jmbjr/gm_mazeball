/// state_move

scr_get_input();
scr_handle_buttons();
if (state == state_move)
{
    scr_move(walking_speed);
    scr_basic_collision();
    scr_animate_player();
}


