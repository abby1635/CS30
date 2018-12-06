# Pure Java
Review of Object Orientated Programming (Processing-Java) through Pure Java

**UNDER CONSTRUCTION**

Textbooks and Example Websites, Recommended to Mr. Mercer and That I am still exploring, <a href="">Click </a>
-
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

# Ideas to Include

---

# Textbooks and Example Websites, Recommended to me that I am still exploring

Baron's Computer Science Workbook, on Amazon


From Kevin: kevin@happycoding.io
- Wayback machine here: https://web.archive.org/web/20160130200217/staticvoidgames.com
- GitHub Here: https://github.com/KevinWorkman/StaticVoidGames/tree/master/StaticVoidGames/src/main/webapp/WEB-INF/tutorialsContent
- Using Processing as a Java Library: http://happycoding.io/tutorials/java/processing-in-java

Other Website Resources (<a href="https://docs.google.com/document/d/1GjSR17zMEtzMe21LDCEV2QBjewUdOYbfHDaXf33Mlk8/edit">Click Here for more information</a>)
- <a href="https://drive.google.com/drive/folders/1-lRvlQv0H8N2XlJwnwJ_QXb0wskXrLhG">Click here for Google Drive with More information</a>
- http://www.apbythesea.com/sessions/computer-science-iii
- http://thecubscientist.com/APCS/Planner/APCS_FallPlanner.pdf
- https://gotjava2.thecubscientist.com/
- http://thecubscientist.com/APCS/indexAPCS_HW_Version2.html
- http://apsi.thecubscientist.com/

Using JOptionPane
https://www.youtube.com/watch?v=jD-Lv_izino

Converting Strings to Ints using JOptionPane
https://www.youtube.com/watch?v=8JOp5yeQoJ4

Getting User Input using the Scanner Class
https://www.youtube.com/watch?time_continue=14&v=BHHeXdb47qQ

Learning Objectives:
- Case Study Essay Grader: end user functions, algorithm for grading
- Note: the functions and algorithm will match searching algorithms and other string functions in pure java

Organize String Functions and learn how they work

Write Search Algorithms for Essay Grader

Put together in lessons for this project

---
