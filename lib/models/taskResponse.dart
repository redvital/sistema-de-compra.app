// To parse this JSON data, do
//
//     final task = taskFromMap(jsonString);

import 'dart:convert';

Task taskFromMap(String str) => Task.fromMap(json.decode(str));

String taskToMap(Task data) => json.encode(data.toMap());

class Task {
  Task({
    required this.data,
  });

  List<Datum> data;

  factory Task.fromMap(Map<String, dynamic> json) => Task(
        data: List<Datum>.from(json["data"].map((x) => Datum.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "data": List<dynamic>.from(data.map((x) => x.toMap())),
      };
}

class Datum {
  Datum({
    required this.id,
    required this.userId,
    required this.usuario,
    required this.nombre,
    required this.descripcion,
    required this.fechaFin,
    required this.createdAt,
    required this.completada,
    required this.tieneNegociacion,
    this.comparaciones,
    required this.archivoComparacionCreadoEn,
    required this.comparacionEditadasEn,
    required this.exportandoComparacion,
    required this.archivoComparacion,
    required this.cantidadProveedores,
  });

  int id;
  int userId;
  Usuario usuario;
  String nombre;
  String descripcion;
  DateTime fechaFin;
  DateTime createdAt;
  bool completada;
  bool tieneNegociacion;
  List<Comparacione>? comparaciones;
  DateTime? archivoComparacionCreadoEn;
  DateTime? comparacionEditadasEn;
  dynamic exportandoComparacion;
  String archivoComparacion;
  int cantidadProveedores;

  factory Datum.fromMap(Map<String, dynamic> json) => Datum(
        id: json["id"],
        userId: json["user_id"],
        usuario: Usuario.fromMap(json["usuario"]),
        nombre: json["nombre"],
        descripcion: json["descripcion"],
        fechaFin: DateTime.parse(json["fecha_fin"]),
        createdAt: DateTime.parse(json["created_at"]),
        completada: json["completada"],
        tieneNegociacion: json["tiene_negociacion"],
        comparaciones: List<Comparacione>.from(
            json["comparaciones"].map((x) => Comparacione.fromMap(x))),
        archivoComparacionCreadoEn:
            json["archivo_comparacion_creado_en"] == null
                ? null
                : DateTime.parse(json["archivo_comparacion_creado_en"]),
        comparacionEditadasEn: json["comparacion_editadas_en"] == null
            ? null
            : DateTime.parse(json["comparacion_editadas_en"]),
        exportandoComparacion: json["exportando_comparacion"],
        archivoComparacion: json["archivo_comparacion"] == null
            ? null
            : json["archivo_comparacion"],
        cantidadProveedores: json["cantidad_proveedores"],
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "user_id": userId,
        "usuario": usuario.toMap(),
        "nombre": nombre,
        "descripcion": descripcion,
        "fecha_fin":
            "${fechaFin.year.toString().padLeft(4, '0')}-${fechaFin.month.toString().padLeft(2, '0')}-${fechaFin.day.toString().padLeft(2, '0')}",
        "created_at": createdAt.toIso8601String(),
        "completada": completada,
        "tiene_negociacion": tieneNegociacion,
        "comparaciones":
            List<dynamic>.from(comparaciones!.map((x) => x.toMap())),
        "archivo_comparacion_creado_en": archivoComparacionCreadoEn == null
            ? null
            : archivoComparacionCreadoEn.toString(),
        "comparacion_editadas_en": comparacionEditadasEn == null
            ? null
            : comparacionEditadasEn.toString(),
        "exportando_comparacion": exportandoComparacion,
        "archivo_comparacion":
            archivoComparacion == null ? null : archivoComparacion,
        "cantidad_proveedores": cantidadProveedores,
      };
}

class Comparacione {
  Comparacione({
    required this.id,
    required this.nombre,
    required this.tareaId,
    required this.createdAt,
    required this.updatedAt,
  });

  int id;
  String nombre;
  int tareaId;
  DateTime createdAt;
  DateTime updatedAt;

  factory Comparacione.fromMap(Map<String, dynamic> json) => Comparacione(
        id: json["id"],
        nombre: json["nombre"],
        tareaId: json["tarea_id"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "nombre": nombre,
        "tarea_id": tareaId,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
      };
}

class Usuario {
  Usuario({
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

  int id;
  Rol? rol;
  String name;
  String email;
  dynamic emailVerifiedAt;
  dynamic deletedAt;
  dynamic deviceKey;
  bool isPresidente;
  DateTime createdAt;
  DateTime updatedAt;

  factory Usuario.fromMap(Map<String, dynamic> json) => Usuario(
        id: json["id"],
        rol: rolValues.map[json["rol"]],
        name: json["name"],
        email: json["email"],
        emailVerifiedAt: json["email_verified_at"],
        deletedAt: json["deleted_at"],
        deviceKey: json["device_key"],
        isPresidente: json["isPresidente"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "rol": rolValues.reverse[rol],
        "name": name,
        "email": email,
        "email_verified_at": emailVerifiedAt,
        "deleted_at": deletedAt,
        "device_key": deviceKey,
        "isPresidente": isPresidente,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
      };
}

enum Rol { COMPRADOR, COORDINADOR }

final rolValues =
    EnumValues({"comprador": Rol.COMPRADOR, "coordinador": Rol.COORDINADOR});

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    if (reverseMap == null) {
      reverseMap = map.map((k, v) => new MapEntry(v, k));
    }
    return reverseMap;
  }
}
