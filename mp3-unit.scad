difference() {
	cube([30, 26, 5]);

	translate([2,2,2])
		cube([26, 22, 10]);	
}

translate([40, 0, 0]) {
	cube([4,30.5, 4]);

	translate([30.5, 0, 0])
		cube([4,30.5, 4]);

	difference() {
		cube([34.5, 30.5, 9]);

		translate([2,2,2])
			cube([30.5, 26.5, 10]);	
		
		translate([4,6,2])
			cube([26.5, 26.5, 10]);	
	}
}