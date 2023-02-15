public class AccountUtility {
    
    public static void viewAnnualRevenue () {
        
        List < Account > accountslist = [SELECT NAME,AnnualRevenue FROM Account];
        
        For  (Account act: accountsList) {
            String acctRev =act.Name +':' + act.AnnualRevenue;
            System.debug(acctRev);
            
        }
    }

}