  // boolean to detect if my mouse if pressed 
  //if boolean true, want to craw ellipse where mouseX and mouseY
  //change the size of my drawing ellipse when arrow is clicked
  
  int size; 
  int x, y;
  color circleColor;
  
 void setup(){
  size(500, 500);
  size = 10;
  noStroke();
  circleColor = color(random(0,255),random(0,255),100);
}

void draw(){
  fill(0,1);
  rect(0,0,width,height);
  x = mouseX;
  y = mouseY;
  
  // ifmousePressed happens continuously
  //if  then command to make sure you can only draw in the top left quadrant
  //use if if you want it to happen many times and void just to happen once
  if(mouseX>0 && mouseX<width/2 && mouseY>0 && mouseY<width/2){
  if(mousePressed){
    fill(circleColor); 
  ellipse(x, y, size, size);
    }
  }
}

//use void mousepressed to have it only occur once when mouse if clicked
  //void mousePressed(){
  //ellipse(x, y, size, size);
//}

// everytime you press up arrow, the size of the ellipse will increase by one integer
void keyPressed (){
  if(key == CODED) {
    if(keyCode == UP){
      size ++; 
      //To increase the size at a faster rate
      //size += 5;
    }
    if(keyCode == DOWN) {
      size --;
    }
  }  
}