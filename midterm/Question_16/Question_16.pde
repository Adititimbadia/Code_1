int num=100; 
int [] pos = new int[num];

void setup() {
  size(600, 600);
  //for(int i=0; i<num; i++){
    for(int i=0; i<pos.length; i++){
      pos[i]= i*height/num;
  }
}

void draw() {
  background(240);
  for (int i = 0; i < pos.length; i++) {
    //pos[i] = int(num/100); 
    ellipse(width/2, pos[i], 50, 50);
  }
}
