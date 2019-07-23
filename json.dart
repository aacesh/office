


main() {
  PlanningFormModel pfm = PlanningFormModel();
  print(pfm.toString());
  print(pfm.toJson());
}
  
  
  class PlanningFormModel{
    String Company;
    String Department;
    List<String> costElements;
    Map<String, MonthlyPlan> ceToMpMap;
     List<int> amtList;
     MonthlyPlan mPlan = new MonthlyPlan();
    String allCatagory;
    
    PlanningFormModel(){
      this.Company = "N Tech";
      this.Department = "Marketing";
      this.costElements = new List<String>();
    
      this.costElements.add("Transportation");
      this.costElements.add("Marketing");
      this.costElements.add("Human Resources");
      this.costElements.add("Information Technology");
      this.costElements.add("Legal");
    
      //instatiate the map to store monthly plan for each costEleemnts
      ceToMpMap = new Map<String,MonthlyPlan>();
     
     
     


       //mp = mp.getbykey(legal)
     //  mp=mp.amountInMonth

      for(String ce in this.costElements){
        //creaete monthly plan for each cost element 
       
        mPlan.category = ce;
       amtList = new List<int>();
      
        for (int i = 1; i < 13; i++) {
          //assign some amount to each of the 12 months
          amtList.add(i*125);
        }
        mPlan.amountInMonth = amtList;
      
        List hr = new List<int>();
      
        for (int i = 1; i < 13; i++) {
          //assign some amount to each of the 12 months
          hr.add(i*7);
        }
        mPlan.hourInMonth = hr;

        //add monthly plan for the is 
     this.ceToMpMap[ce] = mPlan;
        
        
      }
      //assign month plan
     // this.ceToMpMap = ceToMpM;
      
      

      
    }
    
    
    
    String toString(){
      String planningFormInString = "Company = "+this.Company+"\n"+"DepartMent = "+this.Department+"\n"; 
      
      planningFormInString = planningFormInString+"Monthly Amount Plan\n";
      for(String ce in this.costElements){
        planningFormInString = planningFormInString+ce+" ";
        
        MonthlyPlan mp = this.ceToMpMap[ce];

        for(int amount in mp.amountInMonth){
          planningFormInString = planningFormInString+amount.toString()+"||";
          
        }
        
        planningFormInString = planningFormInString+"\n";
          
      }
      
      planningFormInString = planningFormInString+"Monthly hour Plan\n";
      for(String ce in this.costElements){
        planningFormInString = planningFormInString+ce+" ";
        
        MonthlyPlan mp = this.ceToMpMap[ce];
        

        for(int hour in mp.hourInMonth){
          planningFormInString = planningFormInString+hour.toString()+"||";
          
        }
        planningFormInString = planningFormInString+"\n";

       
      }
      return planningFormInString;
    }
      
    
    
    toJson(){
      
          var pmfToJson = { "company" : "${this.Company}","department":"${this.Department}"};
      
         for(String ce in this.costElements){
         String pmfInString="";
        
        MonthlyPlan mp = this.ceToMpMap[ce];

        for(int amount in mp.amountInMonth){
          pmfInString = pmfInString+amount.toString()+"||";
          
        }
        
        pmfInString = pmfInString+"\n";
        
    
 
}
           var jsonDataString = "{'pmfInString'}";
        var jsonData =json.parse(jsonDataString);
        
       pmfToJson = pmfToJson.concat(jsonData);
  return pmfToJson;
  
  }
  }


  class MonthlyPlan{
    String category;
    List<int> amountInMonth;
    List<int> hourInMonth;
  }
