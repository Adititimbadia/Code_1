class Spaceship{
  float shipSize;
  color shipColor; 
  PVector position; 
  PVector velocity; 
  PVector gravity; 
 
  Spaceship(){
    position = new PVector(mouseX, mouseY); 
    velocity = new PVector(int(random(3)), int(random(-3))); 
    gravity = new PVector(int(random(.5, -.5)), 0); 
  }
  
  void move(){
    position.add(velocity); 
  }
  
   void gravity(){
    velocity.add(gravity); 
  }
  
  void bounce(){
    if(position.x >= width || position.x < 0){
      velocity.x = velocity.x * -1; 
    }
    if(position.y >= height || position.y <0){
      velocity.y = velocity.y * -1; 
    }
  }
  
  void display(float _shipSize){
   fill((random(50, 150)), (random(100, 200)), (random(50, 100)));
    shipSize = map(velocity.y, 0, height, 70, 100);
    ellipse(position.x, position.y - (shipSize/3), shipSize/2, shipSize/5); 
      fill(50, 100, 150); 
    ellipse(position.x, position.y, shipSize, shipSize/1.5);  
  }
}
