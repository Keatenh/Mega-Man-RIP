//This is a fix for the mega buster default color when Rush Adaptor is equipped:
if global.rushAdaptor {
    if global.primaryCol == make_color_rgb(0, 120, 248)&& global.secondaryCol == make_color_rgb(0, 232, 216){
        global.primaryCol = make_color_rgb(216, 39, 0);
        global.secondaryCol = make_color_rgb(248, 248, 248);
    }
}
