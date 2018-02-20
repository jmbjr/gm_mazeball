/// set_globals
enum state{ idle=state_idle, 
            move=state_move,
            dash=state_dash,
            frozen=state_frozen,
            thaw=state_thaw };
            
global.grid_refresh = true;
global.cell_size = 16;
