///sevenDProjectile()

//Selects direction for projectile and subImage for Player

with(prtPlayer){image_speed = 0;}

if global.keyUp {
    if ((!global.keyRight && !global.keyLeft)||(global.keyRight && global.keyLeft)){
        //straight up
        prtPlayer.image_index = 3;
        
        attackID.dir = 90;
    }else{
        //angled upwards
        prtPlayer.image_index = 2;
        
        if (prtPlayer.image_xscale == -1){
            attackID.dir = 135;
        }else{
            attackID.dir = 45;
        }
    }
}else{
    if global.keyDown {
        //angled downwards
        prtPlayer.image_index = 1;
        
        if (prtPlayer.image_xscale == -1){
            attackID.dir = 225;
        }else{
            attackID.dir = 315;
        }
    }else{
        //straight shot
        prtPlayer.image_index = 0;
        
        if (prtPlayer.image_xscale == -1){
            attackID.dir = 180;
        }else{
            attackID.dir = 0;
        }
    }
}
