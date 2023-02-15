@isTest
public class TestVerifyDate 
{
   static testMethod void testMethod1()
   {
       Date d =verifyDate.checkdates(System.today(),System.today()+1);
       Date d1 =verifyDate.checkdates(System.today(),System.today()+60);
   }
}