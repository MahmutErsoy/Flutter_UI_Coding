import 'package:car_sales_app_ui/style/app_style.dart';
import 'package:flutter/material.dart';
//import 'package:intl/intl.dart';

class Service {
  final String image;
  final Color color;

  Service({required this.image, required this.color});
}

List<Service> servicesList = [
  Service(image: "assets/icons/volkswagen.svg", color: const Color.fromARGB(255, 255, 255, 255)),
  Service(image: "assets/icons/toyota.svg", color: const Color.fromARGB(255, 255, 255, 255)),
  Service(image: "assets/icons/mercedes.svg", color: const Color.fromARGB(255, 255, 255, 255)),
  Service(image: "assets/icons/hyundai.svg", color: const Color.fromARGB(255, 255, 255, 255)),
  Service(image: "assets/icons/audi.svg", color: const Color.fromARGB(255, 255, 255, 255)),
  Service(image: "assets/icons/kia.svg", color: const Color.fromARGB(255, 255, 255, 255)),
];

class BestCars {
  final String image;
  final String title;
  final String subtitle;
  final Color color;

  BestCars({required this.image, required this.title, required this.subtitle, required this.color});
}

List<BestCars> bestCarsList = [
  BestCars(
      image: AppStyle.Audi_Q7,
      title: "Audi Q7",
      subtitle: "150 dolar/day",
      color: const Color.fromARGB(255, 255, 255, 255)),
  BestCars(
      image: AppStyle.Audi_A4L,
      title: "Audi A4L",
      subtitle: "160 dolar/day",
      color: const Color.fromARGB(255, 255, 255, 255)),
  BestCars(
      image: AppStyle.Audi_RS7,
      title: "Audi RS7",
      subtitle: "170 dolar/day",
      color: const Color.fromARGB(255, 255, 255, 255)),
];

class BrandCars {
  final String title;
  final String subtitle;
  final int distance;
  final Color color;
  final String image;

  BrandCars(
      {required this.title, required this.subtitle, required this.distance, required this.color, required this.image});
}

List<BrandCars> brandCarsList = [
  BrandCars(
      title: "Audi A4L  5 Seater  Automatic Disel",
      subtitle: "160 dolar/day",
      distance: 363,
      color: const Color.fromARGB(255, 255, 255, 255),
      image: AppStyle.Audi_A4L),
  BrandCars(
      title: "Audi Q7  5 Seater  Automatic Disel",
      subtitle: "150 dolar/day",
      distance: 363,
      color: const Color.fromARGB(255, 255, 255, 255),
      image: AppStyle.Audi_Q7),
  BrandCars(
      title: "Audi RS7  4 Seater  Automatic Disel",
      subtitle: "170 dolar/day",
      distance: 1200,
      color: const Color.fromARGB(255, 255, 255, 255),
      image: AppStyle.Audi_RS7),
];
