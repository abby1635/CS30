# Drawing many Pong Balls or a "Star Problem Set"
Order of Programs and Pathways

See: https://drive.google.com/drive/folders/1YC8FZz2gZjM9xQun6zXRzbwguzL2CvLq

Order of Program Solutions
- Star_Start
- Prob1
- Prob2
- Prob3
- Prob4

Table of Contents
1. Building a Basic Multi-ball Program, <a href="">Click Here for More Details</a>, or see the program here <a href="">Click Here for Programs</a>
2. <a href="">Click Here for More Details</a>
<a href="">Click Here for More Details</a>

# Original Star Problem Set

## Questions

Wondering: how are static and final similar, different?
- final is constant and cannot be changed
- static can be referenced

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
- Static Variables do not need to be garbage collected

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


---
