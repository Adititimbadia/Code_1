//Issues with my code:
// As soon as I add more than 1 instance for my class, the file cannot run. 
// There

Spaceship A;
Spaceship B; 
Spaceship C;

Spaceship system [] = new Spaceship[30]; 

void setup(){
  size(600, 600);

  A = new Spaceship(150, int(random(100, 500)), int(random(100, 500))); 
  B = new Spaceship(120, int(random(100, 500)), int(random(100, 500))); 
  C = new Spaceship(170, int(random(100, 500)), int(random(100, 500))); 
  for(int i=0; i<system.length; i++){
    system[i] = new Spaceship(int(random(20, 50)),int(random(20, 500)), int(random(random(20,500))));
  }
    noStroke();
  }


void draw(){
  background(0); 
  A.display(color(100, 50, 200)); 
  B.display(color(200, 220, 100)); 
  C.display(color(150, 1, 70)); 
  for (int i= 0; i<system.length; i++){
    system[i].display(color(random(50, 255), random(100, 200), random(100, 200))); 
}
}
