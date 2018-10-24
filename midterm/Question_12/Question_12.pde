void setup() {
  size(600, 600);
  noStroke();
}

void draw() {
  background(150);
  for (int i = 2; i <= 60; i+=6) {
    int x = 10;
    rect(i*x, 150, 30, 300);
    x += 60;
  }
}