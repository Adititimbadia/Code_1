class Spaceship{
  int shipSize;
  int xPos; 
  int yPos;
  color shipColor; 
  //int numDots;
  
  Spaceship(int _shipSize, int _xPos,int _yPos){
   shipSize = _shipSize;
    xPos = _xPos;
    yPos = _yPos;
    
  }
  
  void display(int _shipColor){
    fill(50, 100, 150); 
    ellipse(xPos, yPos - (shipSize/3), shipSize/2, shipSize/5); 
    shipColor = _shipColor; 
    fill(shipColor);
    ellipse(xPos, yPos, shipSize, shipSize/1.5);
    
    //for(int i=0; i<numDots; i++){
    //  ellipse(xPos*i, yPos*i, shipSize, shipSize/1.5);
    //  ellipse(xPos*i+10, yPos*i+10, 60, 60); 
    //}
    
  }
}
