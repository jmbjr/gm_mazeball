/// state_idle

scr_get_input();
// set move state if there's any movement. otherwise check buttons
if (!is_idle())
    current_state = state.move; // is this really always true?

scr_handle_buttons();


