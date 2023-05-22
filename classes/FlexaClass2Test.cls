@isTest
private class FlexaClass2Test {
	@isTest(SeeAllData=true)
    private static void FirstTestMethod()
    {
        List<Account> accList = [SELECT ID, Rating, Active__c FROM Account];
        for(Account acc:accList)
        {
            acc.Rating = 'Hot';
        }
        
        test.startTest();
        Update accList;
        test.stopTest();
    }
}