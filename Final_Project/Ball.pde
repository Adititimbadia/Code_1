class Ball{
  PVector position; 
  PVector velocity; 
  
  float size;
  color c; 
  
  Ball(){
    position= new PVector (0, mouseY); 
    velocity = new PVector (random(2, 8), random(-2,2));
    size = (random(5, 15)); 
  }
  
  void display(){
    noStroke();
    //fill(255); 
    c= color(map(position.x, 1, width, 0, 255),
    map(position.y, 0, width, 100, 255), 175);
    fill(c); 
    ellipse(position.x-200, position.y, size, size);
  }
  
  void move(){
    position.add(velocity); 
  } 
}