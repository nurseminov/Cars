import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../assets/app_images.dart';
import '../../theme/app_colors.dart';
import '../../theme/app_fonts.dart';

class CarCard extends StatelessWidget {
  const CarCard({
    Key? key,
    required this.onTap,
    required this.image,
    required this.price,
    required this.title,
    this.bgColor = AppColors.lightGrey,
  }) : super(key: key);

  final String image;
  final int price;
  final String title;

  final Color bgColor;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(11.0),
      child: Container(
        decoration: BoxDecoration(
          color: bgColor,
          boxShadow: [
            BoxShadow(
              spreadRadius: 4,
              blurRadius: 4,
              color: AppColors.black.withOpacity(0.25),
            ),
          ],
          borderRadius: BorderRadius.circular(5),
        ),
        height: 169,
        width: 152,
        child: InkWell(
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.all(2.0),
            child: Column(
              children: [
                Image.asset(
                  image,
                ),
                Text(
                  title,
                  style: AppFonts.w400s11,
                ),
                Text(
                  '\$$price per day',
                  style: AppFonts.w400s11,
                ),
                Row(
                  children: const [
                    Spacer(),
                    Icon(
                      Icons.heart_broken,
                      color: AppColors.red,
                    ),
                    SizedBox(
                      width: 6,
                    ),
                    Icon(
                      Icons.arrow_circle_right,
                      color: AppColors.darkBlue,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
