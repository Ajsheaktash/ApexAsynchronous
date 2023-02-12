public class ContactBatchApex 
                              implements Database.Batchable<sObject> {
    
    public Database.QueryLocator start(Database.BatchableContext BC){
        return Database.getQueryLocator('Select id,FirstName,Account.Description,Account.Name,Title From Contact where AccountId!=null');
    }
    public void execute(Database.BatchableContext BC, list<Contact> conlist){
        for(Contact con:conlist){
           con.Description= con.Title +' of '+con.Account.Name+ ' : '+con.Account.Description;
        }
       try{
          update conlist;  
        }catch(Exception e){
            system.debug(e.getMessage());
        } 
    }
    public void finish(Database.BatchableContext BC){
        
    }
}