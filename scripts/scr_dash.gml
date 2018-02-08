/// scr_dash
var _player = argument[0];

with (_player)
{
    var _dash = instance_create(x, y, obj_dash_effect);
    
    _dash.sprite_index = sprite_index;
    _dash.image_index = image_index;
    
    dur_dash -= cd_rate_dash;
    if (dur_dash<=0)
        current_state = state.move; // probably makes sense to transition back to just moving
}        
