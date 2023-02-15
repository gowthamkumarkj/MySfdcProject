trigger AccountAddressTrigger on Account (before insert) {
    if(trigger.isbefore && trigger.isinsert){
        AccountAddressTriggerHandler.beforeinsertrecords(trigger.new);
    }

}