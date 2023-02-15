@istest
public class TestRestrictContactByName {
    @istest
    public static void testcontact(){
        contact c = new contact();
        c.LastName = 'INVALIDNAME';
        
        Test.startTest();
        Database.SaveResult result = Database.insert(c,false);
        Test.stopTest();
        system.debug(result);
        
        system.assert(!result.issuccess());
        system.assert(result.getErrors().size()>0);
        system.assertEquals('The Last Name INVALIDNAME is not allowed for DML',result.getErrors()[0].getMessage());
   }
}