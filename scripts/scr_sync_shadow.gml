/// scr_sync_shadow(shadow, target_player)
var _shadow = argument[0];
var _target_player = argument[1];

_shadow.x = _target_player.x;
_shadow.y = _target_player.y;
_shadow.image_index = _target_player.image_index;
_shadow.image_speed = _target_player.image_speed;


