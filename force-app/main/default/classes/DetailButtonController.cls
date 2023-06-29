public with sharing class DetailButtonController {
    private ApexPages.StandardController standardController;
    public string greeting{get;set;}
    public DetailButtonController(ApexPages.StandardController standardController)
    {
        this.standardController = standardController;
    }
    public PageReference doSomething()
    {
        Id recordId = standardController.getId();
        contact record = (contact) standardController.getRecord();
        greeting = 'Hello' + record.Id +' '+ recordId;
        return null;
    }

}