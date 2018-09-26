float x, y;
int size=100;
float xSpeed, ySpeed;

void setup() {
  size(500,500);
  xSpeed = int(random(1,4));
  ySpeed = int(random(1,4)); 
  x = width/2;
  y = height/2; 
}

void draw() {
  background(0);
  if(xSpeed ==ySpeed) {
    xSpeed = int(random(1,9));
    ySpeed = int(random(1,7)); 
  }
  fill(color(random(0,255), random(0,255), random(0,255))); 
  ellipse(x, y, size, size);
  if(x>(width-size/2) || x<size/2){
    xSpeed = xSpeed *-1;
  }
  if(y>(height-size/2) || y<size/2){
   ySpeed = ySpeed *-1;
  }
  x= x+xSpeed;
  y= y+ySpeed;
  
}
