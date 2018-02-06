/// state_idle

scr_get_input();
// set move state if there's any movement. otherwise check buttons
if (xaxis != 0 || yaxis != 0)
    current_state = state.move;

scr_handle_buttons();


