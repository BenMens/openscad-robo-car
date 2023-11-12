use <../libraries/enclosure/arduino-uno.scad>
use <../libraries/enclosure/pilars.scad>
use <../libraries/enclosure/components.scad>

$fn=100;


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
		
		translate([12, 5, 10])
			minkowski() {
				cube([0.1, 0.1, 20]);
				
				rotate([90, 0, 0])
					cylinder(10, 2, 2);
	 		}


		translate([88, 5, 10])
			minkowski() {
				cube([0.1, 0.1, 20]);
				
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
			cylinder(4, 1.8, 1.8);

		translate([60, 5, -1])
			cylinder(4, 1.8, 1.8);
	} 
}


translate([-21, -30, 0]) {
	
	cube([42, 48, 2]);

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

*translate([-43, 18, 0])
  cube([86, 69, 1]);

translate([-43, 23, 0])
  cube([2, 64, 20]);

translate([41, 23, 0])
  cube([2, 64, 20]);

translate([-5, 27, 0])
  cube([10, 60, 1]);

translate([-43, 18, 0])
  cube([86, 20, 1]);

translate([-43, 80, 0])
  cube([86, 8, 1]);

color("blue") {
  translate([11, 18 + 69 - 4, 0])
    cube([20, 2, 2.5]);
  
  translate([-31, 18 + 69 - 4, 0])
    cube([20, 2, 2.5]);

  translate([11, 18 + 69 - 4 - 53, 0])
    cube([20, 2, 2.5]);
  
  translate([-31, 18 + 69 - 4 - 53, 0])
    cube([20, 2, 2.5]);
}
