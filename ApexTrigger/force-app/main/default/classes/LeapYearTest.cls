@isTest
public class LeapYearTest {
   @isTest
    public static void test1(){
       string actual=LeapYear.isLeapYear(1900);
        assert.areEqual('It\'s a not leap year', actual);
    }
    @isTest
    public static void test2(){
       string actual=LeapYear.isLeapYear(2000);
        assert.areEqual('It\'s a leap year', actual);
    }
    @isTest
    public static void test3(){
       string actual=LeapYear.isLeapYear(2001);
        assert.areEqual('It\'s a not leap year', actual);
    }
     @isTest
    public static void test4(){
       string actual=LeapYear.isLeapYear(2012);
        assert.areEqual('It\'s a leap year', actual);
    }
    
}
/*@istest
public class LeapYearTest {
	@istest
    public static void isLeapYearTest(){
        
        //Class'ımızın Code Coverage 100% vermesi için if statementlardaki tüm durumları test etmemiz gerekir. 
        
        //4'e, 100'e ve 400'e bölünebilen bir sayıyı test: 2000
        String result = LeapYear.isLeapYear(2000);
        assert.areEqual('It\'s a leap year', result);
        
        //4'e ve 100'e bölünüp; 400 e bölünmeyen bir sayıyı test: 1900
        result = LeapYear.isLeapYear(1900);
        assert.areEqual('It\'s a not leap year', result); 
        
        //4'e bölünmeyen bir sayıyı test: 2001
        result = LeapYear.isLeapYear(2001);
        assert.areEqual('It\'s a not leap year', result);
        
        //4'e bölünüp, 100'e bölünmeyen bir sayıyı test: 2012
        result = LeapYear.isLeapYear(2012);
        assert.areEqual('It\'s a leap year', result); 
    }
}*/