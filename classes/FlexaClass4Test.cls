@isTest
private class FlexaClass4Test {
	@isTest(SeeAllData=true)
    private static void FirstTestMethod()
    {
        List<Account> accList = [SELECT ID, Ownership FROM Account];
        for(Account acc:accList)
        {
            acc.Ownership = 'Private';
        }
        
        test.startTest();
        Update accList;
        test.stopTest();
    }
}