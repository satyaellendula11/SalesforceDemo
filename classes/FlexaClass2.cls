public class FlexaClass2 {
	public static void FirstMethod(List<Account> accList, Map<Id,Account> oldMap)
    {
        List<ID> hotRating = New List<ID>();
        for(Account acc:accList)
        {
            if(acc.Rating=='Hot' & acc.Rating != oldMap.get(acc.Id).Rating)
            {
                acc.TickerSymbol = 'Trending';
            }
        }
    }
}