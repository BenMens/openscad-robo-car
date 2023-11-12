$fn=100;

module ax1() {
    difference() {
        translate([-1.95, -3, 0])
            cube([3.9, 6, 8]);

        difference() {
            cylinder(15, 10, 10, center = true);

            cylinder(15, 3, 3, center = true);        
        }

    }
}



// translate([-0.5, -2.4, 9])
//     cube([1, 4.8, 10]);


// translate([-2.4, -0.5, 9])
//     cube([4.8, 1, 10]);



module holes() {
    translate([0, 0, 0]) {
        translate([-8, 0, 0])
            cylinder(8, 2.45, 2.45);    

        translate([-8, 0, 7])
            cylinder(8, 2.85, 2.85);    

        translate([-8, 0, -1])
            cylinder(2, 2.85, 2.85);    

        translate([8, 0, 0])
            cylinder(8, 2.45, 2.45);

        translate([8, 0, 7])
            cylinder(2, 2.85, 2.85);

        translate([8, 0, -1])
            cylinder(2, 2.85, 2.85);
    }
}


difference() {
    union() {
        difference() {
            cylinder(7, 16, 16);

            translate([0, 0, 1])
                cylinder(7, 3.1, 3.1);

            translate([0, 0, -1]) {
                holes();

                rotate([0, 0, 60])
                    holes();

                rotate([0, 0, 120])
                    holes();        
            }
        }

        translate([0, 0, 1])
            difference() {
                cylinder(6.99, 5, 5);

                translate([0, 0, 0])
                    ax1();
            }
    }

    cylinder(30, 1, 1, center= true);
}


