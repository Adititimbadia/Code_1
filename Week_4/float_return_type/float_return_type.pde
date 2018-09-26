float x, y, x1, y1;
int size = 50;
int b; 
int bgColor; 
void setup(){
  size(600, 600); 
  x = width/2;
  y = width/2; 
  
  x1 = width*.7;
  y1 = width*.8; 
}

void draw(){
//   if(calcDist(x, y)<size/2){
//     background(255,255,0);
//   }else if(calcDist (x1, y1)<size/2){
//     background(255, 0, 0);
//   }else{
//     background(255,0,255); 
//   }

   bgColor = int(map(calcDist(x,y), 0, width/2, 0, 255)); 
   b = int(map(calcDist(x1, y1), 0, width/2, 100, 255)); 
   background(bgColor, 0, b);
   
   println(calcDist(x, y)); 
   ellipse(x, y, size, size);
   ellipse(x1, y1, size, size);
}

float calcDist(float xPos,float yPos){
  float dist = dist(mouseX, mouseY, xPos, yPos); 
  return dist;
}






////Function 
//void returnASTring(String string1; String
////String returnAStrong(String string){
////  String a = string;
////  return a; 
  
//  //Function Call
//  void draw(){
//  String s = returnAString("i am a string");
//  String t = returnAString("this is a new string");
//  println(s + "\n" + t);
