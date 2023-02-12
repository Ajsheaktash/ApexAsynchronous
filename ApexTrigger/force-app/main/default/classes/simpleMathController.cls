public class simpleMathController {

    public Double x {get;set;}
    public Double y {get;set;}
    public Double result {get;set;}
 
    
    //constructor
    public simpleMathController(){
        System.debug('Constructor   ....');
        
    }
    
    public void sum(){
        result=x+y;
        system.debug('result : '+result);
       
    }
    
    public void sub(){
        result=x-y;
         system.debug('result : '+result);
       
    }
    
    public void mul(){
        result=x*y;
         system.debug('result : '+result);
      
    }
    
    public void div(){
        result=x/y;
         system.debug('result : '+result);
            
    }
    
    
}