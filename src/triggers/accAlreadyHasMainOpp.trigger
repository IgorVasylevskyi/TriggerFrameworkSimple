trigger accAlreadyHasMainOpp on Opportunity (before insert, before update) {
    new MainOppTriggerHandler().run();
    /*List<Id> accsIds = new List<Id>();
    
    for (Opportunity opp : Trigger.new){
        accsIds.add(opp.AccountId);
    }
    
    Map<Id, Account> accMap = new Map<Id, Account>([SELECT Id, Name, Main_Opps__c FROM Account WHERE Id IN :accsIds]);
    
    if(Trigger.isUpdate) {
        for (Opportunity opp : Trigger.new) {
            Account parentAcc = accMap.get(opp.AccountId);
            Opportunity oldOpp = Trigger.oldMap.get(opp.Id);
            if ((opp.isMain__c == true)
                    && (oldOpp.isMain__c != true)
                    && (parentAcc.Main_Opps__c == 1)) {
                
                opp.addError('Parent Account already has main Opportunity');
            }
        }
    }
    
    if(Trigger.isInsert){
        for (Opportunity opp : Trigger.new){
            Account parentAcc = accMap.get(opp.AccountId);
            if(opp.isMain__c && parentAcc.Main_Opps__c == 1){
                opp.addError('Parent Account already has Main Opportunity');
            }
        }
    }*/
}