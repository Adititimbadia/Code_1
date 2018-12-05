ArrayList<Particle> particles; 

void setup(){
  size(600, 600); 
  particles = new ArrayList <Particle>();  
 
}
  


void draw(){
  background(0); 
  
  for(int i= 0; i<particles.size(); i++) {
    Particle p = particles.get(i);
    p.move();
    p.bounce();
    p.display(); 
    
    if(particles.size() <=20){
    if(frameCount % 30 == 0){
      particles.add(new Particle()); 
    }
    }
  
  //to check to see if a particle is still alive, can use .dead() method
  println(p.dead()); 
  }
  }
