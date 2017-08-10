///DrawSpriteHorizontalUndulation(slice,lines)
var n,r,i,slice,displace_x,imgx,imgy,omega,colNum, col,m,j;

imgx = image_xscale;
image_xscale = 1;
imgy = image_yscale;
image_yscale = 1;

lines = argument1;
slice = argument0;//6;//sprite_height/n;
//h = 6; //height of slices
n = sprite_height div slice; //number of slices
r = sprite_height mod slice; //remainder after slices
omega = 0.08; //0.1

for (i = 0; i < n; i += 1){
    //Initial filling in of "enlarged" sprite with light color
    colNum = 38;
    col = make_color_rgb(global.nesPalette[colNum, 0], global.nesPalette[colNum, 1], global.nesPalette[colNum, 2]);
    d3d_set_fog(true,col, 0, 0);
    
    displace_x = round(sin(omega*global.roomTimer + i));
    draw_sprite_part_ext(sprite_index,image_index,-1,i*slice,sprite_width,slice,x-sprite_xoffset*imgx+displace_x,y-sprite_yoffset*imgy+i*slice,imgx,imgy,image_blend,image_alpha);
    draw_sprite_part_ext(sprite_index,image_index,+1,i*slice,sprite_width+1,slice,x-sprite_xoffset*imgx+displace_x,y-sprite_yoffset*imgy+i*slice,imgx,imgy,image_blend,image_alpha);
    draw_sprite_part_ext(sprite_index,image_index,0,i*slice-1,sprite_width,slice,x-sprite_xoffset*imgx+displace_x,y-sprite_yoffset*imgy+i*slice,imgx,imgy,image_blend,image_alpha);
    draw_sprite_part_ext(sprite_index,image_index,0,i*slice+1,sprite_width,slice+1,x-sprite_xoffset*imgx+displace_x,y-sprite_yoffset*imgy+i*slice,imgx,imgy,image_blend,image_alpha);
    
    //Secondary filling in of sprite with bg color to create outline
    colNum = 54;
    col = make_color_rgb(global.nesPalette[colNum, 0], global.nesPalette[colNum, 1], global.nesPalette[colNum, 2]);
    d3d_set_fog(true,col, 0, 0);
    
    displace_x = round(sin(omega*global.roomTimer + i));
    draw_sprite_part_ext(sprite_index,image_index,0,i*slice,sprite_width,slice,x-sprite_xoffset*imgx+displace_x,y-sprite_yoffset*imgy+i*slice,imgx,imgy,image_blend,image_alpha);
    
    
    if(lines){
        //bg color lines
        m = floor(sqrt(abs(sprite_width)));
        colNum = 54;
        col = make_color_rgb(global.nesPalette[colNum, 0], global.nesPalette[colNum, 1], global.nesPalette[colNum, 2]);
        d3d_set_fog(true,col, 0, 0);
        for (j = 1; j < m; j += 1){
            draw_line_width(x+sprite_xoffset*imgx+displace_x+j*m,y-sprite_yoffset*imgy+i*slice-1,x+sprite_xoffset*imgx+displace_x+j*m,y-sprite_yoffset*imgy+i*slice+slice,j);
        }
    }
    
}
//final non-uniform slice
colNum = 38;
col = make_color_rgb(global.nesPalette[colNum, 0], global.nesPalette[colNum, 1], global.nesPalette[colNum, 2]);
d3d_set_fog(true,col, 0, 0);
draw_sprite_part_ext(sprite_index,image_index,0,n*slice,sprite_width,r,x-sprite_xoffset*imgx+displace_x,y-sprite_yoffset*imgy+n*slice,imgx,imgy,image_blend,image_alpha);
d3d_set_fog(false, 0, 0, 0);

image_xscale = imgx;
image_yscale = imgy;
