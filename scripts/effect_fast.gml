/// effect_fast (_player)

var _player = argument[0];

if (_player.speed_multiplier == 1) // only allow fast if not already faster
{
    _player.speed_multiplier = 3;
    
    var obj = instance_create(0,0,obj_effect_fast);
    
    obj.target_object = _player;
    obj.dur_max = room_speed * 10;
    obj.cd_rate = 5;
    obj.dur = obj.dur_max;
}
