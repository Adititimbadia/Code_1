//change the color of an ellipse from black to white if the mouse is hovering over it 

int xPos, yPos; 
float distance; 

void setup() {
  size(700,700);
  noStroke();
}

void draw() {
  background(255); 
 
  //loop 36 times in x and y
  for (int i = 0; i <= width; i += width/35) {
    for (int j = 0; j <= height; j += height/35) {
      
      float distance = dist(mouseX, mouseY, i, j); 
      float white = map(distance, 10, 10, 5, 20); 
      
      fill(0, white); 
      ellipse(i, j, width/35, height/35);
    }
  }
}
