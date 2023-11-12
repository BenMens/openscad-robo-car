use <../libraries/enclosure/arduino-uno.scad>
use <../libraries/enclosure/pilars.scad>
include <../libraries/enclosure/components.scad>

$fn=100;

module battery() {
	difference() {
		cube([25, 76, 3]);
		
		translate([2, -1, 2])
			cube([21, 78, 3]);
	}
	translate([12.5, 38, 2])
	cylinder(0.7, 1.4, 1.4);
}

translate([0, 35.5 + 23, 0])
	rotate([0, 0, 90])
	translate([-12.5, -38, 0]) {
		
	translate([-23, 0, 0])
		battery();

	translate([0, 0, 0])
		battery();

	translate([23, 0, 0])
		battery();

}




translate([-50, 16, 0]) 
	difference() {
		union() {
			cube([100, 2, 20]);

			translate([4, 0, 15])
			minkowski() {
				cube([92, 2, 5]);
				
				rotate([90, 0, 0])
					cylinder(0.001, 4, 4);
			}

		}
		
		translate([10, 5, 10])
			minkowski() {
				cube([10, 0.1, 0.1]);
				
				rotate([90, 0, 0])
					cylinder(10, 2, 2);
	 		}


		translate([80, 5, 10])
			minkowski() {
				cube([10, 0.1, 0.1]);
				
				rotate([90, 0, 0])
					cylinder(10, 2, 2);
	 		}

	}


translate([-21, -5, 0])
difference() {
	union() {
		translate([-11.5, 0, 0]) 
			cube([65, 10, 1]);
	}


	translate([-11.5, 0, 0]) {
		translate([5, 5, -1])
			cylinder(4, 1.6, 1.6);

		translate([60, 5, -1])
			cylinder(4, 1.6, 1.6);
	} 
}


translate([-21, -30, 0]) {
	
	cube([42, 75, 2]);

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
}

