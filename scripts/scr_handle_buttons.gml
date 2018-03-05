/// scr_handle_buttons

// maybe should maintain a heirarchy of how to deal with buttons
// and use a switch/case

// ALSO MAKE UP YOUR MIND ON WHERE TO CHECK BUTTONS AND KEYS
// keys are checked here, but buttons in scr_get_input
// BE CONSISTENT!
if (global.pause) exit;

if inputdog_pressed("main_menu", playerSlot)
{
    show_debug_message("pause");
    with (obj_menu)
        justpaused = room_speed/10;
        
    global.pause = true;

}
if inputdog_pressed("change_view_follow", playerSlot)
    obj_camera_full.target_playerID = get_next_playerID(obj_camera_full.target_playerID);      

if inputdog_pressed("toggle_player_visibility", playerSlot)
    toggle_player_visibility(playerID);
                
if inputdog_pressed("switch_view", playerSlot)
{
    if (global.screenmode = screen.split)
        global.screenmode = screen.single;    
    else
        global.screenmode = screen.split
    
    global.screenmode_changed = true;
}
/// toggle help
if inputdog_pressed("toggle_help", playerSlot)
{
    if (show_help)
        show_help = false;
    else
        show_help = true;
}
    
// draw BBOXES
if inputdog_pressed("toggle_hud_help", playerSlot)
{
    if (draw_bbox)
        draw_bbox = false;
    else
        draw_bbox = true;
}

if inputdog_pressed("restart_game", playerSlot)
    game_restart();


if inputdog_pressed("exit_game", playerSlot)
    game_end();


// NOW CHECK FOR NEW STATES 
if (inputdog_pressed("dash", playerSlot) && current_state != state.idle)
{
    current_state = state.dash;
    dur_dash = dur_dash_max; 
    
    return 0 // is this stupid to try to early exit via return?
             // seems like I should use case/switch
}

// test status effect
if inputdog_pressed("haste", playerSlot)
    effect_fast(global.player[playerID]);

    
