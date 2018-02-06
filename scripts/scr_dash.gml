/// scr_dash
var dash = instance_create(x, y, obj_dash_effect);
dash.sprite_index = sprite_index;
dash.image_index = image_index;

dur_dash -= cd_rate_dash;
if (dur_dash<=0)
    current_state = state.move; // probably makes sense to transition back to just moving
    
    
