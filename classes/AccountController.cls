public class AccountController {
	public static void UpdateOwnership(List<Account> accList, Map<Id, Account>oldMap)
    {
        for(Account acc:accList)
        {
            if(acc.Rating=='Cold' && acc.Rating != oldMap.get(acc.Id).Rating)
            {
                acc.Ownership = 'Private';
            }
        }
    }
}