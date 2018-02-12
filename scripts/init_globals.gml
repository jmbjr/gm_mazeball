/// set_globals
enum state{ idle=state_idle, 
            move=state_move,
            dash=state_dash,
            frozen=state_frozen,
            thaw=state_thaw };

enum tiletype{empty, solid};
enum tiledepth{under=-20, solid=-5, player=-10, shadow=0};
enum season{spring, summer, fall, winter, num_seasons };
enum facing{right, up, left, down };
enum screen{single, split, num_modes };
enum view{single, quad1, quad2, quad3, quad4};

// direction stuff. I know there's a better way to do this...
global.xoff[facing.right] = 1;
global.xoff[facing.up] = 0;
global.xoff[facing.left] = -1;
global.xoff[facing.down] = 0;

global.yoff[facing.right] = 0;
global.yoff[facing.up] = -1;
global.yoff[facing.left] = 0;
global.yoff[facing.down] = 1;

//grid/tile stuf
global.grid_refresh = true;
global.cell_size = 16;

//seasons
global.season[season.spring] = "Spring";
global.season[season.summer] = "Summer";
global.season[season.fall] = "Fall";
global.season[season.winter] = "Winter";

global.player[0] = obj_player1;
global.player[1] = obj_player2;
global.player[2] = obj_player3;
global.player[3] = obj_player4;

global.maxplayers = 4;
global.screenmode = screen.split;
global.screenmode_changed = false;
global.splitrows = 0; //how many rows for split screen
global.splitcols = 0; //how many rows for split screen
