//create an integer function that returns the sum of two numbers
String additionSentence;
int n1, n2;
void setup(){
  size(500, 500);
  println(addition(4,5));
  textSize(32); 
}

void draw(){
  background(0);
  //first number + second number = sum
  additionSentence = n1 + " + " + n2 + " = " + addition(n1, n2); 
  text(additionSentence, width/2, height/2); 
  //addition inside the quotations have a different purspose
}

// this is creating a local variable
int addition(int a, int b){   
  int sum = a + b; 
  return sum; 
}

void mousePressed(){
  n1 = int(random(0,10));
  n2 = int(random(0,10));
}
  
