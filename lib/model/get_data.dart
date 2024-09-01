class UserInfoModel {

  String? name;
  String? id;
  String? courseName;
  String? institute;
  String? department;
  String? joinDate;
  String? validity;

  UserInfoModel(
      {this.name,
      this.id,
      this.courseName,
      this.institute,
      this.department,
      this.joinDate,
      this.validity});

  UserInfoModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    id = json['id'];
    courseName = json['courseName'];
    institute = json['institute'];
    department = json['department'];
    joinDate = json['joinDate'];
    validity = json['validity'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['id'] = id;
    data['courseName'] = courseName;
    data['institute'] = institute;
    data['department'] = department;
    data['joinDate'] = joinDate;
    data['validity'] = validity;
    return data;
  }
}
