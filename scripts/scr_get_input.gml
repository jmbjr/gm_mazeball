/// scr_get_input

/**
right_key = (keyboard_check(vk_right) || keyboard_check(ord('D')));
left_key  = (keyboard_check(vk_left)  || keyboard_check(ord('A')));
up_key    = (keyboard_check(vk_up)    || keyboard_check(ord('W')));
down_key  = (keyboard_check(vk_down)  || keyboard_check(ord('S')));
dash_key  = keyboard_check_pressed(ord('C'));

any_dir_key = (right_key || left_key || up_key || down_key);

// get axes
xaxis = (right_key - left_key);
yaxis = (down_key - up_key);
**/

//check for gamepad
if (gamepad_is_connected(playerID))
{
    gamepad_set_axis_deadzone(playerID, 0.30);
    xaxis = gamepad_axis_value(playerID, gp_axislh);
    yaxis = gamepad_axis_value(playerID, gp_axislv);
    dash_key = gamepad_button_check_pressed(playerID, gp_face1);
    change_view_key = gamepad_button_check_pressed(playerID, gp_face2);
}
else
{
    xaxis=0;
    yaxix=0;
    dash_key=false;
    change_view_key=false;
}

any_dir_key = dash_key || change_view_key;

