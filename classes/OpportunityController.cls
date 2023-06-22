public class OpportunityController {
	public static void updateNextStep(List<Opportunity> oppList, Map<Id, Opportunity> oldMap)
    {
        for(Opportunity opp:oppList)
        {
            if(opp.IsPrivate = true && opp.IsPrivate != oldMap.get(opp.Id).IsPrivate)
            {
                opp.NextStep = 'Private';
            }
        }
    }
}