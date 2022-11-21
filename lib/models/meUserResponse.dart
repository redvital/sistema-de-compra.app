// To parse this JSON data, do
//
//     final userData = userDataFromJson(jsonString);

import 'dart:convert';

MeUser userDataFromJson(String str) => MeUser.fromJson(json.decode(str));

String userDataToJson(MeUser data) => json.encode(data.toJson());

class MeUser {
  MeUser({
    required this.id,
    required this.rol,
    required this.name,
  });

  int id;
  String rol;
  String name;

  factory MeUser.fromJson(Map<String, dynamic> json) => MeUser(
        id: json["id"],
        rol: json["rol"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "rol": rol,
        "name": name,
      };

  MeUser copy() => MeUser(id: this.id, rol: this.rol, name: this.name);
}
