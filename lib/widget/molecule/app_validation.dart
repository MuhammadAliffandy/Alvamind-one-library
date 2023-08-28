import 'package:flutter/material.dart';

import '../../app/theme/app_colors.dart';
import '../../app/theme/app_sizes.dart';
import '../../app/theme/app_text_style.dart';

class AppValidation extends StatelessWidget {
  final String text;
  final IconData icon;
  final double? iconSize;
  final Color? iconColor;
  final Color? backgroundColor;
  final double? radius;
  final double? fontSize;

  const AppValidation({
    super.key,
    required this.text,
    required this.icon,
    this.iconColor,
    this.backgroundColor,
    this.fontSize,
    this.iconSize,
    this.radius,
  });

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(
      children: [
        CircleAvatar(
          backgroundColor: backgroundColor ?? AppColors.redLv1,
          radius: radius ?? 8,
          child: Icon(
            icon,
            color: iconColor ?? AppColors.white,
            size: iconSize ?? 10,
          ),
        ),
        SizedBox(
          width: AppSizes.padding / 2,
        ),
        Text(
          text,
          style: AppTextStyle.medium(size: fontSize ?? 14),
        )
      ],
    );
  }
}
