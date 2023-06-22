trigger OppTrigger on Opportunity (before update) {
	if(trigger.isBefore)
    {
        if(trigger.isUpdate)
        {
            OpportunityController.updateNextStep(trigger.new, trigger.oldMap);
        }
    }
}