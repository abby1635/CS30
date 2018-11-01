# Fireworks Project
Another way of creating ellipses but using the ellipses, not as Pong Balls, but as a celebration or emphasis

**UNDER CONSTRUCTION**

Create the Object or Objects in the class first, then modify and add items (arrays and arrayLists)

---

## Partial Rewriting of Processing Order
Purpose of Repo: Create Firework in a Jar
- Use Class Hierarchy to rewrite Program to create a hierarchy
- What can students do with Class Hierarchy before lessons

Files Included, in order & notes follow
- Bouncing Ball, review and introduction
- Introduction to Arrays Holding Objects, Particle Explosion Program
  - Gravity
  - Gravity Copy
  - GravityCopyRandom
  - GravityCopyRandomLoop_600by600
  - GravityCopyRandomLoop_fullScreen
- Abstract Class, Inheritance
- Extended Classes, Inheritance
- Extended Classes using Array Lists as Memory
- Interfaces_One
- Interfaces_Many
- Review: Abstract Class, Inheritance
- AbstractClass_Anonymous
- AbstractClass_Anonymous_Final

Creating an Explosion when a goal is scored
- Send the X&Y when the goal is scored
- Particle Class: Bouncing Ball, Particle Explosion
- These particles will not have a bounce

To continue here, review all classes of Pong
- Start to combine code
- Add pin-ball type features
- Add Security

Abstract Class
- Note: do not use the array list here, only the abstract class
- When finished designing classes, some code will be the same
- Write an abstract class with inheritance to develop real classes

Use Extended Classes and Inheritance to Draw Paddles and include all bounces
- Include small squares, filled in (colour changes when touched)
- Ball will bounce off the sides like it does the paddles

Use Extended Classes using Array Lists as Memory as a exercise in combining related classes
- Note: ExtendedClasses_ArrayList_Composition.pde is the flat program for this

Interfaces_One

Interfaces_Many

AbstractClass_Anonymous
- Review Abstract Class but with an Array List
- This is like writing a title or a single object

AbstractClass_Anonymous_Final
- New sort of access modifier: final
- classes cannot be extended

# Ideas to Include
Many of these notes are already found on GitHub

An introduction to celebration


---

A Comment about these examples that need to be rewritten

Composition over Inheritance

The above example is admittedly contrived, and it's actually a pretty bad design. If this were real life, the BlueSquare and RedSquare classes could probably be rolled into one class called ColoredRectangle, which would contain a color value.

In fact, it would probably be best to get rid of the ColoredSquare class altogether and instead modify the Rectangle class to use a color value. This isn't always feasible, but the general rule is that you should use inheritance when you need it, and not when you don't. If you can accomplish your goal using composition instead of inheritance, you probably should.

---
