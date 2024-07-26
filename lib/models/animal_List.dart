

import 'package:meta/meta.dart';
import 'dart:convert';

List<AnimalsList> animalsListFromJson(String str) => List<AnimalsList>.from(json.decode(str).map((x) => AnimalsList.fromJson(x)));

String animalsListToJson(List<AnimalsList> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class AnimalsList {
    int id;
    String name;
    String breedGroup;
    String size;
    String lifespan;
    String origin;
    String temperament;
    List<String> colors;
    String description;
    String image;

    AnimalsList({
        required this.id,
        required this.name,
        required this.breedGroup,
        required this.size,
        required this.lifespan,
        required this.origin,
        required this.temperament,
        required this.colors,
        required this.description,
        required this.image,
    });

    factory AnimalsList.fromJson(Map<String, dynamic> json) => AnimalsList(
        id: json["id"],
        name: json["name"],
        breedGroup: json["breed_group"],
        size: json["size"],
        lifespan: json["lifespan"],
        origin: json["origin"],
        temperament: json["temperament"],
        colors: List<String>.from(json["colors"].map((x) => x)),
        description: json["description"],
        image: json["image"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "breed_group": breedGroup,
        "size": size,
        "lifespan": lifespan,
        "origin": origin,
        "temperament": temperament,
        "colors": List<dynamic>.from(colors.map((x) => x)),
        "description": description,
        "image": image,
    };
}
