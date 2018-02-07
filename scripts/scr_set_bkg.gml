/// scr_set_bkg bkg

//turns off all backgrounds then turns back on the one passed
var _bkg = argument[0];

for (var ii=0; ii<4; ii++)
    background_visible[ii]=false;

background_visible[_bkg]=true;


