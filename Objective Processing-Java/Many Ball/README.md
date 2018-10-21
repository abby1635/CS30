# Drawing many Pong Balls or a "Star Problem Set"
Order of Programs and Pathways

**UNDER CONSTRUCTION**

See: https://drive.google.com/drive/folders/1YC8FZz2gZjM9xQun6zXRzbwguzL2CvLq

Order of Program Solutions
- Star_Start
- Prob1
- Prob2
- Prob3
- Prob4

Table of Contents
1. Building a Basic Multi-ball Program, <a href="https://github.com/MercersKitchen/CS30/tree/master/Objective%20Processing-Java/Many%20Ball#building-a-basic-multi-ball-program">Click Here for More Details</a>, or see the program here <a href="https://github.com/MercersKitchen/CS30/tree/master/Objective%20Processing-Java/Many%20Ball/BuildingBasicStar">Click Here for Programs</a>
2. Adding an Array to change how arguments are passed to the constructor, <a href="https://github.com/MercersKitchen/CS30/tree/master/Objective%20Processing-Java/Many%20Ball#adding-an-array">Click Here for More Details</a>, or see the program here <a href="https://github.com/MercersKitchen/CS30/tree/master/Objective%20Processing-Java/Many%20Ball/Star_Single">Click Here for Programs</a>
3.
<a href="">Click Here for More Details</a>

## Building a Basic Multi-ball Program
Problem Situation: build a program that draws one pong ball in the center of a 500 by 500 canvas
- include a method for Checking the Canvas Size compared to full screen (communication with display geometry)
- include a method for Starting and Stopping the Canvas (Start-Stop Buttons)
- include a Pure-Java Class that
  - contains no numbers, only variables, passed from creating an instance
  - all variables are in the class are private with Getter Functions, when need to be shared
- include a Processing Main Program with all variables and functions as private or public

Solution: this is very similar to the full solution of the "Moving Ball"

## Adding an Array
Note: this program is using a variable, "how many stars to draw" coming from the Object
- but it could come from another program or a sensor, etc.

Problem Situation: Object is created before size() is communicated with display
- include a way to create an instance before size, then create the ball on the screen

Using Static Variables
- static can be referenced
- does not need garbage collection
- variable does not belong to any single instance
- "no single star determines the max radius of all stars, or the total number of star instances there are"




# Original Star Problem Set

## Questions

Wondering: how are static and final similar, different?
- final is constant and cannot be changed
- ,

Purpose of Problem 1 & 2
- Only use static variables when you need them

Problem 1
Star Class:

Now let's say you want to decide how many stars are shown instead of hard- coding 25 in the array initialization (the first line of the program), as well as the maximum radius.
You're only in charge of the Star class, so you want to add a variable called starCount and a variable called maxRadius.
Main Program:
- 25 = Star.starCount
- 20 = Star.maxRadius

Notes for Problem 1
- Static Variables do not need to exist with all instances of objects
  Sometimes 1000 or 1000000 or more (lots of system resources)

Problem 2:
What happens if X & Y are made static

Solution: X & Y variables are chosen and remains constant for all
this.x and this.y
Thus, different memory locations all with the same values

Problem 3: Static Methods, public variables are a security concern.
Change the starCount and maxRadius to private variables and Create GETTER Functions for both

Public variables are a security concern.
Change the starCount and maxRadius to private variables and
Create GETTER Functions for both

Problem 4:
Question: What would happen if getStarCount() was made static?

Answer: The getRadius() function, now that it's static,
is not associated with any particular instance of Star.
But since each instance of Star can have a different radius,
this function doesn't know which one to use



# Ideas
When Pong Balls, or stars, are printed to the screen, a chance exists by using random, that the star will be half off the screen
- How can this be fixed?

```java  
for (int i = 0; i < stars.length; i++) {
    stars[i] = new Star(random(width), random(height), random(Star.maxRadius));
  }

```

---
