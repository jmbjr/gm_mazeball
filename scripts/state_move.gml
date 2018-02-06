/// state_move

scr_get_input();
scr_handle_buttons();

// check if the state is still moving (might not be after buttons)
// feels like bad practice
if (current_state == state.move)
{
    scr_move(walking_speed);
    scr_basic_collision();
    scr_animate_player();
}

if (is_idle())
    current_state = state.idle;
