trigger AccountTrigger on Account (before insert, before update) {
	if(trigger.isBefore)
    {
        if(trigger.isInsert)
        {
            AccountController.updateOwnership(trigger.new, trigger.oldMap);
        }
        else if(trigger.isUpdate)
        {
            AccountController.UpdateOwnership(trigger.new, trigger.oldMap);
        }
    }
}