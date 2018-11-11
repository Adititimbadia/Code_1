ArrayList<Spaceship> spaceships; 

Spaceship system [] = new Spaceship[30]; 

void setup(){
  size(600, 600);
  spaceships = new ArrayList<Spaceship>(); 
    noStroke();
  }


void draw(){
  background(0); 
  for(int i=0; i<spaceships.size(); i++){
    Spaceship s = spaceships.get(i);
    s.move();
    s.gravity(); 
    s.bounce(); 
    s.display(50);
}
}

void mousePressed(){
  spaceships. add(new Spaceship()); 
}
