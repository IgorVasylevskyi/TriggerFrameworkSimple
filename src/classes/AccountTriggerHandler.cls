public with sharing class AccountTriggerHandler  extends TriggerHandler{
    
    public override void beforeInsert() {
        
        for (Account acc : (List<Account>) Trigger.new){
            acc.Description += ' beforeInsert';
        }
    }
    
    public override void beforeUpdate() {
        for (Account acc : (List<Account>) Trigger.new){
            acc.Description += ' beforeUpdate';
        }
    }
}