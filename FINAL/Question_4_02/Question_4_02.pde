Ship system [] = new Ship[40];

Ship myShip;

void setup(){
  size(800, 600); 
  noStroke(); 
  
  //myShip = new Ship(random(0, width),random(0, height), 
  //  color(random(0,255), random(0,255), random(0,255), 40)); 
    
    for(int i=0; i<system.length; i++){
      system[i] = new Ship(random(0, width),random(0, height), 
    color(random(0,255), random(0,255), random(0,255), 40));
    }
}

void draw(){
  background(255); 
  for(int i=0; i< system.length; i++){
  system[i].display();
  system[i].move(); 
  system[i].reset(); 
  }
}

class Ship{
  PVector pos; 
  PVector vel; 
  
  color c; 
  
  Ship(float _x, float _y, color _c){
    pos = new PVector(_x, _y); 
    c = _c; 
    vel = new PVector(random(1, 3), 0); 
    
  }
  
  void move(){
  pos.add(vel); 
  }
  
  void display(){
    fill(c); 
    ellipse(pos.x, pos.y, 20, 20); 
    ellipse(pos.x, pos.y + 20, 40, 20);  
  }
  
  void reset(){
    if(pos.x >= width + 10){
      pos.x = 0; 
    }
  }
}
