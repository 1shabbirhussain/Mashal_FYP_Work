class LeaveModel {
  String? title;
  int? id;
  String? reason;
  String? applyDate;
  String? startDate;
  String? endDate;
  String? type;
  String? description;
  String? status;
  String? name;

  LeaveModel(
      {this.title,
      this.id,
      this.reason,
      this.applyDate,
      this.startDate,
      this.endDate,
      this.type,
      this.description,
      this.status,
      this.name});

  LeaveModel.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    id = json['id'];
    reason = json['reason'];
    applyDate = json['apply_date'];
    startDate = json['start_date'];
    endDate = json['end_date'];
    type = json['type'];
    description = json['description'];
    status = json['status'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['id'] = this.id;
    data['reason'] = this.reason;
    data['apply_date'] = this.applyDate;
    data['start_date'] = this.startDate;
    data['end_date'] = this.endDate;
    data['type'] = this.type;
    data['description'] = this.description;
    data['status'] = this.status;
    data['name'] = this.name;
    return data;
  }
}
