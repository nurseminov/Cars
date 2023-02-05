import 'package:flutter/cupertino.dart';

import '../../theme/app_colors.dart';
import '../../theme/app_fonts.dart';

class InfoWinget extends StatelessWidget {
  const InfoWinget({
    Key? key,
    required this.title,
    required this.subTitle,
  }) : super(key: key);

  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 95,
      width: 155,
      decoration: BoxDecoration(
        color: AppColors.lightGrey,
        borderRadius: BorderRadius.circular(3),
        boxShadow: [
          BoxShadow(
            blurRadius: 4,
            spreadRadius: 4,
            color: AppColors.black.withOpacity(0.25),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            style: AppFonts.w700s12.copyWith(color: AppColors.lightBlue),
          ),
          const SizedBox(
            height: 7,
          ),
          Text(
            subTitle,
            style: AppFonts.w400s12,
          ),
        ],
      ),
    );
  }
}
