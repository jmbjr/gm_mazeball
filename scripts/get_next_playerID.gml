/// get_next_playerID(playerID)

var _this_player = argument[0];
var _next_player = _this_player + 1;
var _icount = 0;

_next_player = wrap(_next_player, 0, global.maxplayers-1);

while (! global.player[_next_player].visible)
{
    _next_player++;
    if _icount > global.maxplayers
    {
        _next_player = _this_player;
        break
    }
    else 
        _icount+=1;
    _next_player = wrap(_next_player, 0, global.maxplayers-1);
}

return _next_player;
