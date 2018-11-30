# Pure Java
Review of Object Orientated Programming (Processing-Java) through Pure Java

**UNDER CONSTRUCTION**


---

# Projects to Explore

## Note Taking App

See: https://github.com/QEHS-PureJava/Ideas-and-Notes
See Groceries Project for a List of Concepts and Ideas:

See Article: https://www.makeuseof.com/tag/use-browser-notepad/
- ```data:text/html, <html contenteditable>```
- instant notepad in the active tab
- The code works with most browsers and the notepad itself works offline. It’s best to use this one as a temporary solution because your notes will disappear when you close the tab.

10 best texting games and text-based games for Android
- https://www.androidauthority.com/best-texting-games-text-based-games-android-926860/
- Project for building a paragraph, resume, using character escapes, and all String Functions
- Might be able to use client and Server functions in Processing.org


## Groceries

Connected to ATABotics

---

# Ideas to Include

Objects are:
- Group of variables declared and assigned per instance using Constructors and procedures
  - `this` and dereference
  - "An object knows about itself ..."
- Instance named like a variable
- Instances can be structured in an array (read and write)
- Instantiation happens in MAIN
- Encapsulation with access modifiers, getters and setters
- Different classes and instances can communicate through the MAIN Program

- https://web.archive.org/web/20160403181436/http://staticvoidgames.com:80/tutorials/objects/advancedInheritance
- Advanced Inheritance
  - Interfaces: methods that subclass must override
  - Abstract Class: common code between more than one class
  - Anonymous Classes: create a one-time extension of class that completes a behaviour one time
  - Final Classes: access modifier final, cannot be extended


Inheritance
- Square "is a" rectangle relationship (able to access all rectangle variables in square class if square extends rectangle)
```java
Rectangle rectangle = new Rectangle(10, 30, 20, 10);
Square square = new Square(10, 50, 25);

void setup() {
  size(100, 100);
}

void draw() {
  rectangle.draw();
  square.draw();
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

  void printMe() {
    println("X: " + x);
    println("Y: " + y);
    println("Width: " + width);
    println("Height: " + height);
  }
}

```

---

Private notes
- https://github.com/QEHS-PureJava

---