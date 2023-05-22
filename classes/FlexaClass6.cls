public class FlexaClass6 {
	public static void FirstMethod(List<Account> accList, Map<Id,Account> oldMap)
    {
        List<ID> hotRating = New List<ID>();
        for(Account acc:accList)
        {
            if(acc.Ownership=='Other' & acc.Ownership != oldMap.get(acc.Id).Rating)
            {
                acc.Site = 'Other';
            }
        }
    }
}