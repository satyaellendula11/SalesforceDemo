public class FlexaClass5 {
	public static void FirstMethod(List<Account> accList, Map<Id,Account> oldMap)
    {
        List<ID> hotRating = New List<ID>();
        for(Account acc:accList)
        {
            if(acc.Rating=='Warm' & acc.Rating != oldMap.get(acc.Id).Rating)
            {
                acc.Active__c = 'No';
            }
        }
    }
}