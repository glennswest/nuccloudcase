


module nuc_small()
{
        cube([115,111,32.7]);
}


module nuc_large()
{
        cube([115,111,48.7]);
}

module switch()
{
      cube([158,102,26]);
}

module the_stuff()
{
translate([0,0,32.7+10+32.7+10+32.7+10]) nuc_large();
translate([0,0,32.7+10+32.7+10]) nuc_small();
translate([0,0,32.7+10]) nuc_small();
translate([0,0,0]) nuc_small();
translate([-10,-5,0]) rotate([0,-90,0]) switch();
translate([150,-5,0]) rotate([0,-90,0]) switch();
}

module thecrate()
{
    difference(){
       translate([-42.5,-81,-5]) cube([200,190,185]);
       the_stuff();
        %the_stuff();
       translate([-42.5+5,-95,0]) cube([190,95,175]);
       }
}

thecrate();
//the_stuff();

