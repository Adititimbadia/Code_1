float x, y;
void setup() {
  size(600, 600);
  x= width/2;
  y= 0; 
}

void draw() {
  ellipse(x, y, 100, 100);
  
  y = y+10;

  if (y > height) {
    y = 0;
  } else {
    y+=10;
  }
}
