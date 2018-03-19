/// effect_fast (_player)

var _player = argument[0];

if (_player.speed_multiplier <= 1 && _player.hastecharges >0) // only allow fast if not already faster
{
    _player.speed_multiplier *= 3;
    
    var obj = instance_create(0,0,obj_effect_fast);
    
    obj.target_instance = _player;
    obj.dur_max = _player.haste_speed; 
    obj.cd_rate = _player.cd_rate_haste;
    obj.dur = obj.dur_max;
    _player.hastecharges--;
}
