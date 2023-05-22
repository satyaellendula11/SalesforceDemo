public class FlexaClass3 {
	public static void FirstMethod(List<Account> accList, Map<Id,Account> oldMap)
    {
        List<ID> hotRating = New List<ID>();
        for(Account acc:accList)
        {
            if(acc.Ownership=='Public' & acc.Ownership != oldMap.get(acc.Id).Rating)
            {
                acc.Site = 'Public';
            }
        }
    }
}