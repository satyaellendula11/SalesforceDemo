@isTest
private class FlexaClass6Test {
	@isTest(SeeAllData=true)
    private static void FirstTestMethod()
    {
        List<Account> accList = [SELECT ID, Ownership FROM Account];
        for(Account acc:accList)
        {
            acc.Ownership = 'Other';
        }
        
        test.startTest();
        Update accList;
        test.stopTest();
    }
}