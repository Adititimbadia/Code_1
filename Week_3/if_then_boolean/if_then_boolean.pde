int circleSize;
int circleColor; 
int xPos, yPos;
color bgColor;

boolean isCirclePressed; 

int distance; 

void setup(){
  size (500, 500);
  bgColor = color(30, 200, 200);
  background(bgColor);
  
  xPos = width/2;
  yPos = height/2; 
  
  circleSize = 100; 
}

void draw (){
  distance = int(dist(xPos,yPos, mouseX, mouseY)); 
  
  if(distance<circleSize/2){ 
   circleColor = color(255,0,150);
 }else{
   circleColor = color(255,255,255); 
 }
 
 if(distance<circleSize/2 && mousePressed){
   bgColor = 255; 
 }else{
   bgColor = 100; 
 }
   fill(circleColor); 
  ellipse(xPos, yPos, circleSize, circleSize); 
}
    
    //1. draw a circle in the center of the screen
    //2. calc. distance between mouse+circle
    //2a. If distance is less than radius than change the fill color
    //3. boolean if ellipse pressed 
    //4. print value of boolean to screen
