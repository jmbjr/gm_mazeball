/// scr_handle_buttons

// maybe should maintain a heirarchy of how to deal with buttons
// and use a switch/case

// ALSO MAKE UP YOUR MIND ON WHERE TO CHECK BUTTONS AND KEYS
// keys are checked here, but buttons in scr_get_input
// BE CONSISTENT!

if (change_view_key)
    obj_camera_full.target_playerID = get_next_playerID(obj_camera_full.target_playerID);      

if ((keyboard_check_pressed(ord("Y")) && playerID == 0) ||
    (keyboard_check_pressed(ord("U")) && playerID == 1) ||
    (keyboard_check_pressed(ord("I")) && playerID == 2) ||
    (keyboard_check_pressed(ord("O")) && playerID == 3))
    toggle_player_visibility(playerID);
                
if (test_view_key)
{
    if (global.screenmode = screen.split)
        global.screenmode = screen.single;    
    else
        global.screenmode = screen.split
    
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

// test status effect
if (fast_key)
    effect_fast(global.player[playerID]);

    
