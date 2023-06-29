trigger CreateContact on Account (after insert) {
    List<contact> lstContact = new List<Contact>();
    for(Account acc : Trigger.new)
    {
        Contact cnt = new Contact(LastName = acc.Name, AccountId = acc.Id, email = 'trigger11@gmail.com');
        system.debug('account created'+acc.Id);
        lstContact.add(cnt);
    }
    insert lstContact;

}