class ResourceModel {
  int? id;
  String? type;
  String? applyDate;
  int? empId;
  String? item;
  String? building;
  String? floor;
  String? room;
  String? description;
  String? approval;
  String? name;

  ResourceModel(
      {this.id,
      this.type,
      this.applyDate,
      this.empId,
      this.item,
      this.building,
      this.floor,
      this.room,
      this.description,
      this.approval,
      this.name});

  ResourceModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    type = json['type'];
    applyDate = json['apply_date'];
    empId = json['emp_id'];
    item = json['item'];
    building = json['building'];
    floor = json['floor'];
    room = json['room'];
    description = json['description'];
    approval = json['approval'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['type'] = this.type;
    data['apply_date'] = this.applyDate;
    data['emp_id'] = this.empId;
    data['item'] = this.item;
    data['building'] = this.building;
    data['floor'] = this.floor;
    data['room'] = this.room;
    data['description'] = this.description;
    data['approval'] = this.approval;
    data['name'] = this.name;
    return data;
  }
}
