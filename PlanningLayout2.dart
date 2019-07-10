

class PlanningForm {
  String _company;
  String _department;
  String _datetime;

  PlanningForm(this._company, this._department, this._datetime);
  set companyName(String value) {
    this._company = value;
  }

  String get companyName {
    return _company;
  }

  set departmentTitle(String value) {
    this._department = value;
  }

  String get departmeentTitle {
    return _department;
  }

  set date(String value) {
    this._datetime = value;
  }

  String get date {
    return _datetime;
  }
}