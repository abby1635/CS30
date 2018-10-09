// Global Variables (Note: any variables at the beginning of Tabs, before "void" are considered Global Variables)
Boolean start = false;

//This File is the main file
//It calls each Procedure in either setup() or draw()
void setup() {
}

void draw() {
  //Code to change "Start" Boolean Variable to true

  if (start == false) {
    println ("Game has not started yet.");
  }

  if (start==true) { //Contains the entire Main File Code
    println ("Game has Started");
  }

  startStop();
}
