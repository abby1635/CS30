//Static
//Pretend a different person works on a different tab

private Star[] stars = new Star[25];

public void setup() {
  size(500, 500);
  ellipseMode(CENTER);

  for (int i = 0; i < stars.length; i++) {
    stars[i] = new Star(random(500), random(500), random(20));
  }
}

public void draw() {

  background(0);

  for (int i = 0; i < stars.length; i++) {
    ellipse(stars[i].getX(), stars[i].getY(), stars[i].getRadius(), stars[i].getRadius());
  }
}

public void mouseClicked() {
  for (int i = 0; i < stars.length; i++) {
    stars[i] = new Star(random(500), random(500), random(20));
  }
}