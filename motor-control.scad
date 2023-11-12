use <../libraries/enclosure/arduino-uno.scad>
use <../libraries/enclosure/pilars.scad>
include <../libraries/enclosure/components.scad>

$fn=50;


difference() {
	union() {
		cube([42, 42, 1]);

		translate([-13.5, 42, 0])
			cube([69, 73, 3]);

		translate([-11.5, 15, 0]) 
			cube([65, 10, 1]);
	}

	translate([-11.5, 44, -1])
		cube([65, 69, 5]);

	translate([-11.5, 15, 0]) {
		translate([5, 5, -1])
			cylinder(4, 1.6, 1.6);

		translate([60, 5, -1])
			cylinder(4, 1.6, 1.6);
	} 
}


translate([3, 3, 1]) {

    translate([0, 0, 0])
        pilar(8, 6, 6, 2.8);

    translate([36, 0, 0])
        pilar(8, 6, 6, 2.8);

    translate([0, 36, 0])
        pilar(8, 6, 6, 2.8);

    translate([36, 36, 0])
        pilar(8, 6, 6, 2.8);

}
