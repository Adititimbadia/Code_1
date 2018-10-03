int r; 
int num1, num2;
String string1, string2; 
int rectColor;
float x, y, x1, y1; 
color color1, color2; 
float a;
float b;

void setup(){
  size(500, 500);
  rectMode(CENTER);
  textAlign(CENTER);
  x = width/2;
  y = width/2; 
  num1 = int(random(1,5));
  num2 = int(random(5,10));
  string1 = "Be";
  string2 = "Happy"; 
  color1 = color(120, 40, 130); 
  color2= color(200, 15, 180); 
  a = (width*.25);
  b = (width*.75);
  
}

void draw() {
  background(0);
  back(color1, color2);
  println(back(color1,color2));
  
  rectColor = int(map(calcDist(x,y), 0, width, 0, 255));
  r = int(map(calcDist(x1, y1), 0, height, 0, 150)); 
 
  drawRect(100, 100, 100); 
  drawRect(400, 400, 100); 
  drawRect(100, 400, 100); 
  drawRect(400, 100, 100); 
  drawRect(int(width*.5), int(height*.5), int(width*.5));
    
  println(calcDist(x, y));
   
  println(string1 + " " + string2);
  
  fill(0);
  text(string1 + " " + string2, width*.5,height*.5); 
 
  int numb = multiply(num1, num2);
  println(numb);
 
  //line(a, 250, b, 250);
  for (int i = 0; i <10; i++) {
  float c = lerp(a, b, i/10.0) + 10;
  point(a, b);
}
}

void drawRect(float x1, float y1, float rectSize) {

  fill(rectColor, 0, r); 
  rect(x1, y1, rectSize, rectSize);

  fill(100, 100, 100);
  rect(x1, y1, rectSize*.75, rectSize*.75);

  fill(180, 180, 180);
  ellipse(x1, y1, rectSize*.6, rectSize*.6);
}

void tri(float x1, float y1) {
  triangle(x1, y1, x1+30, y1-20, x1+30, y1+20);
}

float calcDist(float xPos, float yPos) {
  float dist = dist(mouseX, mouseY, xPos, yPos); 
  return dist; 
}

String returnAstring(String string1, String string2){
   
  fill(255);
  text(string1 + " " + string2, 100, 100);
  return string1; 
}

int multiply(int num1, int num2){
  int xnumbers = num1 * num2;
  return xnumbers;
}

boolean back(color color1, color color2){
  if (mouseX < 250){
    background(color1);
    return true; 
  }else{
    background(color2); 
    return false; 
  }
}
