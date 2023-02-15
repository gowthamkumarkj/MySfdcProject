public class PropertyUtility {
    
    Public static void newproperties(){
        List <Property__c> newPropList = new List <Property__c>();
        newPropList = [SELECT Id, Name, Broker__r.Email__c, Days_On_Market__c FROM Property__c Where 
        Days_On_Market__c <=30];
        
        for (Property__c p: newPropList){
            string propEmail = p.Name +':'+ p.Broker__r.Email__c;
            system.debug(propEmail);
        }
    }
}