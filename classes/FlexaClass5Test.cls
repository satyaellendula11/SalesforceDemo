@isTest
private class FlexaClass5Test {
	@isTest(SeeAllData=true)
    private static void FirstTestMethod()
    {
        List<Account> accList = [SELECT ID, Rating, Active__c FROM Account];
        for(Account acc:accList)
        {
            acc.Rating = 'Warm';
        }
        
        test.startTest();
        Update accList;
        test.stopTest();
    }
}