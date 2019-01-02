width = {{width}};
space = {{space}};
times = {{times}};
totalWidth = width + 10 * (width + space);

module pales()
{
    for(i = [0:times])
        for(j = [0:times])
            translate([i * (space + width), j * (space + width), 0])
                cube([width,width,totalWidth]);
};

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
