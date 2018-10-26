class Star {
  float x;
  float y;
  float radius;
  
  int targetX; //Since mouseX keyword, should be public everywhere
  int targetY;

  int starCount = 50; //Number of stars or Pong Balls that will be drawn
  int maxRadius = 20; //can this be a ratio of width with error checking of different geometery

  Star(float x, float y, float radius) {
    this.x = x;
    this.y = y;
    this.radius = radius;
    targetX = x; //starting value must match initial instance value
    targetY = y; //starting value must match initial instance value
  } //End of Constructor

  //Moving Each Ball
  void step() {

    if (x < targetX) {
      x++;
    } else {
      x--;
    }

    if (y < targetY) {
      y++;
    } else {
      y--;
    }
  } //End of step

} //End of Start Class
