int size = 10; 
int num; 
float col; 
int fromColor = color(29, 121, 225); 
int tooColor = color(196, 30, 109); 
int inBetweenColor = color(178,90,59);
float scaledVal = 50;
color c; 

ArrayList<Ball> balls; 
ArrayList<Triangle> triangles; 

void setup(){
  size(1000, 600, P3D); 
  smooth(); 
  triangles = new ArrayList<Triangle>(); 
  balls = new ArrayList<Ball>();
}

void draw(){
  scaledVal = map(mouseX, 0,width, 0,1); 
  inBetweenColor = lerpColor(fromColor,tooColor, scaledVal);
  background(0);
  
  for(int i=0; i< balls.size(); i++){
    Ball b = balls.get(i);
    b.display();
    b.move(); 
    
      if(b.position.x > width*1.5){
      balls.remove(i); 
    }
  }
  
  for(int i=0; i< triangles.size(); i++){
    Triangle t = triangles.get(i);
    t.display();
    t.move(); 
    
      if(t.position.x > width*1.5){
      triangles.remove(i); 
    }
  }
  
  int num = 50; 
  lights();
  camera(mouseX, mouseY, (height/2) / tan(PI/6), (width/3.7) / tan(PI/6), height/2, 0, 0, 1, 0);

for(int i = 0; i<5; i++){
    for(int j= 0; j<5; j++){
pushMatrix();
translate(i*num*2+300, j*num*1.8+110);
rotateY(frameCount * 0.01);
rotateX(frameCount * 0.005);
rotateZ(frameCount * 0.008); 
noStroke(); 
fill(inBetweenColor, 200); 
if (mousePressed){
  fill(255, 111, 92, 200);
}else{
  fill(inBetweenColor, 200); 
}
box(num*1.5);
popMatrix();
    }
    }
    
    if (mouseX<= 20){
      balls. add(new Ball()); 
    }
    if (mouseX>= 980){
      triangles. add(new Triangle()); 
    }
    
     if(mousePressed) {
    float fov = PI/3.2; 
    float cameraZ = (height/2.0) / tan(fov/2.0); 
    perspective(fov, float(width)/float(height), cameraZ/2.0, cameraZ*2.0); 
    
  } else {
    ortho(-width/2, width/2, -height/2, height/2);
    fill(inBetweenColor, 200);
  }
}