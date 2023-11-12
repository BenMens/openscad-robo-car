$fn=50;

// translate([-27, -14.5])
//     difference() {
//         cube([54, 29, 10]);

//         translate([1, 1, 2]) 
//             cube([52, 27, 10]);
//     }




// translate([-52.5, 0, 0]) 
//     difference() {
//         cube([105, 10, 2]);

//     translate([6, 5, -1]) {
//         cylinder(5, 1.6,  1.6);

//         translate([93, 0, 0])
//             cylinder(5, 1.6,  1.6);
//         }
//     }


translate([-90, -15.75]) {
    cube([80, 31.5, 2]);

    difference() {
        cube([56.5, 31.5, 20]);

        translate([1, 1, 2]) 
            cube([54.5, 29.5, 20]);

        translate([-4,  10.75, -0.1]) 
            cube([10, 10, 22]);
    }

}

difference() {
    cube([13, 22, 6]);

    translate([1, 1, 2])
        cube([11, 20, 7.1]);
}


translate([20, 0, 0])
    difference() {
        cube([15.5, 24.5, 9]);

        translate([1, 1, 2])
            cube([13.5, 22.5, 9.1]);

        translate([3.25, -1, -0.1])
            cube([9, 5, 9.2]);

    }
