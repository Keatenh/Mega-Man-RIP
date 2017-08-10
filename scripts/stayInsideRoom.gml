if sprite_get_xcenter() < view_xview[0] {
    //setting coord such that center of sprite is at edge of screen and not beyond 
    x = round(view_xview[0] + sprite_xoffset - (sprite_width/2));
}
if sprite_get_xcenter() > view_xview[0]+view_wview[0] {
    x = round(view_xview[0] + view_wview[0] + sprite_xoffset - (sprite_width/2));
}
if sprite_get_ycenter() < view_yview[0] {
    y = round(view_yview[0] + sprite_yoffset - (sprite_height/2));
}
if sprite_get_ycenter() > view_yview[0]+view_hview[0] {
    y = round(view_yview[0]+view_hview[0] + sprite_yoffset - (sprite_height/2));
}
