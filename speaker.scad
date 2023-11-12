$fn=100;

difference() {
	union() {
		cylinder(2, 65/2, 65/2);
		
		translate([-50, -15, 0])
		cube([100, 30, 2]);
	}
	
	translate([0, 0, -0.1])
		cylinder(3, 33/2, 33/2);
	
	translate([-86/2, -10, -0.1])
		minkowski() {
			cube([1, 20, 1]);
			cylinder(3, 1.6, 1.6);
		}
	
	translate([86/2, -10, -0.1])
		minkowski() {
			cube([1, 20, 1]);
			cylinder(3, 1.6, 1.6);
		}
}
