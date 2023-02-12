public class ScheduledApexbatch implements Schedulable{
    public void execute(SchedulableContext SQ){
        ContactBatchApex updatecont=new ContactBatchApex();
        Database.executeBatch(updatecont);
    }

}