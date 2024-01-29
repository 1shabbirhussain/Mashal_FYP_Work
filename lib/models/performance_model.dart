class PerformanceModel {
  int? id;
  int? taskId;
  int? userId;
  String? taskStatus;
  String? createdAt;
  Null? updatedAt;
  String? comments;
  String? task;
  String? name;

  PerformanceModel(
      {this.id,
      this.taskId,
      this.userId,
      this.taskStatus,
      this.createdAt,
      this.updatedAt,
      this.comments,
      this.task,
      this.name});

  PerformanceModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    taskId = json['task_id'];
    userId = json['user_id'];
    taskStatus = json['task_status'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    comments = json['comments'];
    task = json['task'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['task_id'] = this.taskId;
    data['user_id'] = this.userId;
    data['task_status'] = this.taskStatus;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['comments'] = this.comments;
    data['task'] = this.task;
    data['name'] = this.name;
    return data;
  }
}
