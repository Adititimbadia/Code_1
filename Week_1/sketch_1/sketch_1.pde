int bgColor = 213; 
int triPos;
int elSize;
int elPos;

void setup (){
  size(800,200);
  //background(206,213,217);
  background(bgColor); 
  triPos = 300;
  elSize = int(width*0.3);
  elPos = 50;
}

void draw (){ 
  fill(225, 184, 126);
  //ellipse(800, 100, 400, 200);
  ellipse(elPos + 700, 100, elSize, elSize*4);
  //ellipse(0, 100, 400, 200);
  ellipse(elPos, 100, elSize, elSize*4);
  
  fill(53, 130, 217);
  rect(380, -2, 50, 400);
  
  fill(80, 177, 217);
  //triangle(380, 30, 220, 40, 220, 20);
  triangle(380, 30, triPos, 40, triPos, 20);
  //triangle(430, 60, 580, 70, 580, 50);
  triangle(430, 60, triPos +210, 70, triPos +210, 50);
  //triangle(380, 90, 220, 100, 220, 80);
  triangle(380, 90, triPos, 100, triPos, 80);
  //triangle(430, 120, 580, 130, 580, 110);
  triangle(430, 120, triPos +210, 130, triPos +210, 110);
  //triangle(380, 150, 220, 160, 220, 140);
  triangle(380, 150, triPos, 160, triPos, 140);
  //triangle(430, 180, 580, 190, 580, 170);
  triangle(430, 180, triPos +210, 190, triPos +210, 170);
  
  fill(225, 153, 117);
  quad(50, 30, 170, 60, 170, 140, 50, 170); 
  quad(750, 30, 630, 60, 630, 140, 750, 170);  
}