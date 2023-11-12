$fn = 50;

difference(){
    cube([3, 25, 7]);

    translate([-0.1, 3.5, 0])
    union() {
        translate([0, -0.5, 3.5])
            rotate([0, 90, 0])
            minkowski() {
                cube([0.1, 1, 4]);
                cylinder(4, 1.6, 1.6);
            }

        translate([0, 17.5, 3.5])
            rotate([0, 90, 0])
            minkowski() {
                cube([0.1, 1, 4]);
                cylinder(4, 1.6, 1.6);
            }
    }

}

translate([0, 9, 0]) 
    difference() {
        cube ([40, 7 ,3.5]);

        translate([7, 3.5, -0.1])
            minkowski() {
                cube([25, 0.1, 4]);

                cylinder(4, 1.6, 1.6);
            }
    }
