class Star {
  private float x;
  private float y;
  private float radius;
  
  public int targetX; //Since mouseX keyword, should be public everywhere
  public int targetY;

  private static int starCount = 50; //Number of stars or Pong Balls that will be drawn
  private static int maxRadius = 20; //can this be a ratio of width with error checking of different geometery

  public Star(float x, float y, float radius) {
    this.x = x;
    this.y = y;
    this.radius = radius;
    targetX = x; //starting value must match initial instance value
    targetY = y; //starting value must match initial instance value
  } //End of Constructor

  //Moving Each Ball
  public void step() {

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

  public float getX() {
    return x;
  }
  public float getY() {
    return y;
  }
  public float getRadius() {
    return radius;
  }
  public static int getStarCount() {
    return starCount;
  }
  public static float getMaxRadius() {
    return maxRadius;
  }
} //End of Start Class
