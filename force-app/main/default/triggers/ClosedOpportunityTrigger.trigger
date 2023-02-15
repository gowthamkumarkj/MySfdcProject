trigger ClosedOpportunityTrigger on Opportunity (after insert, after update) {
    List<task> tlist = new List<Task>();
    
    for(Opportunity oppo :trigger.new){
        if(Oppo.StageName == 'closed won'){
            tlist.add(new Task(Subject = 'Follow up Test Task',WhatId =oppo.Id));
        }
    }
    
        if(tlist.size()>0){
            insert tlist;
        }
        
}