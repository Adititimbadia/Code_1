float x1, y1; 
int theta; 
int orbitRadius; 

void setup(){
  size(600, 600); 
}

void draw(){
  background(0, 100, 200); 
  theta ++;
  x1= cos(radians(theta))* 100 ;
  y1= sin(radians(theta))* 100 ;

  ellipse(mouseX+x1, mouseY+y1, 25, 25); 
}
