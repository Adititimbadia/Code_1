ArrayList <Shape> shapes = new ArrayList<Shape>(); 

void setup(){
  size(600, 600); 
}

void draw(){
  background(255); 

  for(int i = 0; i<shapes.size(); i++){
    Shape s = shapes.get(i); 
    s.display(); 
  }
}

void mousePressed(){
  shapes.add(new Shape(mouseX, mouseY, random(30, 80))); 
}

class Shape{
  float x, y; 
  float size; 
  
  Shape(float _x, float _y, float _size){
    x = _x; 
    y = _y; 
    size = _size; 
    
  }
  
  void display(){
    ellipse(x, y, size, size);  
    triangle(x, y-size/2, x+size/3, y+size/3, x-size/3, y+size/3); 
  }
}
