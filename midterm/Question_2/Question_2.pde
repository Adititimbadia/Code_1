float d = 100;
//float b = 600; 
float incr = 5;

boolean shrink; 

void setup() {
  size(600, 600);
}

void draw() {
  background(150);

  if(d > width){
    shrink = true;
  }
  
  if(shrink == true){
  d -= incr;
}

  if(d < 0){
    shrink = false;
  }
  
  if(shrink == false){
    d += incr;
  }
  
  println(shrink);
  
  
  

  //} else{
  // d -= incr;
  //}
  
  //if(shrink = false){
    
  //  d += incr;
  //}
  
  ellipse(width/2, height/2, d, d);
  
}
