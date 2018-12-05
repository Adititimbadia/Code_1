int num = 25; 
float xPos [] = new float[num]; 
int size = 20; 
float theta;
float dx;
float period = 400;
int waveOffset; 
float[] yvalues;
  int spacing = width/num; 

void setup(){
  size(500, 500); 
  waveOffset = width +16; 

  dx = (TWO_PI / period) * spacing;
  yvalues = new float[waveOffset/spacing];
  
  for(int i = 0; i<num; i++){
    xPos[i] = i + size/2; 
  }
}

void draw(){
  background(100); 
  
 float x = theta; 
  for(int i = 0; i<yvalues; i++){
    ellipse(xPos[i]*spacing, 100 + sin(theta + height/2+yvalues[i])*25, size, size);  
  }
  
  theta += .01; 
}
