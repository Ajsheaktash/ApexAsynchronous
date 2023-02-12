public class CalculateOpportunity {
    public String accid {get;set;}
    public List<Opportunity> multiopp {get;set;}
    
    public Decimal totalamount=0;
    // get method
    public Decimal gettotalamount() {
        
      for(Opportunity singleOpp:multiopp){
        totalamount+=singleOpp.Amount;
      }
        
        return totalamount;
    }
    
    
    // constructor method
    public CalculateOpportunity(ApexPages.StandardController controller) {
        accid = ApexPages.currentPage().getParameters().get('id');
        
        
        multiopp = New List<Opportunity>();
        
        system.debug('Constructor is working....');
        
        multiopp = [SELECT Id, Name, Amount, CloseDate,StageName FROM Opportunity WHERE accountid=:accid];
        
        
        
    }
}