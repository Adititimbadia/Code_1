String EmotionArray [] = {"Happy", "Sad", "Angry", "Nervous", "Calm"};
int num =20;
int [] xPos = new int[num]; 
int [] yPos = new int[num];

void setup(){
  size(600, 600); 
  int index = int(random(5));
     
  for (int i = 0; i<num; i++){
    if(index>.5) {
    fill(255, 53, 2);
  }else{
    fill(10, 52, 178);  
  }
    xPos[i] = int(random(10, 600)); 
    yPos[i] = int(random(10, 600)); 
   ellipse(xPos[i], yPos[i], 20, 20);
   fill(100, 170, 40);
   rect(xPos[i], yPos[i], 20, 20);
  }
  
  text((EmotionArray[index]), width/2, height/2);
  
  if(index>.5) {
    fill(255, 53, 2);
    text((EmotionArray[2]), width*.9, height/2);
  }else{
    fill(10, 52, 178);
    text((EmotionArray[4]), width*0.1, height/2);  
  }

}
