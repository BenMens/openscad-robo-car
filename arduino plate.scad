use <../libraries/enclosure/arduino-uno.scad>
use <../libraries/enclosure/components.scad>
use <../libraries/enclosure/circuit-board-7x5.scad>
use <../libraries/enclosure/arduino-mega.scad>


$fn=100;

module hole() {
    translate([0, 0, -5])
        cylinder(10, 1.6, 1.6);
}


//t = [
//	[ARDUINO_UNO, [10, 40, 2]],
//];


module robocarBasePlate() {
  if ($componentMode == 0) {
    difference() {
      translate([4, 4, 0])
          minkowski() {
              union() {
                translate([93 / 2, 145, 0])
                  resize([93, 50, 1])
                    cylinder(1, 93, 93);
                cube([93, 145, 1]);
              }
            
              cylinder(1, 4, 4);
          }

      translate([4, 26, 0]) {
        translate([0, 0, 0])
            hole();

        translate([93, 0, 0])
            hole();

        translate([6, 103, 0])
            hole();

        translate([87, 103, 0])
            hole();
      }
    }
  } else if ($componentMode == 1) {
  } else if ($componentMode == 2) {
  }

}


*translate([0, 0, 0]) {
	
	translate([-2, -18, 0]) 
    difference() {
				union() {
					
					translate([39/4+2, -2, 0])
						cube([74, 54, 7]);

					translate([39/4-8, 25, 0])
						cube([10, 10, 7]);

					translate([39/4 + 76, 25, 0])
						cube([10, 10, 7]);
					
					minkowski() {
							cube([97, 50, 2]);
							cylinder(0.001, 4, 4);
					}
				}

        translate([2, 18, 0])
          hole();

        translate([95, 18, 0])
          hole();
					
				translate([39/4+4, 0, -1])
					cube([70.2, 50.2, 9]);

				*translate([39/4+4 + 2.2, 10, -1])
					cube([65, 50.2, 9]);

				translate([39/4-8 + 5, 25 + 5, -1])
					cylinder(9, 1.4, 1.4);

				translate([39/4 + 76 + 5, 25 + 5, -1])
					cylinder(9, 1.4, 1.4);

    }

	translate([39/4,-20,0]) {
		cube([4, 54, 6]);
	}

	translate([39/4 + 70,-20,0]) {
		cube([4, 54, 6]);
	}

	translate([30, 0, 0])
		difference() {
			cube([10, 16, 2]);
			
			translate([5, 5, -1])
						cylinder(9, 1.4, 1.6);
			}
			
	translate([55, 0, 0])
		difference() {
			cube([10, 16, 2]);
			
			translate([5, 5, -1])
						cylinder(9, 1.4, 1.4);
			}
}


  drawComponents() {
      robocarBasePlate();

      translate([0, 65, 0]) {
        arduinoMega();
      }
          
      translate([(101 - 70) / 2 , 0, 0]) {
        circuitBoard7x5();       
      }          
      
      if ($componentMode == 1) {
        translate([101/2, 59, -1]) {
          cylinder(10, 10, 10);
        }
        
        translate([10, 160, -1]) {
          cylinder(10, 0.5, 0.5);
        }
        
        translate([30, 170, -1]) {
          cylinder(10, 0.5, 0.5);
        }
        
        translate([101 - 10, 160, -1]) {
          cylinder(10, 0.5, 0.5);
        }
        
        translate([101 - 30, 170, -1]) {
          cylinder(10, 0.5, 0.5);
        }
        
        translate([35, 168, -1])
          cube([15, 5, 5]);
        
        translate([101 - 50, 168, -1])
          cube([15, 5, 5]);
      }

      translate([(101 - 33.5) / 2, 130, 2]) {
        *%cube([33.5, 37.5, 2]);
        translate([3.25, 3.25, -4]) {
          if ($componentMode == 1) {
            translate([0, 0, 0])
              cylinder(10, 0.5, 0.5);
            translate([27, 0, 0])
              cylinder(10, 0.5, 0.5);
            translate([0, 32, 0])
              cylinder(10, 0.5, 0.5);
            translate([27, 32, 0])
              cylinder(10, 0.5, 0.5);
          }
        }
      }
  }

