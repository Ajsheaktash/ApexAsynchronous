public class OppHandler {
    public static void checkStage(list<Opportunity> triggernew, list<opportunity> triggerold,
                                  Map<id,opportunity> TriggerOldMap,Map<id,opportunity> TriggerNewMap ){
                                      for(Opportunity o:TriggerNew){
                                          if(o.StageName=='Prospecting'&& TriggerOldMap.get(o.id).StageName!='Prospecting'){
                                              o.StageName.addError('You cannot return Prospecting stage again!..');
                                          }
                                      }
                                  }

}