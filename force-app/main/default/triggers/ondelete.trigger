trigger ondelete on Account (before insert) {
    
    for(Account a : [SELECT Id FROM Account
                    WHERE Id IN(SELECT AccountId FROM Contact) AND
                     Id IN : Trigger.old]){
                         Trigger.oldMap.get(a.Id).addError(
                         'Cannot delete account with related contacts.');
                     }

}