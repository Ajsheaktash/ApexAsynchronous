public class Accountfuture {
    @future
    public static void updateAcc(){
        list<Account> acclist=[Select id,Name, Description From Account ];
        for(Account ac:acclist){
            ac.Name=ac.Name.toUpperCase();
            ac.Description=ac.Name+' Company';
        }
        try{
          update acclist;  
        }catch(Exception e){
            system.debug(e.getMessage());
        }
        
            }

}