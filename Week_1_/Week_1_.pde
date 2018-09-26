int bgColor = 255;
float treePosition; 
int treeSize;

void setup(){
  //first parameter is width, second is height
  size(600, 600);
  background(bgColor);
  
  treePosition = width*random(0,0);
  treeSize = int(width*0.35);
  
  //prints to the console
  println(treePosition);
}

void draw (){
  //ellipse(x position, y position, width, height)
  //fill(0, 100, 100);
  //ellipse(200,200,100,100);
  
  //fill(0,40,100);
  //rect(100,100,100,50);
  
  //this draws our rectangle from the center
  rectMode(CENTER);
  fill(150, 100, 50);
  rect(treePosition, treePosition + 50, treeSize *.25, treeSize);
  
  fill(0, 225, 100);
  ellipse(treePosition, treePosition, treeSize, treeSize);
  
  treePosition = width*random(0,1);
}