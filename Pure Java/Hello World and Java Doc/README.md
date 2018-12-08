# Hello World
Using Pure Java and the JAVAC Compiler through a Command Window

**UNDER CONSTRUCTION**

Tools will be using
- WINDOWS Folders
- CMD.exe
  - Note: able to use PowerShell but instruction will use CMD.exe
  - Similar to Terminal in Linux (Raspberry Pi Computer) and utilizing devices built for Internet of Things
- WYSIWYG: Atom (students are able to use text editor of their choice as long as multiple files open concurrently, like Notepad++)
- JDK (use most recent version unless using EPS-Schoolzone, See BYOD, <a href="https://github.com/MercersKitchen/BYOD#for-computers-using-schoolzone-all-or-powerteacher">Click Here</a>)

Review of JAVAC Complier
- Reads Java using 3 locators
  1. Main Program matches Folder name
  2. Main Program's first line within ```public static void main (String[] args)```

- Compared to Processing-JAVA
  - Folder and Program Name match
  - Main Program contains
    ```java
    void setup() {}
    void draw() {}
    ```

Using the JAVAC Compiler: compiling Java, creating Bytecode, executing Bytecode
- NOTE: Bytecode will run on multiple platforms (Windows, Mac, and various microcontrollers like alarm clocks) ... Java is everywhere
1. SHIFT-LeftClick on Folder
2. Run CMD: "Open Command Window Here"
3. Creating Bytecode: type ```javac [program name, exact spelling].java```
   - Compiles Java
   - Will return all errors here
4. UP-ARROW to access previous typing
   - Command Line and Typing Commands is very different than finding buttons to press
   - Compensation, computer remembers what you typed
5. Using CTRL-ARROWS to skip typing
6. Executing Bytecode: type ```java [program name, exact spelling]```

Progressions
1. Create a simple Hello World Program, <a href="">Click Here for Descriptions</a>, <a href="">Click Here for Exemplar Program Files</a>
2.
<a href="">Click Here for Descriptions</a>, <a href="">Click Here for Exemplar Program Files</a>

## Simple Hello World Program

**Rewrite**

- ID Driver Method within Main Program with matching folder name
- Discuss each word in terms of meaning
- Discuss concept that Java natively accepts strings
- Review basic Java Documentation File
- Review ```println``` in Pure Java

- Creating Folder, Naming must match Class Programming for
- Introduction to
  CMD
  javac
  java
- What is created in the folder
- Template for Hello World Program

Breakdown of Hello World Program'
//Writing your first class
//Break down each line of code - Review Processing Java

public class HelloWorld{
    public static void main(String[] args){
        System.out.println("Hello, world!");
    }
}

//public: everyone can access it
//class: blueprint for objects, all information should be encapuslated
//static: do not need to instanciate an object
//void: does not return anything
```java
/*main(String[] args): method named main, which takes one argument named args,
                       which is an array of Strings
  - Looks for this method, like Processing looks for void setup & draw
  - Thus, this method must be STATIC
  */
/*System.out.println: supplies strings to the command prompt
  Remember: dereference or "."
  System: predefined class in Java
  Out: System contains static class named "out"
  Println: one object in "out" that prints to cmd or console
  Note: "Out" has many accessible objects, "out" is one of them
  */
//Websites for help: https://docs.oracle.com/javase/6/docs/api/
  //Change 6 to 8 or 9 for more information

Hello World Example - Supplying CMD Array Content

/*
  To execute: supply cmd line arguments
  "java HelloWorld testing abc 123"
*/

public class HelloWorld{
    public static void main(String[] args){
        System.out.println("Printing command-line arguments:");
        for(int i = 0; i < args.length; i++){
            System.out.println("Args[" + i + "]: " + args[i]);
        }
        System.out.println("Done.");
    }
}
/*Note: &lt; is a symbole reference, is the same as <
  &gt;
  &le; is a symbole reference, is the same as <=
  &ge;
  CAUTION: &lt;= will only display <=, not compare
  See https://stackoverflow.com/questions/5068951/what-do-lt-and-gt-stand-for
  Accessed: 20171102
  */

```



## Hello World CMD (starting a program with Command Line Arguments)

**Rewrite**

- Review Basics of Array
- Add Try-Catch
  - https://beginnersbook.com/2013/04/try-catch-in-java/
- Review ArrayIndexOutOfBoundsException
- Review System Exit 0 & 1 (Similar to Quit Button)

Two Types of CMD Java, Hello World
- Hard coding variables
- Supplying code through CMD Window (args is always strings)
  Passing integers and parsing them
  Passing Strings and dealing with them

## Exploring Java Documentation within a Program, Adding Two Numbers

Create a case study for adding two numbers, input through CMD Arguments
- Note: this will be on way to prototype (input through CMD arguments)

## Hello World Possible Exercises


---

# Include This

JavaDocExample: explore ToString in this
- input thorugh CMD, parsing numbers, Booleans, etc. using Try Catches
- See parsing in supporting DOCs
- see using args[]

AddNum (JavaDocExample- Example for illstrating Javadoc Tool further
Complete this program twice
1. Hardcoded variables
2. Args-passed variables & use print with escapes to output variables
- arguments are loaded based on whitespace or "" (to pass white space)
  leading and trailing white space is trimmed
- Use Try-Catch with non-zero System.Exit()
  See UsingArgs\InvocationCMDArguments.html
- int num = Integer.parseInt ( input );
3. This program reminds students about how to create a procedure in a class
   that is called anytime it is needed

Future - Hello World Exercises (Below)
Future - Fundamentals Exercises by mixing in arrays (Below)

System Setup Exercises
Write a program that prints out "Hello World"
- if no command line arguments are specified
- if the user does enter a command line argument, the program uses that as a name. For example, passing in the name "Stanley" will print "Hello, Stanley!"
- Write a program that randomly chooses a command line argument and prints it out. For example, passing in burrito, sandwich, and salad will print "burrito" 1/3 of the time, "sandwich" 1/3 of the time, "salad" 1/3 of the time. Note: You can use this program to make your mind up when you can't decided something!
- What happens if you forget to make main static?
- What happens if you forget the String[] args argument?
- What happens if you run a class that doesn't have a main method?

---
