public class ContactAndLeadSearch {
    
    public static List<List< sobject>> SearchContactsAndLeads(String LastName){
        
        List<List< sobject>> ContactLeadList = [Find :lastName IN ALL FIELDS
                                               RETURNING Contact(Name),
                                               Lead(Name)];
        return contactLeadList;
        
    }
    
}