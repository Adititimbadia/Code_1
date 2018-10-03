int cirSize;
int xPos, yPos;
int distanceOne; 
int distanceTwo;
int distanceThree; 
int cirColor; 
int cirColorTwo; 
int cirColorThree; 
float x, y;
int size = 50;
float xSpeed, ySpeed;
color bgColor;


void setup(){
  size(500, 500);
  
  xPos = width/2;
  yPos = height/2;
  
  cirSize = 100; 
  
  bgColor = color(0);
  background(bgColor);
  
  xSpeed = int(random(4,10));
  ySpeed = int(random(5,9));
  x = width/2;
  y = height/2; 
}

void draw() {
  distanceOne = int(dist(xPos,yPos, mouseX, mouseY)); 
  distanceTwo = int(dist(xPos/2,yPos/2, mouseX, mouseY));
  distanceThree = int(dist(xPos*1.5, yPos*1.5, mouseX, mouseY));
  
  if(distanceOne<cirSize/2){
    cirColor = color(255,0,150);
}else{
  cirColor = color(255,255,255);
}

  if(distanceTwo<cirSize/2){
    cirColorTwo = color(120,40,130);
}else{
  cirColorTwo = color(255,255,255);
}

  if(distanceThree<cirSize/2){
    cirColorThree = color(10,70,170);
}else{
  cirColorThree = color(255,255,255);
}

//if(distanceOne<cirSize/2 && mousePressed){
//   bgColor = color(random(255), random(255), random(255)); 
// }else{
//   bgColor = 255; 
// }
 
background(bgColor);
  //if(xSpeed ==ySpeed) {
  //  xSpeed = int(random(1,9));
  //  ySpeed = int(random(1,7)); 
  //}
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

fill(cirColor);
ellipse(xPos, yPos, cirSize, cirSize); 
fill(cirColorTwo);
ellipse(xPos/2, yPos/2, cirSize, cirSize); 
fill(cirColorThree);
ellipse(xPos*1.5, yPos*1.5, cirSize, cirSize);
}

void mousePressed() {
  if(distanceOne<cirSize/2 && mousePressed){
   bgColor = color(random(255), random(255), random(255)); 
 }else{
   bgColor = 0; 
 }
}
