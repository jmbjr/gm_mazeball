/// scr_handle_buttons

// maybe should maintain a heirarchy of how to deal with buttons
// and use a switch/case

// ALSO MAKE UP YOUR MIND ON WHERE TO CHECK BUTTONS AND KEYS
// keys are checked here, but buttons in scr_get_input
// BE CONSISTENT!

if (change_view_key)
    par_camera.target_playerID = get_next_playerID(par_camera.target_playerID);      

if (test_view_key)
{
    if (global.screenmode = screen.dual)
        global.screenmode = screen.single;    
    else
        global.screenmode = screen.dual
    
    global.screenmode_changed = true;
}
/// toggle help
if (keyboard_check_pressed(ord("H")))
{
    if (show_help)
        show_help = false;
    else
        show_help = true;
}
// test status effect
if (fast_key)
    effect_fast(global.player[playerID]);
    
// draw BBOXES
if (keyboard_check_pressed(ord("P")))
{
    if (draw_bbox)
        draw_bbox = false;
    else
        draw_bbox = true;
}

if (keyboard_check_pressed(ord("R")))
    game_restart();


if (keyboard_check_pressed(vk_escape))
    game_end();


// NOW CHECK FOR NEW STATES 
if (dash_key)
{
    current_state = state.dash;
    dur_dash = dur_dash_max; 
    
    return 0 // is this stupid to try to early exit via return?
             // seems like I should use case/switch
}

// set frozen state
if (keyboard_check_pressed(ord("F")))
{
    if (current_state != state.frozen)
    {
        current_state = state.frozen;
        dur_frozen = dur_frozen_max;
        return 0;
    }     
}


    
