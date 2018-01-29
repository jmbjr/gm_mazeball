/// scr_get_input

walking_speed = 2;
right_key = (keyboard_check(vk_right) || keyboard_check(ord('D')));
left_key  = (keyboard_check(vk_left)  || keyboard_check(ord('A')));
up_key    = (keyboard_check(vk_up)    || keyboard_check(ord('W')));
down_key  = (keyboard_check(vk_down)  || keyboard_check(ord('S')));
any_dir_key = (right_key || left_key || up_key || down_key);
