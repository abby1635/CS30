//Must create main program to handle class, basic level
Firework firework;

//Global Variables

void setup() {
  size(500,600);
  //width is passed to x, diameter
  //height is passed to y
  firework = new Firework(width, height);
}

void draw() {
  background(255);
  //firework.ClassDraw();
}
