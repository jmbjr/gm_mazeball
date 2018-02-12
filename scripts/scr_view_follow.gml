/// scr_view_follow

// called from camera objects

var zoom_speed = 0.1;
view_zoom += keyboard_check(ord("Q"))*zoom_speed;
view_zoom -= keyboard_check(ord("E"))*zoom_speed;
view_zoom = clamp(view_zoom, 1, view_max_zoom);


view_wview[view_index] = ideal_view_width / view_zoom;
view_hview[view_index] = ideal_view_height / view_zoom;

//Center on player
view_xview[view_index]=x-view_wview[view_index]/2;
view_yview[view_index]=y-view_hview[view_index]/2;

//clamp to room
view_xview[view_index]=clamp(view_xview[view_index],0,room_width-view_wview[view_index]);
view_yview[view_index]=clamp(view_yview[view_index],0,room_height-view_hview[view_index]);

