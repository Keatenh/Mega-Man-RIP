///dropLeaves(number,sfx_Y/N)
if argument1 {
    playSFX(sfxHeliButonReveal);
}
var i;
for (i = 0; i < argument0; i += 1){
    instance_create(x+8, y+16, objLeafEffect);
}
