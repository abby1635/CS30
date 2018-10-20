class Ball {
  private int x = 250; //Modifier changed from default, private only to class Ball
  private int y = 250; //Modifier changed from default, private only to class Ball

  // Private also used before method's return type

  public int targetX;
  public int targetY;

  Ball(int x, int y) {
    this.x = x;
    this.y = y;
    targetX = x; //starting value must match initial instance value
    targetY = y; //starting value must match initial instance value
  } //End of Constructor

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

  int getX() { //Created for Private Modifier, security reasons
    return x;
  }
  int getY() { //Created for Private Modifier, security reasons
    return y;
  }
} // End of class Ball
