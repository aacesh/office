void main() {
  var pf = PlanningForm();
  pf.companyName = "new";
  print(pf.companyName);
  pf.departmentName = "it";
  print(pf.departmentName);
  
}

class PlanningForm {
		String company;
		String department;
		int datetime;
  
    set companyName(String value) =>company= value;
    String get companyName{
    return company;}
    
    set departmentName(String value) =>department= value;
    String get departmentName{
    return department;}
  
    
//     set dateAdded(int value) =>datetime= value;
//     int get dateAdded{
//     return datetime;}
  
}