/// init_menu

global.pause        = true;
global.view_width   = obj_display_manager.ideal_width;
global.view_height  = obj_display_manager.ideal_height;

//convert these to use input doggisms
global.key_revert   = ord("X");
global.key_enter    = vk_enter;
global.key_left     = vk_left;
global.key_right    = vk_right;
global.key_up       = vk_up;
global.key_down     = vk_down;

enum menu_page {
    main,
    settings,
    audio,
    difficulty,
    graphics,
    controls,
    count
}

enum menu_element_type {
    script_runner,
    page_transfer,
    slider,
    shift,
    toggle,
    input,
    count
}


