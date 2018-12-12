class Triangle{
  PVector position; 
  PVector velocity; 
  
  float size;
  color c; 
  
  Triangle(){
    position= new PVector (0, mouseY); 
    velocity = new PVector (random(-2, -8), random(-2,2));
    size = (random(5, 15)); 
  }
  
  void display(){
    //noStroke();
    fill(255); 
    c= color(map(position.x, 1, width, 0, 255),
    map(position.y, 0, width, 100, 255), 175);
    fill(c); 
    stroke(c); 
    //ellipse(position.x+1200, position.y, size,size);
    line(position.x+1200, position.y, position.x*size, position.y*size); 
  }
  
  void move(){
    position.add(velocity); 
  } 
}