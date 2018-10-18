class Ball {
  int x = 250; //These variables should not be changed, access modifier is currently default
  int y = 250; //These variables should not be changed, access modifier is currently default

  int targetX = 250;
  int targetY = 250;

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