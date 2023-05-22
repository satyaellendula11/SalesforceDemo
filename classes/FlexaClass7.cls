public class FlexaClass7 {
	public static void FirstMethod(List<Contact> conList, Map<Id,Contact> oldMap)
    {
        List<ID> hotRating = New List<ID>();
        for(Contact con:conList)
        {
            if(con.Salutation =='Mr' & con.Salutation != oldMap.get(con.Id).Salutation)
            {
                con.AssistantName = 'Mr Karan';
            }
        }
    }
}