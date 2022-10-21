// To parse this JSON data, do
//
//     final usuariosListResponse = usuariosListResponseFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

UsuariosListResponse usuariosListResponseFromJson(String str) =>
    UsuariosListResponse.fromJson(json.decode(str));

String usuariosListResponseToJson(UsuariosListResponse data) =>
    json.encode(data.toJson());

class UsuariosListResponse {
  UsuariosListResponse({
    required this.data,
  });

  final List<Datum> data;

  factory UsuariosListResponse.fromJson(Map<String, dynamic> json) =>
      UsuariosListResponse(
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
      };
}

class Datum {
  Datum({
    required this.id,
    required this.rol,
    required this.name,
    required this.email,
    required this.emailVerifiedAt,
    required this.deletedAt,
    required this.deviceKey,
    required this.isPresidente,
    required this.createdAt,
    required this.updatedAt,
  });

  final int id;
  final String rol;
  final String name;
  final String email;
  final dynamic emailVerifiedAt;
  final dynamic deletedAt;
  final dynamic deviceKey;
  final bool isPresidente;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["id"],
        rol: json["rol"],
        name: json["name"],
        email: json["email"],
        emailVerifiedAt: json["email_verified_at"],
        deletedAt: json["deleted_at"],
        deviceKey: json["device_key"],
        isPresidente: json["isPresidente"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
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
        "created_at": createdAt!.toIso8601String(),
        "updated_at": updatedAt == null ? null : updatedAt?.toIso8601String(),
      };
}
