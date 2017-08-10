///initializeInWater()

    
//Created outside of water
var wtrn;
wtrn = instance_nearest(x,y,objWater);
if (wtrn != noone){
    if ((wtrn.y > y)||(abs(wtrn.y - y)>244)||(wtrn.y<((y div view_hview[0])*view_hview[0]))
    ||(wtrn.x<((x div view_wview[0])*view_wview[0]))||(wtrn.x>(((x div view_wview[0])+1)*view_wview[0]))){
        inWater = false;
    }else{
        inWater = true;
    }
}else{
    inWater = false;
}
