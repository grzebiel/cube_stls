//difference(){
//    cube([100,100,100]);
//    translate([1,0,1]){
//        cube([1,100,1]);
//    }
//}
width = 1;
space = 10;
times = 10;
totalWidth = width + 10 * (width + space);

module pales()
{
    for(i = [0:times])
        for(j = [0:times])
            translate([i * (space + width), j * (space + width), 0])
                cube([width,width,totalWidth]);
};

//rotate([45,45,45])
union()
{
    pales();
    translate([0,totalWidth])
        rotate([90])
            pales();
    translate([0,0,totalWidth])
        rotate([0,90])
            pales();
}

//translate([0,0,totalWidth])
//    rotate([0,90,0])
//        for(i = [0:times])
//            translate([i * (space + width), 0, 0])
//                cube([width,width,totalWidth]);
//union()
//{
//
//    for(j = [0:20])
//    translate([0,0,j*50])
//    {
//    rotate([90,0,0])
//        for(i = [0: 20])
//            translate([i * 50, 0, 0])
//                cylinder(1000,10,10);
//
//    rotate([270,0,270])
//        for(i = [0: 20])
//            translate([i * 50, 0, 0])
//                cylinder(1000,10,10);
//    }
//
//
//    translate([0,-1000,0])
//    for(i=[0:20])
//        for(j=[0:20])
//            translate([i*50,j*50,])
//                cylinder(1000,10,10);
//}
