trigger AccountTrigger on Account (before update) {
	if(trigger.isBefore)
    {
        if(trigger.isUpdate)
        {
            FlexaClass1.FirstMethod(trigger.new, trigger.oldMap);
        }
    }
}