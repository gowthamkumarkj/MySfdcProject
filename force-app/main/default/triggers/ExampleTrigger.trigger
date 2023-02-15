trigger ExampleTrigger on Contact (after update, after delete) {
    if (Trigger.isupdate) {
        Integer recordCount = Trigger.new.size();
        // Call a utility method from another class
        // AccountId
        //system.debug('Email: ' + trigger.new[0].Email);
        system.debug('Salutation: ' + trigger.new[0].Salutation);
        system.debug('FirstName: ' + trigger.new[0].FirstName);
        system.debug('LastName: ' + trigger.new[0].LastName);
        system.debug('MailingPostalCode: ' + trigger.new[0].MailingPostalCode);
        system.debug('New Email id: ' + trigger.new[0].Email);
        system.debug('Old Email id: ' + trigger.old[0].Email);
        
        if(trigger.Old[0].Email != null && trigger.new[0].Email != trigger.Old[0].Email){    
        
        EmailManager.sendMail(trigger.new[0].Email, 'Trailhead Trigger Tutorial - ' + system.today(), 
                    recordCount + ' contact(s) were inserted. as ' + trigger.new[0].Salutation + ' ' + trigger.new[0].FirstName + ' ' + trigger.new[0].LastName
                              + ' with Mail Address:'  + trigger.new[0].MailingStreet + '\n ' + trigger.new[0].MailingCity 
                              + ' - ' + trigger.new[0].MailingPostalCode + ' \n' + trigger.new[0].MailingState + ' '
                              + trigger.new[0].Mailingcountry
                             
                             // MailingStreet, MailingCity, MailingState, MailingPostalCode, MailingCountry
                             );
        EmailManager.sendMail(trigger.old[0].Email, 'Trailhead Trigger Tutorial - ' + system.today(), 
                    recordCount + ' contact(s) were inserted. as ' + trigger.new[0].Salutation + ' ' + trigger.new[0].FirstName + ' ' + trigger.new[0].LastName
                              + ' with Mail Address:'  + trigger.new[0].MailingStreet + ' ' + trigger.new[0].MailingCity + ' ' + trigger.new[0].MailingPostalCode + ' ' + trigger.new[0].MailingState + ' ' + trigger.new[0].Mailingcountry
                             );
        }
    }
    else if (Trigger.isDelete) {
        // Process after delete
    }
}