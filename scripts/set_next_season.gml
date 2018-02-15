/// set next season

global.current_season++;
if (global.current_season>=season.count || global.current_season<0)
    global.current_season = 0; 
scr_set_bkg(global.current_season);
    
