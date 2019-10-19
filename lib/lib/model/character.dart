import 'package:flutter/material.dart';

class Character{
  final String name;
  final String imagesPath;
  final String description;
  final List<Color> colors;
  Character({
    this.name,
    this.imagesPath,
    this.description,
    this.colors
});
}

List characters = [
  Character(
    name: "Kevin",
    imagesPath: "images/mignon.png",
    description: "Kevin et Jerry sont chargés de veiller sur les filles. Après que Jerry leur a chanté une berceuse, ils jouent tous ensemble au golf. Il sont alors interrompus par un bruit qui terrifie Jerry. Kevin se moque de Jerry en le traitant de trouillard, et ils commencent à se disputer. Une lumière jaillit Jerry est enlevé. Kevin lutte pour ne pas subir le même sort que Jerry, sans succès.",
    colors: [Colors.orange.shade200, Colors.deepOrange.shade400]
  ),
  Character(
      name: "Agnès",
      imagesPath: "images/agnes_gru.png",
      description: "Agnes rêvait d'être adoptée par quelqu'un qui s'occuperait d'elle. Au début, c'est la seule à être contente d'emménager avec Gru. Elle lui fait tout de suite confiance, contrairement à ses soeurs. Elle est innocente et naïve, et c'est la raison pour laquelle Margo cherche toujours à la protéger. C'est notamment grâce à son amour inconditionnel que Gru va changer de comportement envers les filles.",
      colors: [Colors.pink.shade200, Colors.redAccent.shade400]
  ),
];