int x, y; 
float dist; 
int size=200;

void setup() {
  size(600, 600);
  x = width/2; 
  y = height/2; 
}

void draw() {
  background(150);
   dist = dist(mouseX, mouseY, x, y); 
  if(dist <= size/2 && mousePressed){
    fill(255);
  } else {
    fill(150);
  }
  
  ellipse(x, y, size, size);
}