import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../assets/app_images.dart';
import '../../theme/app_colors.dart';
import '../../theme/app_fonts.dart';

class AppButton2 extends StatelessWidget {
  const AppButton2({
    Key? key,
    required this.image,
    required this.title,
    required this.onPressed,
  }) : super(key: key);
  final String image;
  final String title;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        backgroundColor: AppColors.white,
        side: const BorderSide(width: 2, color: AppColors.black),
      ),
      onPressed: onPressed,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 45, vertical: 12),
        child: Row(
          children: [
            Image.asset(
              image,
              width: 30,
            ),
            const Spacer(),
            Text(
              title,
              style: AppFonts.w400s16.copyWith(color: AppColors.black),
            ),
          ],
        ),
      ),
    );
  }
}
