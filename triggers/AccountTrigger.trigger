trigger AccountTrigger on Account (before insert, before update) {
	if(trigger.isBefore)
    {
        if(trigger.isInsert)
        {
            AccountController.insertOwnership(trigger.new);
        }
        else if(trigger.isUpdate)
        {
            AccountController.UpdateOwnership(trigger.new, trigger.oldMap);
        }
    }
}