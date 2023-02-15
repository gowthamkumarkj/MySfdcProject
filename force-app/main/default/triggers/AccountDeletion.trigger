trigger AccountDeletion on Account (before delete) {
    // Prevent the deletion of accounts if they have related opportunities.
   /* for (Account a : [SELECT Id FROM Account
                     WHERE Id IN (SELECT AccountId FROM Opportunity) AND
                     Id IN :Trigger.old]) {
        Trigger.oldMap.get(a.Id).addError(
            'Cannot delete account with related opportunities.');
    }*/
    
    for (Account a : Trigger.old) {
        AggregateResult[] caseResults = [SELECT count(id) cnt FROM case WHERE AccountId = :a.Id];
        if(caseResults[0].get('cnt') != 0) {
            Trigger.oldMap.get(a.Id).addError('Cannot delete account with related case.');
        } 
        AggregateResult[] oppResults = [SELECT count(id) FROM Opportunity WHERE AccountId = :a.Id];
        if(oppResults[0].get('cnt') != 0) {
            Trigger.oldMap.get(a.Id).addError('Cannot delete account with related opportunities.');
        }  
        
    }
}