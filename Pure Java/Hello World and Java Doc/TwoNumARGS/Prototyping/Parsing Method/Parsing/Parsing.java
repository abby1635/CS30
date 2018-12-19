public class Parsing
{
  //Global Variable
  static int[] num = new int[2];
  static String[] input = new String[2];

  String parsingMethod (String[] string)
  {
   //continue with parsing the string in order with specific feedback
    String returnString;
    int returnInt; //Input is small, thus int, not long
    float returnFloat; //Input is small, thus float, not double
    try
    {
      returnInt = Integer.parseInt(string[0]);
      System.out.println("Please restart the program and type digits");
    }
    catch (NumberFormatException e)
    {
      try
      {
        System.out.println("Let's see if you typed a decimal.");
        returnFloat = Float.parseFloat(string[0]);
        System.out.println("Looks like you typed a decimal, \nPlease restart the program and type digits only.");
      }
      catch (NumberFormatException e)
      {
        System.out.println("Let's see if you mistyped a digit");
        returnString = string[0];
        System.out.println("Look's like you mistyped a digit. \nPlease restart the program and type digits.");
      }

    return ; //Must be a String Varaible returning into
  }

  //Notation for mutliple exceptions
  public static void main (String[] args)
  throws ArrayIndexOutOfBoundsException, NumberFormatException
  {
    try
    {
      input[0] = args[0]; //Without arguement, throws ArrayIndexOutOfBoundsException
      //If Error thrown, next line will not execute
      System.out.println("Congrats ... I am using your ARGS[0].");
      }
    catch (ArrayIndexOutOfBoundsException e)
    {
      input[0] ="2"; //Change to "two" for illustration
      System.out.println("You did not enter a first arguement. \nI did it for you.");
    }
    try
    {
      // Throws ArrayIndexOutOfBoundsException if no second ARGS entered
      input[1] = args[1];
      System.out.println("Congrats ... I am using your ARGS[1].");
    }
    catch (ArrayIndexOutOfBoundsException e)
    {
      input[1] = "5"; //Change to "two" for illustration
      System.out.println("You did not enter a second arguement. \nI did it for you.");
    }
    try
    {
      //Need to change this line, eventually
      num[0] = parsingMethod(input[0]); // Memory of ARGS[0]
    }
    catch (NumberFormatException e) {
      System.out.println("You must enter digits \n" +
                         "Please restart the program with arguments. Thank-you");
      // Feedback is not specific, a general parsing method would
      // WOrk Better
      System.exit(1);
    }
    System.out.println("Parsing an Integer with Try-Catch.");
    System.out.println("From String " + input[0] + " to Integer " + num[0]);
    System.out.println("Done.");
    System.exit(0);
  }
}
