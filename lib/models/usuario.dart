// To parse this JSON data, do
//
//     final usuariosResponse = usuariosResponseFromJson(jsonString);

import 'dart:convert';

UsuariosResponse usuariosResponseFromJson(String str) =>
    UsuariosResponse.fromJson(json.decode(str));

String usuariosResponseToJson(UsuariosResponse data) =>
    json.encode(data.toJson());

class UsuariosResponse {
  UsuariosResponse({
    required this.id,
    required this.rol,
    required this.name,
    required this.email,
    required this.isPresidente,
    required this.createdAt,
  });

  int id;
  String rol;
  String name;
  String email;
  bool isPresidente;
  DateTime createdAt;

  factory UsuariosResponse.fromJson(Map<String, dynamic> json) =>
      UsuariosResponse(
        id: json["id"],
        rol: json["rol"],
        name: json["name"],
        email: json["email"],
        isPresidente: json["isPresidente"],
        createdAt: DateTime.parse(json["created_at"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "rol": rol,
        "name": name,
        "email": email,
        "isPresidente": isPresidente,
        "created_at": createdAt.toIso8601String(),
      };
}
