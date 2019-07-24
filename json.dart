
void main() {
  
  PlanningFormModel pfm = PlanningFormModel();
  CostElements ce = new CostElements();
 Transportation t =new Transportation();
  ce.transportation = [t];
  pfm.costElements = [ce];
  print(pfm.toJson());
    
  
}
class PlanningFormModel {
  String company;
  String department;
  List<CostElements> costElements;

  PlanningFormModel({this.company, this.department, this.costElements});

  PlanningFormModel.fromJson(Map<String, dynamic> json) {
    company = json['Company'];
    department = json['Department'];
    if (json['costElements'] != null) {
      costElements = new List<CostElements>();
      json['costElements'].forEach((v) {
        costElements.add(new CostElements.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Company'] = this.company;
    data['Department'] = this.department;
    if (this.costElements != null) {
      data['costElements'] = this.costElements.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class CostElements {
  List<Transportation> transportation;

  CostElements({this.transportation});

  CostElements.fromJson(Map<String, dynamic> json) {
    if (json['Transportation'] != null) {
      transportation = new List<Transportation>();
      json['Transportation'].forEach((v) {
        transportation.add(new Transportation.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.transportation != null) {
      data['Transportation'] =
          this.transportation.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Transportation {
  int amountInMonth;
  int hourInMonth;

  Transportation({this.amountInMonth, this.hourInMonth});

  Transportation.fromJson(Map<String, dynamic> json) {
    amountInMonth = json['amountInMonth'];
    hourInMonth = json['hourInMonth'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['amountInMonth'] = this.amountInMonth;
    data['hourInMonth'] = this.hourInMonth;
    return data;
  }
}
