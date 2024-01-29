class TaskModel {
  String? name;
  String? description;
  String? startDate;
  String? endDate;
  String? type;
  String? taskStatus;
  int? id;
  Null? taskImage;

  TaskModel(
      {this.name,
      this.description,
      this.startDate,
      this.endDate,
      this.type,
      this.taskStatus,
      this.id,
      this.taskImage});

  TaskModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    description = json['description'];
    startDate = json['start_date'];
    endDate = json['end_date'];
    type = json['type'];
    taskStatus = json['task_status'];
    id = json['id'];
    taskImage = json['task_image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['description'] = this.description;
    data['start_date'] = this.startDate;
    data['end_date'] = this.endDate;
    data['type'] = this.type;
    data['task_status'] = this.taskStatus;
    data['id'] = this.id;
    data['task_image'] = this.taskImage;
    return data;
  }
}
