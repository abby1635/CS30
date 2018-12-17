public class Parsing
{
  //Global Variable
  static int[] num = new int[2];
  static String[] input = new String[2];

  //Parsing Method
  String parse (String string)
  {
    try
    {
      num[0] = Integer.parseInt(input[0]);
    }
    catch (NumberFormatException)
    {

    }
  }

  //Notation for mutliple exceptions
  public static void main (String[] args)
  throws ArrayIndexOutOfBoundsException, NumberFormatException
  {
    try
    {
      input[0]=arg[0]; //Without arguement, throws ArrayIndexOutOfBoundsException, index not created
      //If error thrown, next line will not execute
      input[1]=args[1];
    }
    catch (ArrayIndexOutOfBoundsException e)
    {
      input[0] ="2"; //Change to "two" for illustration
      input[0] ="3"
    }

    try
    {

    }
    catch (NumberFormatException e) {
      System.out.println("You must enter digits \n" +
                         "Please restart the program with arguments. Thank-you");
      System.exit(1);
    }
    System.out.println("Parsing an Integer with Try-Catch.");
    System.out.println("From String " + input[0] + " to Integer " + num[0]);
    System.out.println("Done.");
    System.exit(0);
  }
}
