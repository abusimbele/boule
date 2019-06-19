//Boule ball ... in case you've lost your balls ...


//number of tiles tessellation
$fn=200;

//Constants(Parameter) you define in mm:

diameter = 40.0;
thickness = 3.0;



//For better readability 
radius = diameter /2 ;


//inner sphere
module sphere_inner(){ sphere(radius-thickness);}

//outer sphere
module sphere_outer(){sphere(radius);}

//
//// hole dish for stabilisation 
//module hole_dish(){
//    linear_extrude(height = 0.1, center = true, convexity = 10, twist = 0){
//    
//    difference(){    
//    circle(radius);
//    circle(1);
//        
//    }
//    }
//    }




//that's where magic happens
union(){
    //hole_dish();
difference(){
 sphere_outer(); 
 sphere_inner();
    
 //To look into the shell uncomment the following line 
 //translate([0,0,-5]) cube(100);  
    
}
}
    