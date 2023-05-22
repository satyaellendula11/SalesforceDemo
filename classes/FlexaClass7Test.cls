@isTest
private class FlexaClass7Test {
	@isTest(SeeAllData=true)
    private static void FirstTestMethod()
    {
        List<Contact> conList = [SELECT ID, Salutation FROM Contact];
        for(Contact con:conList)
        {
            con.Salutation = 'Mr';
        }
        
        test.startTest();
        Update conList;
        test.stopTest();
    }
}