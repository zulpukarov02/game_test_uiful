import 'package:flutter/material.dart';
import 'package:game_test_uiful/constants/app_text.dart';
import 'package:game_test_uiful/models/question.dart';

class Continent {
  const Continent({
    required this.name,
    required this.icon,
    required this.color,
    this.guestion,
  });
  final String name;
  final String icon;
  final Color color;
  final List<Guestion>? guestion;
}

const europa = Continent(
  name: AppText.europa,
  icon: 'europa',
  color: Color(0xff81A2FD),
);

const africa = Continent(
  name: AppText.afrika,
  icon: 'afrika',
  color: Color(0xffFEEF34),
);
final azie = Continent(
  name: AppText.azie,
  icon: 'azie',
  color: Color(0xffFE8180),
  guestion: asiaGuestions,
);
const sAmerica = Continent(
  name: AppText.southAmerica,
  icon: 'south_america',
  color: Color.fromARGB(255, 196, 60, 10),
);

const nAmerica = Continent(
  name: AppText.northAmerica,
  icon: 'North_America',
  color: Color(0xffFEB000),
);

const australia = Continent(
  name: AppText.australia,
  icon: 'Australia',
  color: Color.fromARGB(255, 14, 130, 70),
);
List<Continent> continents = [
  europa,
  azie,
  nAmerica,
  sAmerica,
  africa,
  australia,
];
