import 'package:flutter/material.dart';
import 'package:fullproject1/core/theme/app_colors.dart';

class CarModels {
  final String image;
  final int price;
  final String title;
  final String transmission;
  final String speed;
  final String ownersName;

  CarModels(
      {required this.image,
      required this.price,
      required this.title,
      required this.speed,
      required this.ownersName,
      required this.transmission});
}
