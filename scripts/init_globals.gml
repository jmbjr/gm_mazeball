/// set_globals
enum state{ idle=state_idle, 
            move=state_move,
            dash=state_dash,
            frozen=state_frozen,
            thaw=state_thaw };

enum tiletype{empty, solid};
enum tiledepth{under=-20, solid=-5, player=-10, shadow=0};
enum season{spring, summer, fall, winter, num_seasons };

//grid/tile stuf
global.grid_refresh = true;
global.cell_size = 16;

//seasons
global.season[season.spring] = "Spring";
global.season[season.summer] = "Summer";
global.season[season.fall] = "Fall";
global.season[season.winter] = "Winter";
