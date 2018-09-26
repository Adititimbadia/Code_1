int triPos;
int triW;
int elSize;
int rectW;
int rectH;
int rectSize;
color triColor;
color quadColor;
int size;
 int x, y;

void setup (){
  size(1200,200);
  background(107, 168, 169);  
  triW = int(width*.48);
  elSize = 200;
  rectW = int(width*.5);
  rectH = int(height*.5);
  rectSize = int(width*.025); 
  rectMode(CENTER);
  triColor = color(random(0,255),random(0,255),100);
  quadColor = color(random(0,255),random(0,100),100);
  size = 200;
}

void draw (){ 
  fill(173, 191, 165);
  ellipse(elSize*5, elSize*.5, elSize*2, elSize);
  ellipse(elSize, elSize*.5, elSize*2, elSize);
  
  fill(53, 130, 217);
  rect(rectW, 0, 50, 400);
  
  pushMatrix();
  translate(width*.5, height*.5);
  rotate(radians(mouseX));
  rotate(radians(mouseY));
  fill(30, 10, 140); 
  rect(0, 0, rectSize, rectSize);
  popMatrix();
  
  pushMatrix();
  translate(width*.5, height*.2);
  rotate(radians(mouseX));
  rotate(radians(mouseY));
  rect(0, 0, rectSize , rectSize);
  popMatrix();
  
  pushMatrix();
  translate(width*.5, height*.8);
  rotate(radians(mouseX));
  rotate(radians(mouseY));
  rect(0, 0, rectSize , rectSize);
  popMatrix();
  
  fill(100, 130, 217);
  rect(rectW, rectH, rectSize*.8, rectSize*.8);
  rect(rectW, rectH*.4, rectSize*.8, rectSize*.8);
  rect(rectW, rectH*1.6, rectSize*.8 , rectSize*.8);
  
  fill(80, 177, 217);
  if(mousePressed){
    fill(triColor);
  }
   triangle(triW, 30, triW*.7, 40, triW*.74, 10);
  //triangle(380, 30, triPos, 40, triPos, 20);
  triangle(triW*1.085, 60, triW*1.38, 70, triW*1.33, 40);
  //triangle(430, 60, triPos +210, 70, triPos +210, 50);
  triangle(triW, 90, triW*.7, 100, triW*.74, 70);
  //triangle(380, 90, triPos, 100, triPos, 80);
  triangle(triW*1.085, 120, triW*1.38, 130, triW*1.33, 100);
  //triangle(430, 120, triPos +210, 130, triPos +210, 110);
  triangle(triW, 150, triW*.7, 160, triW*.74, 130);
  //triangle(380, 150, triPos, 160, triPos, 140);
  triangle(triW*1.085, 180, triW*1.38, 190, triW*1.33, 160);
  //triangle(430, 180, triPos +210, 190, triPos +210, 170);
  //quad(250, 30, 370, 60, 370, 140, 250, 170); 
  
  pushMatrix();
  scale(1.0);
  fill(90, 155, 169);
  if(mousePressed){
    fill(quadColor);
  }
  quad(250, 30, 370, 60, 370, 140, 250, 170);
  quad(950, 30, 830, 60, 830, 140, 950, 170);
  translate(width*.13, height*.84);
  rotate(radians(180));
  quad(0, 0, 120, 30, 120, 110, 0, 140); 
  popMatrix();
  
  pushMatrix();
  translate(width*.87, height*0.15);
  quad(0, 0, 120, 30, 120, 110, 0, 140);
  popMatrix();
  
   pushMatrix ();
  scale(.2);
  translate(width*.85, height*2.5);
  rotate(radians(mouseX));
  fill(17, 191, 165);
  ellipse(0, 0, size*2, size);
  popMatrix();
  
  pushMatrix ();
  scale(.2);
  translate(width*4.15, height*2.5);
  rotate(radians(mouseX));
  fill(17, 191, 165);
  ellipse(0, 0, size*2, size);
  popMatrix();

  fill(quadColor);
  x = mouseX;
  y = mouseY;
  if(mousePressed){
  ellipse(x, y, size*.1, size*.1);
  }
  fill(0,5);
  rect(600,100,width,height);
}

void keyPressed (){
  if(key == CODED) {
    if(keyCode == UP){
      size +=7; 
    }
    if(keyCode == DOWN) {
      size -=7;
    }
  }  
}