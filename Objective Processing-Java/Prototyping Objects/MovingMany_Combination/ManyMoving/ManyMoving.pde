private Boolean startKeyboard = false;
private Boolean startMouse = false;
private Star[] stars = new Star[Star.getStarCount()]; //only varaibles is how many stars to draw

public void setup() {
  size(500, 600);
  screenSizeChecker();
  ellipseMode(CENTER);

  //Need drawing of ball before mouseClick(), two lines of the same code
  createStars();

  println ("Remember to press the SPACEBAR to start the program");
} //End of setup()

public void draw() {
  
  startStop(); //Update Start Variable or Quit Program
  
  //Must click on the Canvas to Start the Program
  if (startMouse == true) {
    background(0);
  }
  
  //Must press the SPACEBAR to start the Program
  if (startKeyboard==true) {
    Star.step();
    for (int i = 0; i < stars.length; i++) {
      ellipse(stars[i].getX(), stars[i].getY(), stars[i].getRadius(), stars[i].getRadius());
    }
  } //End of startStop
  
} //End draw()

public void mouseClicked() {
  
  //Listener for Clicking on the Canvas to Activate Program
  if (mousePressed == True) {
    startMouse = true;
  }
  
  //Listener for Keyboard Key to Start the Program
  if (startKeyboard == true) {
    createStars();
    Star.targetX = mouseX; 
    Star.targetY = mouseY;
  }
  
} //End of mouseClicked()
