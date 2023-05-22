@isTest
private class FlexaClass3Test {
	@isTest(SeeAllData=true)
    private static void FirstTestMethod()
    {
        List<Account> accList = [SELECT ID, Ownership FROM Account];
        for(Account acc:accList)
        {
            acc.Ownership = 'Public';
        }
        
        test.startTest();
        Update accList;
        test.stopTest();
    }
}