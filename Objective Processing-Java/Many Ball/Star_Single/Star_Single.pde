private Boolean start = false;
private Star[] stars = new Star[Star.starCount]; //only varaibles is how many stars to draw

public void setup() {
  size(500, 600);
  screenSizeChecker();
  ellipseMode(CENTER);
  
  //Need drawing of ball before mouseClick(), two lines of the same code
  createStar();
  
} //End of setup()

public void draw() {
  startStop();

  if (start==true) {
    
    background(0);

    ellipse(stars[Star.starCount].getX(), stars[Star.starCount].getY(), stars[Star.starCount].getRadius(), stars[Star.starCount].getRadius());
    
  } //End of startStop
} //End draw()

public void mouseClicked() {
  createStar();
} //End of mouseClicked()
