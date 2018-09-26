void setup(){
 size(500, 500); 
 rectMode(CENTER);
}

void draw(){
  background(150);
  //pushMatrix store cordinates of the new cordinate plane
  pushMatrix();
  
  println(mouseX);
  println(mouseY);
  //translate shifts the origin of the canvas plane from 0,0
  translate(width*.75, height*.75);
  rotate(radians(mouseY));
  rect(0, 0, 100, 100);
  
  //reset all canvas cordinates
  //popMatrix always need push and pop to go together
  popMatrix();
  
  pushMatrix();
  scale(2.0);
  fill(200);
  //to rotate the object in degrees-- shapes need to be redrawn from the origin 
  //to ensure it rotates in place
  // should always translate before rotating
  translate(width*.25, height*.25);
  rotate(radians(mouseX)); //to rotate based on where the mouse is
  
  rect(0, 0, 100, 100);
  fill(0);
  ellipse(0, 0, 50, 50);
  popMatrix();
 
  
}