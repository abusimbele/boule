//Boule ball ... in case you've lost your balls ...


//number of tiles tessellation
$fn=200;

//Constants(Parameter) you define in cm:

diameter = 4.00;
thickness = 0.50;




//inner sphere
module sphere_inner(){ sphere((diameter/2)-thickness);}

//outer sphere
module sphere_outer(){sphere(diameter/2);}


//that's where magic happens
difference(){
 sphere_outer(); 
 sphere_inner();
    
 //To look into the shell uncomment the following line 
 //cube(10);  
}
    