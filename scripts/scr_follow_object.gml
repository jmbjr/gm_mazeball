/// scr_follow_object(_self, _target, _xoffset, _yoffset)
var _self = argument[0];
var _target = argument[1];
var _xoffset = argument[2];
var _yoffset = argument[3];

_self.x = _target.x + _xoffset;
_self.y = _target.y + _yoffset;
_self.image_index = _target.image_index;
_self.image_speed = _target.image_speed;


