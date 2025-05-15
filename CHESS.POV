//
//  chess.pov
//
//
// From
// 3D Graphics: A Visual Approach
// R. J. Wolfe
// Oxford University Press
//
//    Chapter 3, Activities 1-6
//        Required files:  chess.pov, pawn.inc
//

#include "colors.inc"
#include "finish.inc"
#include "pawn.inc"
#include "textures.inc"
#include "glass.inc"
#include "shapes.inc"
#include "metals.inc"
#include "glass.inc"
#include "woods.inc"

camera
{
  location  <15, 5, 0>
  direction <0,0,22>
  right     <8, 0,0>
  up        <0, 6, 0>
  look_at   <0.0, 0, 0.0>
}

light_source
{ <-30, 30, -30>
  color red .75  green .75  blue .75  
}
light_source
{ <25, 25, -30>
    color red .75 green .75 blue .75
}

plane { <0,1,0>, 0 pigment {color Tan} }

box { <-3, 0, -3>, <3, 0.1, 3>
      texture { pigment {
                  checker
                    color Red
                    color White
                }
                finish {diffuse .6 ambient .4}
      }
}
object {pawn
        scale<0,1,0>
        texture { pigment {color Blue}
                  finish {Shiny}
        
        }
      }
 
object {pawn
        scale<0,1,0>
        translate<1,0,1>
        texture { pigment {color Green}
                  finish {Shiny}
        
        }
}
/*object {pawn
        scale<0,2,0>
        translate<-2,0,-2>
        texture { pigment {color Grey}
                  finish {phong 1}
        
        }
}
*/
object {pawn
        rotate<-90,-90,0>
        translate<1,0,-2>
        texture { pigment {color Magenta}
                  finish {Shiny}
        
        }
}
sphere { <-2.5, .5, -2.5>, .5
        texture {pigment {color Red}
                 finish {Shiny}
        }
}
/* cone {
    <0, 1, 0>, 0.5    // Center and radius of one end
    <3, 1, 0>, 0.0    // Center and radius of other end
    rotate<0,0,90>
    translate<-0.5,0,-2.5> 
    texture { pigment {color Tan} scale 1 }
  }
 box {
    <-1, 0,   -3>,  // Near lower left corner
    < 0, 1,  -2>   // Far upper right corner
    texture {
      pigment {
        DMFWood4       // pre-defined in textures.inc
        scale 4        // scale by the same amount in all
                       // directions
      }
      finish { Shiny } // pre-defined in finish.inc
    }
  }
*/
