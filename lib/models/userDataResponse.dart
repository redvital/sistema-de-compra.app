// To parse this JSON data, do
//
//     final userData = userDataFromJson(jsonString);

import 'dart:convert';

UserData userDataFromJson(String str) => UserData.fromJson(json.decode(str));

String userDataToJson(UserData data) => json.encode(data.toJson());

class UserData {
  UserData({
    required this.id,
    required this.rol,
    required this.name,
    required this.email,
    this.emailVerifiedAt,
    this.deletedAt,
    this.deviceKey,
    required this.isPresidente,
    required this.createdAt,
  });

  int id;
  String rol;
  String name;
  String email;
  dynamic emailVerifiedAt;
  dynamic deletedAt;
  dynamic deviceKey;
  bool isPresidente;
  DateTime createdAt;

  factory UserData.fromJson(Map<String, dynamic> json) => UserData(
        id: json["id"],
        rol: json["rol"],
        name: json["name"],
        email: json["email"],
        emailVerifiedAt: json["email_verified_at"],
        deletedAt: json["deleted_at"],
        deviceKey: json["device_key"],
        isPresidente: json["isPresidente"],
        createdAt: DateTime.parse(json["created_at"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "rol": rol,
        "name": name,
        "email": email,
        "email_verified_at": emailVerifiedAt,
        "deleted_at": deletedAt,
        "device_key": deviceKey,
        "isPresidente": isPresidente,
        "created_at": createdAt.toIso8601String(),
      };

  UserData copy() => UserData(
      id: this.id,
      rol: this.rol,
      name: this.name,
      email: this.email,
      emailVerifiedAt: this.emailVerifiedAt,
      deletedAt: this.deletedAt,
      deviceKey: this.deviceKey,
      isPresidente: this.isPresidente,
      createdAt: this.createdAt);
}
