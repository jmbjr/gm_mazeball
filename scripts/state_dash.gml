/// state_dash

//scale dash speed based on size
var _speed_mod = self.walking_speed / global.speed_default;

scr_move(self, dash_speed * _speed_mod);
scr_basic_collision(self);
scr_dash(self);

