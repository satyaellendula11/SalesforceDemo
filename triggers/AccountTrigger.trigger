trigger AccountTrigger on Account (before insert, before update) {
	if(trigger.isInsert || trigger.isUpdate)
    {
        if(trigger.isBefore)
        {
            AccountController.UpdateOwnership(trigger.new, trigger.oldMap);
        }
    }
}