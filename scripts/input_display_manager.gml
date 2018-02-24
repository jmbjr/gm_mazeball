/// scr_handle_display_inputs
if (global.pause) exit;

// change view setting
if (keyboard_check_pressed(ord("Z")))
{
    scr_zoom();
}

// toggle GUI stats to show in the view
if (keyboard_check_pressed(ord("I")))
{
    switch(obj_display_manager.selected_view)
    {
      case display.screen:
        selected_view = display.window;
        break;
      case display.window:
        selected_view = display.gui;
        break;
      case display.gui:
        selected_view = display.app_surface;
        break;
      case display.app_surface:
        selected_view = display.view;
        break;
      case display.view:
        selected_view = display.screen;
        break;
    }
}

// handle drawing GUI HUD
if inputdog_pressed("toggle_hud_help")
{
    if (draw_gui)
        draw_gui = false;
    else
        draw_gui = true;
}

