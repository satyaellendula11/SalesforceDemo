trigger AccountTrigger on Account (before update) {
	if(trigger.isBefore)
    {
        if(trigger.isUpdate)
        {
            FlexaClass1.FirstMethod(trigger.new, trigger.oldMap);
            FlexaClass2.FirstMethod(trigger.new, trigger.oldMap);
            FlexaClass3.FirstMethod(trigger.new, trigger.oldMap);
            FlexaClass4.FirstMethod(trigger.new, trigger.oldMap);
            FlexaClass5.FirstMethod(trigger.new, trigger.oldMap);
        }
    }
}