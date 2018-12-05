//Particle myParticle; 

ArrayList <Particle> particles; 

void setup(){
  size(600, 600); 
  
  myParticle = new Particle(width/2, height/2); 
  particles = new ArrayList<Particle>(); 
  for( int i=0; i<10; i++){
  particles.add(new Particle()); 
  }
}

void draw(){
  background(0); 
  
  for(int i= 0; i<particles.size(); i++) {
    Particle p = particles.get(i); 
  p[i].move();
  p[i].bounce(); 
  p[i].display(); 
  }
  
  //to check to see if a particle is still alive, can use .dead() method
  println(myParticle.dead()); 
}

class Particle{
  PVector pos; 
  PVector vel; 
  float size; 
  float x, y; 
  
  int opacity = 255; 
  
  Particle(float x, float y){
     pos = new PVector(x, y); 
     
     vel = new PVector(random(-5, 5), random(-5, 5)); 
     
     size = random(5, 15); 
  }
  
  void move(){
    pos.add(vel); 
  }
  
  void bounce(){
    if(pos.x<= size/2 || pos.x>= width-size/2){
      vel.x = - vel.x*.9; 
      opacity -= 20; 
    }
    if(pos.y<= size/2 || pos.y>= height -size/2){
      vel.y = - vel.y*.9; 
      opacity -= 20; 
    }
  }
  
  void display(){
    fill(255, opacity); 
    ellipse(pos.x, pos.y, size, size); 
  }
  
  boolean dead(){
    if(opacity <= 20){
      return true;
    }else{
      return false;
    }
  }
}
