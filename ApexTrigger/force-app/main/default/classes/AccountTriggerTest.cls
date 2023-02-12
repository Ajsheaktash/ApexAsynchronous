@isTest
public class AccountTriggerTest {
    @isTest
    public static void testAccountTrigger(){
        Account acc=new Account();
        acc.Name='Test Accon';
        acc.AnnualRevenue=200000;
        acc.CustomerPriority__c='Low';
        insert acc;
        
        Account singleacc=[Select Name, Description from Account where id=:acc.id];
       assert.areEqual('Account Priority is : Low', singleacc.Description);
        system.assertEquals('TEST ACCON',singleacc.Name);
        
        acc.Name='Updated Accon';
        acc.AnnualRevenue=3000000;
        acc.CustomerPriority__c='High';
        update acc;
        singleacc=[Select Name, Description, AnnualRevenue from Account where id=:acc.id];
        assert.areEqual('Account Priority is : High', singleacc.Description);
        system.assertEquals('UPDATED ACCON',singleacc.Name); 
        system.assertEquals(3000000,singleacc.AnnualRevenue);
    }

}