/// resume_game
// need to not immediately unpause after hitting enter
if (justpaused<=0)
{
    show_debug_message("unpausing");
    global.pause        = false;
}

