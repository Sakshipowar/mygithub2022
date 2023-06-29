@RestResource(urlMapping='/Account1/*')
global with sharing class DoPost {
    @httpGet
    global static Account doGet1(){
        RestRequest req = RestContext.request;
        String accountId = req.requestURI.substring(req.requestURI.lastIndexOf('/')+1);
        system.debug('account id1= '+accountId);
        Account result = [SELECT Id, Name, Phone, Website FROM Account WHERE Id = :accountId];
        return result;
    }
    
    @httpPost
    global static String doPost1(string name, string phone, string website){
        Account account = new Account();
        account.Name = name;
        account.phone = phone;
        account.website = website;
        insert account;
        return account.Id;
    }
    
    @httpPut
    global static string doPut(string name, string phone, string website){
        RestRequest req = RestContext.request;
        string accountId = req.requestURI.substring(req.requestURI.lastIndexOf('/')+1);
        Account account = new Account(Id=accountId);
        account.Name = name;
        account.Phone = phone;
        account.Website = website;
        update account;
        return account.Id;
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
}