class LoginModel {
  Result? result;
  String? message;
  int? status;

  LoginModel({this.result, this.message, this.status});

  LoginModel.fromJson(Map<String, dynamic> json) {
    result =
    json['result'] != null ? new Result.fromJson(json['result']) : null;
    message = json['message'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.result != null) {
      data['result'] = this.result!.toJson();
    }
    data['message'] = this.message;
    data['status'] = this.status;
    return data;
  }
}

class Result {
  int? id;
  String? userName;
  String? lastName;
  String? email;
  String? phoneNumber;
  String? password;
  String? accessToken;
  bool? dataExist;
  bool? objectData;
  String? profileImg;

  Result(
      {this.id,
        this.userName,
        this.lastName,
        this.email,
        this.phoneNumber,
        this.password,
        this.accessToken,
        this.dataExist,
        this.objectData,
        this.profileImg});

  Result.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userName = json['userName'];
    lastName = json['lastName'];
    email = json['email'];
    phoneNumber = json['phoneNumber'];
    password = json['password'];
    accessToken = json['accessToken'];
    dataExist = json['dataExist'];
    objectData = json['objectData'];
    profileImg = json['profileImg'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['userName'] = this.userName;
    data['lastName'] = this.lastName;
    data['email'] = this.email;
    data['phoneNumber'] = this.phoneNumber;
    data['password'] = this.password;
    data['accessToken'] = this.accessToken;
    data['dataExist'] = this.dataExist;
    data['objectData'] = this.objectData;
    data['profileImg'] = this.profileImg;
    return data;
  }
}
