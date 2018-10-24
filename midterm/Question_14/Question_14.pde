float x = 0; 
float y = 100;
int speed = 5; 

void setup() {
  size(600, 600);
  background(230);
  rectMode(CENTER);
}

void draw() {
  pushMatrix();
  translate(x, y);
  rotate(radians(frameCount + y));
  x=x+speed;
  stroke(0, 130);
  line(-50, 0, 50, 0);
  
  popMatrix();
  
  //y+=5;
  
  if (x > width) {
    y += 70;
    x = 0;
  }
}