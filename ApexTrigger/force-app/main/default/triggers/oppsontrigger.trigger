trigger oppsontrigger on Opportunity (before update) {
    if(trigger.isBefore&& trigger.isUpdate){
        OppHandler.checkStage(trigger.new, trigger.Old, Trigger.OldMap, Trigger.NewMap);
    }

}