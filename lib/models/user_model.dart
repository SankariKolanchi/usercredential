class UserModel {
  final String? id;
  final String? userName;
  final String? userEmail;
  final String? userPhone;

  UserModel({this.id, this.userName, this.userEmail, this.userPhone});

  factory UserModel.fromJson(Map json) {
    return UserModel(
        id: json['id'],
        userName: json['user_name'],
        userEmail: json['user_email'],
        userPhone: json['phone']);
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'user_name': userName,
      'user_email': userEmail,
      'phone': userPhone
    };
  }
}
