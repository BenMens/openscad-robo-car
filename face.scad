$fn=100;

module displayHolder(mode) {
    if (mode == 1) {
    } else if (mode == 2) {
        translate([-19.5, -3]) {
            translate([2, 2, 1])
                cube([35, 25, 4]);

            translate([2, 6.5, 0.3])
                cube([35, 15, 4.7]);

            translate([7, 6.5, -2])
                cube([24, 15, 5]);
        }
    } else if (mode == 3) {
        translate([-14, 2]) {
            translate([0, 0, 0])
                cylinder(4, 0.75, 0.75);

            translate([0, 19, 0])
                cylinder(4, 0.75, 0.75);

            translate([25, 0, 0])
                cylinder(4, 0.75, 0.75);

            translate([25, 19, 0])
                cylinder(4, 0.75, 0.75);
        }        
    }
}

module eyes(mode) {
    translate([-22.5 ,27, 0])
    if (mode == 2) {
        translate([22.5, 15, -1]) {

            translate([-13.5, 0, 0])
                cylinder(7, 8.5, 8.5);

            translate([13.5, 0, 0])
                cylinder(7, 8.5, 8.5);
        }
    }
}

module screwHoles(mode=1) {
    translate([0, 36, -3])
    if (mode == 2) {
        translate([14, 4, 1]) {
            translate([0, 0, 8])
                cylinder(0.5, 1, 1);

            translate([0, 0,3])
                cylinder(5, 0.5, 0.5);
        }

        translate([-14, 4, 1]) {
            translate([0, 0, 8])
                cylinder(0.5, 1, 1);

            translate([0, 0,3])
                cylinder(5, 0.5, 0.5);
        }
    }
}

module face(mode=1) {
    translate([0, 26, 0])
    if (mode == 1) {
        translate([-19.5, -29, 0])
            cube([39, 42, 4.99]);

        translate([-22.5 ,13, 0]) 
            cube([45, 30, 4.99]);

        translate([-22.5, 28, 0])
            cylinder(5, 15, 15);

        translate([45-22.5, 28, 0])
            cylinder(5, 15, 15);       
        

        translate([-19.5, -29, 4.99])
        difference() {
            cube([39, 2, 5]);

            translate([2, -1, 0])
                cube([3, 4, 1.7]);

            translate([34, -1, 0])
                cube([3, 4, 1.7]);
        }
    }
}

module ttf(mode=1) {
    rotate([0, 0, 90])
    translate([-9.5, -6.5, 0])
    if (mode == 2) {
        translate([1.5, 1.5, 1])
            cube([12, 14, 4]);

        translate([7, 5, -1])
            cube([5, 3, 4]);
    } else if ( mode == 3) {
        translate([5, 5, 0])
            cylinder(4, 1.3, 1.3);
    }
}


module lid(mode=1) {
    translate([-19.495, -0.8, 5])
    color("blue")
    if (mode == 1) {
        difference() {
            cube([38.99, 43, 1.5]);

            translate([6, -0.01, -0.02])
                cube([27, 3, 1.55]);

            translate([10, 9, -0.02])
                cube([19, 30, 1.55]);

        }

        translate([19.5 - 14.5, 9, 1.5]) {
            difference() {
                cube([29, 30, 13]);

                translate([-0.01, -0.1, 3])
                    rotate([-90, 0, 0])
                        linear_extrude(31)
                            polygon([[0, 0], [3, 0], [0, 3]]);

                translate([29.01, -0.1, 3])
                    rotate([-90, 0, 0])
                        linear_extrude(31)
                            polygon([[0, 0], [-3, 0], [0, 3]]);

                translate([5, -0.01, -0.01])
                    cube([19, 31, 10]);
            }
        }
    } else if (mode == 3) {
        translate([2.2, -2, 0])
            cube([2.6, 2.1, 1.5]);

        translate([34.2, -2, 0])
            cube([2.6, 2.1, 1.5]);
    }
}

module draw(mode=1) {
    face(mode);

    translate([0, 34, 0])
        ttf(mode);

    translate([0, 12, 0])
        eyes(mode);

    displayHolder(mode);

    // lid(mode);

    screwHoles(mode);
}

union() {
    difference() {
        draw(1);

        draw(2);
    }

    draw(3);
}

