@isTest
public class AccountCreaterTest {
    @isTest
    public static void testCreateAcc(){
        
        string accName='test AccountCreate';
        integer accAnnualRevenue=200000;
        AccountCreater.createAcc(accName, accAnnualRevenue);
        
        Account createdAccount=[Select Name, AnnualRevenue From Account where name=:accName limit 1];
        system.assertEquals('TEST ACCOUNTCREATE', createdAccount.Name);
        assert.areEqual(200000,createdAccount.AnnualRevenue);
        
    }
    
    @testSetup
    public static void setup(){
        Account acc=new Account();
        acc.Name='Test Account';
        acc.AnnualRevenue=2000000;
        insert acc;
    }
    
    @isTest
    public static void testAccPriority(){
        Account acc=[select name, AnnualRevenue, CustomerPriority__c from Account where name=:'Test Account' limit 1];
        string priority=AccountCreater.accPriority(acc.Name);
        assert.areEqual('High', priority);
        
        
        acc.AnnualRevenue=750000;
        update acc;
        priority=AccountCreater.accPriority(acc.Name);
        system.assertEquals('Medium', priority);
        
        acc.AnnualRevenue=400000;
        update acc;
        priority=AccountCreater.accPriority(acc.Name);
        system.assertEquals('Low', priority);
        
        
    }
    

        }