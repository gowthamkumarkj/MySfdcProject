public class StringArrayTest {

    public static List<String> generateStringArray(Integer N){
        List<String> TestList = new List<String>();
        //0<30
        for(Integer i=0;i<N;i++){
            TestList.add('Test ' + i);
           system.debug(TestList[i]);
        }
        /*string starval='*';
        for(Integer i=0;i<N;i++){
            for(Integer j=0; j<i; j++) {
               starval = starval + '*';
            }
           TestList.add(starval);
           system.debug(TestList[i]);
           
        }*/
        return TestList;
    }
}