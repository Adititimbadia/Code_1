// Fix all the syntax errors so the code runs.

void setup() {
  // we'll create a counter variable to count the frames
  int counter =0;

  String welcomeMsg = "welcome to the first midterm question!";
  
  boolean isCodeGreat = true;
  
  println(welcomeMsg);
  
  println("now we'll do a loop and print the iterating value!");
  for (int i = 0; i<3 ; i++) {
    println("this is loop number " + "i");
  }
  //int floatArray = new int[100];
  //println("there are " + floatArray + " positions in floatArray");
  //floatArray.size()
}
void draw() {
  // we'll increment counter every frame until 60, then reset
  if (int counter < 60) {
    counter++;
  } 
  //else {
  //  counter--;
  //} 
}