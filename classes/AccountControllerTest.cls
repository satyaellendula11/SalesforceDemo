@isTest
private class AccountControllerTest 
{
    @isTest(SeeAllData=true)
    private static void firstMethod()
    {
        List<Account> accList = [SELECT ID, Rating, OwnerShip FROM Account WHERE Rating!='Cold'];
        
        for(Account acc:accList)
        {
            acc.Rating = 'Cold';
        }
        
        Test.startTest();
        Update accList;
        Test.stopTest();
        
        List<Account> checkResult = [SELECT ID, OwnerShip FROM Account WHERE OwnerShip='Private'];
        
        System.assertEquals(checkResult.size(), accList.size());
    }
    
    @isTest
    private static void secondMethod()
    {
        List<Account> accList = new List<Account>();
        
        Account acc = new Account();
        acc.Name = 'Test Account';
        acc.Rating = 'Cold';
        acc.External_ID__c = 'TEST-1';
        
        accList.add(acc);

        Test.startTest();
        Insert accList;
        Test.stopTest();
        
        List<Account> checkResult = [SELECT ID, OwnerShip FROM Account WHERE OwnerShip='Private'];
        
        System.assertEquals(checkResult.size(), accList.size());
    }
	
}