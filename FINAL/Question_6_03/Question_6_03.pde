ArrayList <Particle> particles = new ArrayList<Particle>();

int frame =0;

void setup(){
  size(600, 600); 
}

void draw(){
  background(0); 
  if(frame ==30){
    particles.add(new Particle(width/2, height/2)); 
    frame = 0; 
  }
  
  int deadParticle;
  for(int i=0; i<particles.size(); i++){
    Particle p = particles.get(i);
    p.move();
    p.bounce();
    p.display();
    if (p.dead()){
      particles.remove(p);
    }
    
  }
  
  println(particles.size()); 
  frame++;
}

class Particle{
  PVector pos; 
  PVector vel; 
  float size; 
  
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
