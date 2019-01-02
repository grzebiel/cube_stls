width = {{width}};
space = {{space}};
times = 2 * {{times}};
totalWidth = width + times * (width + space);

module pales()
{
    for(i = [0:times])
        for(j = [0:times])
            translate([i * (space + width), j * (space + width), 0])
                cube([width,width,totalWidth]);
};

intersection()
{
    innerQubeWidth = totalWidth * 0.64;
    translate(-innerQubeWidth/2 * [1.1,1,1])
    cube(innerQubeWidth * [1.1,1,1]);

    rotate(45 * [1,0,0])
    translate(totalWidth / -2 * [1,1,1])
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
}
