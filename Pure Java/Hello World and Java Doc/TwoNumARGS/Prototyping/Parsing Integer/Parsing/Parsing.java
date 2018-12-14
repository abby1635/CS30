public class Parsing
{
  //Global Variable
  static int[] num = new int[2];
  static String[] input = new String[2];

  //Notation for mutliple exceptions
  public static void main (String[] args)
  throws ArrayIndexOutOfBoundsException, NumberFormatException
  {
    try
    {
      args[0]="2"; //Without arguement, throws ArrayIndexOutOfBoundsException
    }
    catch (ArrayIndexOutOfBoundsException e)
    {
      input[0] ="2"; //Change to "two" for illustration
    }

    try
    {
      num[0] = Integer.parseInt(input[0]);
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
