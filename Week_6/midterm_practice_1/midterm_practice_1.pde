//change this sketch so it rotates around the original position of the shape 

void setup() {
  size(600, 600); 
  rectMode(CENTER); 
}

void draw(){
  fill(60, 100, 80);
  rect(width/2, height/2, 100, 100); 
  
  pushMatrix(); 
  fill(60, 70, 120);
  translate(width*.5, -120);
  rotate(radians(45)); 
  rect(width/2, height/2, 100, 100); 
  popMatrix(); 
}
