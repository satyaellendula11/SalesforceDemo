trigger AccTrigger on Account (before insert, before update) {
	if(trigger.isBefore)
        {
            AccountClass.updateNextStep(trigger.new, trigger.oldMap);
        }
}