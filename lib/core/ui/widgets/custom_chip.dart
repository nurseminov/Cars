import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../theme/app_colors.dart';
import '../../theme/app_fonts.dart';

class CustomChip extends StatelessWidget {
  const CustomChip({
    Key? key,
    required this.lable,
    required this.selected,
    required this.onSelected,
  }) : super(key: key);

  final String lable;
  final bool selected;
  final Function(bool) onSelected;

  @override
  Widget build(BuildContext context) {
    return ChoiceChip(
      onSelected: onSelected,
      backgroundColor: AppColors.white,
      selectedColor: AppColors.darkBlue,
      label: Text(lable),
      selected: selected,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
      ),
      side: const BorderSide(color: AppColors.darkBlue, width: 1),
      labelStyle: AppFonts.w700s12
          .copyWith(color: selected ? AppColors.white : AppColors.black),
    );
  }
}
