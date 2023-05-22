trigger ContactTrigger on Contact (before update) {
	if(trigger.isBefore)
    {
        if(trigger.isUpdate)
        {
            FlexaClass7.FirstMethod(trigger.new, trigger.oldMap);
        }
    }
}