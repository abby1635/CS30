private Star stars = new Star(250, 250, 25);

public void setup() {
  size(500, 500);
  ellipseMode(CENTER);
  
} //End of setup()

public void draw() {

  background(0);

  ellipse(stars.getX(), stars.getY(), stars.getRadius(), stars.getRadius());
  
} //End draw()
