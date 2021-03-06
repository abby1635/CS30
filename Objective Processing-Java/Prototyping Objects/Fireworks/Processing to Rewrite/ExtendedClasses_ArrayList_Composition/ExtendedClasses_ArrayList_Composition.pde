ArrayList<Rectangle> rectangles = new ArrayList<Rectangle>();

void setup() {
  size(100, 100);

  rectangles.add(new Rectangle(10, 10, 80, 10));
  rectangles.add(new Square(40, 30, 20));
  rectangles.add(new ColoredSquare(10, 75, 20, color(255, 0, 0)));
  rectangles.add(new ColoredSquare(70, 75, 20, color(0, 0, 255)));
}

void draw() {
  for (int i = 0; i < rectangles.size(); i++) {
    rectangles.get(i).draw();
  }
}

class Rectangle {

  float x;
  float y;
  float width;
  float height;

  Rectangle(float x, float y, float width, float height) {
    this.x = x;
    this.y = y;
    this.width = width;
    this.height = height;
  } 

  void draw() {
    fill(255);
    rect(x, y, width, height);
  }
}

class Square extends Rectangle {
  Square(float x, float y, float length) {
    super(x, y, length, length);
  }
}

class ColoredSquare extends Square {

  color c;

  ColoredSquare(float x, float y, float length, color c) {
    super(x, y, length);
    this.c = c;
  }

  void draw() {
    fill(c);
    rect(x, y, width, height);
  }
}