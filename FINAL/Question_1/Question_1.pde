PVector pos, vel, accel; 

void setup(){
  size(600, 600); 

  pos = new PVector(width/2, 25); 
  vel = new PVector(0, 5); 
  accel = new PVector(0, .05); 

  smooth(); 
}

void draw(){
  background(0); 
  pos.add(vel); 
  vel.add(accel);
  ellipse(pos.x, pos.y, 25, 25); 
  if(pos.y >= height){
    pos.y=0; 
  }
  if(pos.y <= 0){
    accel = new PVector(0, .01);
  }
}
