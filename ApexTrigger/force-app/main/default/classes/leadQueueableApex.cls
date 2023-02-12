public class leadQueueableApex implements Queueable {
    public void execute(QueueableContext QC){
        list<lead> listlead=[Select id, Name ,LeadSource From Lead];
        for(lead le:listlead){
            
            le.LeadSource='Web';
        }
        try{
          update listlead;  
        }catch(Exception e){
            system.debug(e.getMessage());
        }
    }

}