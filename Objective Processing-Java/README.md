# Object Orientated Programming through Processing-Java
Learning OOP through the Processing Driver and .pde or Pure-Java Classes

**Thank-you** to Keven Workman and his effort in putting out this organization, and answering my emails
- <a href="https://web.archive.org/web/20160403191056/http://staticvoidgames.com/tutorials/basicJava/fromProcessingToJava">Click Here for his Archived Website for Using Processing and Pure Java</a>

Table of Contents
1. Arithmetic of Moving a Ball & Creating a Driver and Classes, <a href="https://github.com/MercersKitchen/CS30/tree/master/Objective%20Processing-Java#arithmetic-of-moving-a-ball--creating-a-driver-and-classes">Click Here</a>
2. <a href="">Click Here</a>
<a href="">Click Here</a>

Motivation for Learning Processing (Artists and Demonstration of Natural Phenominon IDE)
- An Example Italian Designer: https://vimeo.com/ignaziolucenti
- Their GitHub Repository for Learning Processing, <a href="https://github.com/lignazio/Learning-Processing">Click Here</a>
- Clone the Repo and View ```particles_magneticFlowField```
- Interesting Project to visualize influences on Magnetic Flow
- For Reminders about Magnetic Flow
  - Google Image "particles around a magnet"

## Arithmetic of Moving a Ball & Creating a Driver and Classes
Purpose of this Program
1. Add imagination to Pong
2. Introduction to Class Design and Case Studies

OOP Java Concepts
- Access Modifiers: public, private
- Getters

Case Study:
- Problem Situation: if a ball starts from the center of a canvas, how will it move to a target arithmetically
- Solution uses incrementation and a conditional

Creating a Processing-Java | Pure-Java Program
- Folder and Name must match (issue of Java Compiler)
- Creating new TABs within Processing-Java, including file extension of .java, allows Pure-Java Classes

Progression of Programs in this Pathway
- BouncingBall_Start: boilerplate, creating Pure-Java Classes within .pde constructor
  - Object creates instances
  - "What does instance know about itself" ... referring to actual numbers, not actual numbers
  - How is the processing accomplished on "what the instance knows about itself"
  - Naming object variables, classes, procedures within classes
  - "this.variable"
  - passing parameters to class to construct the instance of the object

- BouncingBall_Chase.pde: adding arithmetic to animate ball, adding mouse interactions and variables of target

- BouncingBall_Chase_Private: modifying access to variables and creating getters for security
  - Must fix the error before it runs properly
  - Private & Public modifiers
  - Creating Getter Functions for private access modifiers
  - To fix the first error, run the Getter Function for X & Y: ```ball.x to ball.getX()```

  - Note: BouncingBall_Chase_Getters.pde describes debugging

---

# Ideas to Include
Ways to Ball Chase better
- math to make ball movement smoother instead of like Pong Ball, not a 45-degree line and then 1D lines to "make up the distance"




---
