public class MyController {
    private final Account account;
    
    public MyController()
    {
        account = [SELECT Id, Name, Site FROM Account 
                   WHERE Id = :ApexPages.currentPage().getParameters().get('id')];
    }
    Public Account getAccount(){
        return account;
    }
    Public PageReference save(){
        update account;
        return null;
    }

}