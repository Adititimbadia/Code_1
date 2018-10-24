String myStr = "I am a string!";
String anotherStr;


void setup() {
  String anotherStr = "I want to use the myFunc function to print this String!";
  myFunc(anotherStr);
}

void myFunc(String myStr) {
  println(myStr);
  
}