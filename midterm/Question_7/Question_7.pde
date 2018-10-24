
void setup() {
  size(600, 600);
}

void draw() {
  for (int i = 0; i <= width; i+= width/9) {
    for (int j = 0; j <= height; j+= height/9) {
      ellipse(i, j, 50, 50);
    }
  }
}