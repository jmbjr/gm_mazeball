/// scr_frozen  
var _player = argument[0];

with (_player)
{
    var _pct_frozen = dur_frozen / dur_frozen_max;
    var _thawing = (_pct_frozen <= 0.30 && chance(_pct_frozen));
    
    // add flickering effect when almost unfrozen
    // this is probably super expensive
    
    if (!_thawing)
        image_blend = c_aqua;
    else
        image_blend = -1;
            
    image_speed = 0;
    
    dur_frozen -= cd_rate_frozen;
    
    if (dur_frozen<=0)
        current_state = state.thaw; // makes sense to transition back to thaw
}        
