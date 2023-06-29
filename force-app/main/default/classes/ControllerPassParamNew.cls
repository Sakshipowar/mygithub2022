public with sharing class ControllerPassParamNew {
    public Account account {get;set;}
    
    public ControllerPassParamNew(){
        if(account == null)
            account = [select name from Account where id ='0012w00001SIHFbAAP'];
    }
    public PageReference save() {
        update account;
        PageReference secondPage = Page.mySecondPage;
        secondPage.setRedirect(true);
        secondPage.getParameters().put('id',account.id);
        
        return secondPage;
    }
    public PageReference GoToNewPage(){
        PageReference secondPage = Page.mySecondPage;
        secondPage.setRedirect(true);
        secondPage.getParameters().put('id',account.id);
        
        return secondPage;
    }
        
   

}