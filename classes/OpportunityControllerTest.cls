@isTest
private class OpportunityControllerTest {
	
    @isTest(SeeAllData=true)
    private static void firstMethod()
    {
        List<Opportunity> oppList = [SELECT ID, IsPrivate, NextStep FROM Opportunity LIMIT 1];
        
        for(Opportunity opp:oppList)
        {
            opp.IsPrivate = true;
        }
        
        Test.startTest();
        Update oppList;
        Test.stopTest();
        
        List<Opportunity> checkResult = [SELECT ID, NextStep FROM Opportunity WHERE NextStep='Private'];
        
        //System.assertEquals(1, checkResult.size());
    }
}