public class RandomContactFactory {
    
    public static List<Contact> generateRandomContacts(Integer num, string lastname){
        list<Contact> conlist = new list<contact>();
        for(Integer i=0; i<num; i++){
            Contact c = new Contact (FirstName ='abcd' +i, LastName ='efgh');
            Conlist.add(c);
        }
        return conlist;
    }

}