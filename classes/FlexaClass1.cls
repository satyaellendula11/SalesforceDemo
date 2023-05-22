public class FlexaClass1 {
	public static void FirstMethod(List<Account> accList, Map<Id,Account> oldMap)
    {
        List<ID> hotRating = New List<ID>();
        for(Account acc:accList)
        {
            if(acc.Rating=='Hot' & acc.Rating != oldMap.get(acc.Id).Rating)
            {
                acc.Active__c = 'Yes';
            }
        }
        /*
        List<Account> accUpdate = New List<Account>();
        if(hotRating != NULL)
        {
            for(Account ac:[SELECT ID, Active__c FROM Account WHERE ID IN:hotRating])
            {
                ac.Active__c = 'Yes';
                accUpdate.add(ac);
            }
        }
        
        if(accUpdate != NULL)
        {
            Update accUpdate;
        }
		*/
    }
}