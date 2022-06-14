import 'package:flutter/material.dart';

class Cities {
  String cityName;
  String imagePath;
  int priceInDollars;
  Cities({
    required this.cityName,
    required this.imagePath,
    required this.priceInDollars,
  });
}

Cities newYork = Cities(
  cityName: 'New York',
  imagePath: 'assets/newyork.png',
  priceInDollars: 100,
);
Cities paris = Cities(
  cityName: 'Paris',
  imagePath: 'assets/paris.png',
  priceInDollars: 120,
);

Cities italy = Cities(
  cityName: 'Italy',
  imagePath: 'assets/italy.png',
  priceInDollars: 150,
);
Cities rome = Cities(
  cityName: 'Rome',
  imagePath: 'assets/rome.png',
  priceInDollars: 225,
);
Cities spain = Cities(
  cityName: 'Spain',
  imagePath: 'assets/spain.png',
  priceInDollars: 150,
);

List<Cities> citiesList = [newYork, paris, italy, rome, spain];
