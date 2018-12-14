import java.io.*;


public class BasicTwoNumARGS
{

   public int addNum(int numA, int numB)
   {
      return numA + numB;
   }

   public static void Main(String args[])
   throws IOException; //No Catch here yet
   {
      BasicTwoNumARGS obj = new BasicTwoNumARGS();
      int sum = obj.addNum(10, 20);

      System.out.println("Sum of 10 and 20 is :" + sum);
   }
}
