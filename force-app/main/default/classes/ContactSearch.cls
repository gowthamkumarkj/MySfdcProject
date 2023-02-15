public class ContactSearch {

    public static List<Contact> searchForContacts(String lastName,String postalcode){
        List<Contact> Contacts = [Select ID, Name
                                  from Contact 
                                  Where LastName=:lastName and MailingPostalCode=:Postalcode];
        return Contacts;
    }
}