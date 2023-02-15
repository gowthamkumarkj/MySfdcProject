public class AccountHandler {
    public static void insertAccount (Integer value){
        List<Account> addAccounts =new List<Account>();
        
        Integer N = 1;
        While(N<=value){
            Account acc = new Account();
            acc.Name ='Acme Inc N'+N;
            aCC.AccountNumber ='A000n'+N;
            addAccounts.add(acc);
            system.debug(addAccounts);
            N=N+1;
        }
        Insert addAccounts;        
    } 
}