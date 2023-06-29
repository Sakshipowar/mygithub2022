public with sharing class Accountlstlwc {
    @AuraEnabled(cacheable=true)
    public static List<Account> queryAccounsByEmployeeNumber(Integer numberOfEmployees) {
        return[
            SELECT Name
            FROM Account 
            WHERE NumberOfEmployees >= :numberOfEmployees
        ];

    }
}