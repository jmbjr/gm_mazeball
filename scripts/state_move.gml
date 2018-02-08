/// state_move

scr_get_input();
scr_handle_buttons();

// check if the state is still moving (might not be after buttons)
// feels like bad practice
if (current_state == state.move)
{
    scr_move(self, walking_speed);
    scr_basic_collision(self);
    scr_animate_player(self);
}

if (is_idle(self))
    current_state = state.idle;
