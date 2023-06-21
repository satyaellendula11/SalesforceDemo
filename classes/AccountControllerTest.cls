@isTest
private class AccountControllerTest {
	@testSetup
    private static void createTestData()
    {
        Account acc = New Account();
        acc.Name = 'Test Account';
        acc.Rating = 'Hot';
        acc.Ownership = 'Public';
        acc.External_ID__c = 'TEST-1';
        
        Insert acc;
    }
    
    @isTest
    private static void firstMethod()
    {
        List<Account> accList = [SELECT ID, Rating, OwnerShip FROM Account];
        
        for(Account acc:accList)
        {
            acc.Rating = 'Cold';
        }
        
        Test.startTest();
        Update accList;
        Test.stopTest();
        
        List<Account> checkResult = [SELECT ID, OwnerShip FROM Account WHERE OwnerShip='Private'];
        
        System.assertEquals(checkResult.size(), 1);
    }
}