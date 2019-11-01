// To parse this JSON data, do
//
//     final estudiante = estudianteFromJson(jsonString);

import 'dart:convert';

Estudiante estudianteFromJson(String str) => Estudiante.fromJson(json.decode(str));

String estudianteToJson(Estudiante data) => json.encode(data.toJson());

class Estudiante {
    int id;
    String nombre;
    String noControl;
    String carrera;
    int semestre;
    String escuela;

    Estudiante({
        this.id,
        this.nombre,
        this.noControl,
        this.carrera,
        this.semestre,
        this.escuela,
    });

    factory Estudiante.fromJson(Map<String, dynamic> json) => Estudiante(
        id: json["id"],
        nombre: json["nombre"],
        noControl: json["no_control"],
        carrera: json["carrera"],
        semestre: json["Semestre"],
        escuela: json["escuela"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "nombre": nombre,
        "no_control": noControl,
        "carrera": carrera,
        "Semestre": semestre,
        "escuela": escuela,
    };
}
