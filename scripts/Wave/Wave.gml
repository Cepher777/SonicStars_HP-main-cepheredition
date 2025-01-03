// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Wave(arg0,arg1,arg2,arg3){
//Wave(from, to, duration, offset)
 
// Returns a value that will wave back and forth between [from-to] over [duration] seconds
// Examples
//      image_angle = Wave(-45,45,1,0)  -> rock back and forth 90 degrees in a second
//      x = Wave(-10,10,0.25,0)         -> move left and right quickly
 
// Or here is a fun one! Make an object be all squishy!! ^u^
//      image_xscale = Wave(0.5, 2.0, 1.0, 0.0)
//      image_yscale = Wave(2.0, 0.5, 1.0, 0.0)
 
a4 = (arg1 - arg0) * 0.5;
return arg0 + a4 + sin((((current_time * 0.001) + arg2 * arg3) / arg2) * (pi*2)) * a4;
}
