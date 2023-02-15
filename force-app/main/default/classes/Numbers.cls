public class Numbers{
    
    public integer num{get;set;}
    public static integer num2 {get;set;}
    public integer print(){
        for(num=1;num<=10;num++){
            system.Debug(num);
        }
        return num;
    }
    
    public static void print2(){
        for(num2=11;num2<=20;num2++){
            system.Debug(num2);
        }
    }
}