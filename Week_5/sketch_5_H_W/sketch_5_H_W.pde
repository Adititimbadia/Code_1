void setup(){
  size(600, 600);
}

void draw(){
  background(30, 60, 100);
  
  for(int x=0; x<width; x=x+20){
    for(int y=0; y<height; y=y+20){
      
      int s = int(map(0, y, height, 5, 2));
      float d = dist(mouseX, mouseY, x, y); 
       fill(d, 90, 200, 233);
      
      int g = int(map(x, 0, width, 0, 255));
      int r = int(map(y, 0, height, 0, 255)); 
      float large = map(d, 0, 100, 50, 40);
      
    triangle(x, y, x, y+20, x+20, y);
    fill(60, 30, 100); 
    ellipse(x, y, s, large);
   
      //int g = int(map(x, 0, width, 0, 255)); 
      //fill(g, 30, 100); 
      //fill(random(200, 255)); 
    }
  }
}
