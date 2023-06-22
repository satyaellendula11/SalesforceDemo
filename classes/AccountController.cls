//Account Object Controller Class
public class AccountController {
    /**
 	 	@description - If account rating changed to Cold, ownership will set to Private
 	*/
	public static void updateOwnership(List<Account> accList, Map<Id, Account>oldMap)
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