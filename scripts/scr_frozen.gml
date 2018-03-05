/// scr_frozen  
var _player = argument[0];
var _thawing_faster=false;
var _rumble = 0;

if (inputdog_pressed("thaw_faster", playerSlot))
{
    dur_frozen -= cd_rate_frozen*10;
    _thawing_faster=true;
}

with (_player)
{
    var _pct_frozen = dur_frozen / dur_frozen_max;
    var _thawing = (_pct_frozen <= 0.30 && chance(_pct_frozen));
    
    // add flickering effect when almost unfrozen
    // this is probably super expensive

    if (_thawing_faster)
    {
        image_blend = merge_colour(c_orange, c_white, 0.70);
        _rumble = 0.50;
    }
    else if (!_thawing )
    {
        image_blend = c_aqua;
        _rumble = 0.15;
    }
    else
    {
        image_blend = -1;
        _rumble = 0.25;
    }

    image_speed = 0;
    inputdog_set_rumble(_rumble, playerSlot);

    dur_frozen -= cd_rate_frozen;


    if (dur_frozen<=0)
        current_state = state.thaw; // makes sense to transition back to thaw
}        
