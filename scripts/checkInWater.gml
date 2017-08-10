///checkInWater(bottom y value)

//Note: this argument is scratched for now
//argument0 = the y value on the object at which it comes out of the water (default is bbox_bottom)

    
//Created outside of water
var wtrn;
wtrn = instance_nearest(x,y,objWater);
if (wtrn != noone){
    if (wtrn.y > y){
        inWater = false;
    }else{
        //Going into water
        if (place_meeting(x, y, objWater) && inWater == false) {
            inWater = true;
            var currentWater;
            currentWater = instance_place(x, y, objWater);
            //if there is not already a splash at this location
            if (!place_meeting(x, currentWater.bbox_top+1+ceil(currentWater.yspeed), objSplash)){
                playSFX(sfxSplash);
                instance_create(x, currentWater.bbox_top+1+ceil(currentWater.yspeed), objSplash);
            }
        }
        //Going out of water
        if (inWater){
            var wtr;
            wtr = instance_place(x, y-yspeed, objWater);
            if wtr >= 0
            {
                if (bbox_bottom < wtr.bbox_top)
                {
                    inWater = false;
                    //if there is not already a splash at this location
                    if (!place_meeting(x, wtr.bbox_top+1+ceil(wtr.yspeed), objSplash)){
                        playSFX(sfxSplash);
                        instance_create(x, wtr.bbox_top+1+ceil(wtr.yspeed), objSplash);
                    }
               }
            }
        }
    
    }
}



 
