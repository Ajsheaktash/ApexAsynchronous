public class LeapYear {
    public static String isLeapYear(Integer year){
        String result;
        if(math.mod(year, 4) == 0){
            if(math.mod(year, 100) == 0){
                if(math.mod(year, 400) == 0){
                    result = 'It\'s a leap year';
                }else{
                    result ='It\'s a not leap year';
                }
            }else{
                result ='It\'s a leap year';
            }
        }else{
           result ='It\'s a not leap year';
        }
        return result;
    }
}