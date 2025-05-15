//
//  twodim.pov
//
//
// From
// 3D Graphics: A Visual Approach
// R. J. Wolfe
// Oxford University Press
//
//
//   Chapter 6, Activities 1-5
//        Requires twodim.pov, earth.tga, dpumulti.tga
//                 cloud.tga
//
#include "glass.inc"
#include "metals.inc"
#include "textures.inc"
camera{
    location <-3.3, 6, -7.5>
    direction <0, 0, 5>
    up        <0, 1.875, 0>
    right     <2.5, 0, 0>
    look_at   <0.125, 1.15, .25>
}
light_source{<-2.5, 33, -2.5>
      color red 1 green 1 blue 1
}

sphere{<0,0, 0>, 100
         texture {
                pigment {color red .3 green .7 blue 1}
                finish {ambient .3 }
         }
}
// table top
box{<-1,-0.1,-1>, <1,0, 1>
    texture{
        pigment {
                   image_map { tga "cloud.tga"
                               map_type 0
                   }            
                   rotate <90, 0, 0>
                   scale <2,2,2>
                   translate <-1, 0, -1>
                   quick_color red 0 green .6 blue 1
        }
        finish{diffuse 0.6 ambient 0.4 }
    }
    scale <3, 1, 2.6>
    translate <1, 0, 0.75>
}

sphere{<0,0,0>, 0.75
     texture{
        pigment{image_map { png "4_earth"
                               map_type 1
                   }
                rotate <0, -30, 0>
        }
        //finish{diffuse 0.4 ambient 0.8 specular 1 roughness 0.3}
     }
     translate <0.15, 0.75, -1.15>
}
box{<0, 0, 0>, <1,1,1>
    texture{
        pigment{
                image_map {tga "cloud.tga"
                           map_type 0
                }
                quick_color red 01 green .8 blue 1
        }
        finish{diffuse 0.5 ambient 0.6 }
    }
    scale<1.75,1.75,1.75>
    translate<-1.25, 0, -1.75>
    rotate<90,0,0>
}
cylinder{ <0,0, 0>, <0, 1, 0>, 1
    texture{
        pigment{
                image_map{tga "dpumulti.tga"
                          map_type 2
                }
                quick_color red 0 green .6 blue 1
        rotate <20, -60, -20>
        }
        finish{diffuse 0.5 ambient 0.7  }
    }
    scale<.8, 2.33, .8>
    translate<1.61, 0, 1.055>
}

