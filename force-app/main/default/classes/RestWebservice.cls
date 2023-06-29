@RestResource(urlMapping='/Account/*')
global with sharing class RestWebservice {
    
    
    @httpGet
    global static Account doGet(){
        RestRequest req = RestContext.request;
        String accountId = req.requestURI.substring(req.requestURI.lastIndexOf('/')+1);
        system.debug('account id1= '+accountId);
        Account result = [SELECT Id, Name, Phone, Website FROM Account WHERE Id = :accountId];
        return result;
    }
    
    @httpDelete
    global static void doDelete(){
        RestRequest req = RestContext.request;
        RestResponse res = RestContext.response;
        String accountId = req.requestURI.substring(req.requestURI.lastIndexOf('/')+1);
        Account account = [Select Id FROM Account WHERE Id =:accountId];
        delete account;
    }
    

    
            
            
            
}