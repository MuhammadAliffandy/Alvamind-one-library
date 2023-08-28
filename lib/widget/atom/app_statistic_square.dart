import 'package:flutter/material.dart';

import '../../app/theme/app_colors.dart';
import '../../app/theme/app_text_style.dart';

class AppStatisticSquare extends StatelessWidget {
  final String title;
  final String? subTitle;
  final String data;
  final double borderRadius;
  final double? borderRadiusCircle;
  final double iconSize;
  final EdgeInsets padding;
  final IconData icon;
  final Color? shadowColor;
  final Color? iconColor;
  final Color? iconBackgroundColor;
  final Color textColor;
  final List<Color> colors;
  final Function()? onTap;

  const AppStatisticSquare({
    super.key,
    this.onTap,
    required this.title,
    this.subTitle,
    required this.data,
    this.borderRadius = 28,
    this.padding = const EdgeInsets.all(22),
    this.icon = Icons.stacked_bar_chart_rounded,
    this.shadowColor,
    this.textColor = AppColors.white,
    this.colors = const [
      AppColors.blueLv2,
      AppColors.blueLv1
    ],
    this.iconSize = 24,
    this.iconColor = AppColors.primary,
    this.iconBackgroundColor,
    this.borderRadiusCircle,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: padding,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRadius),
          gradient: LinearGradient(colors: colors),
          boxShadow: [
            BoxShadow(
              color: shadowColor ?? colors.last.withOpacity(0.05),
              offset: const Offset(0, 4),
              blurRadius: 60,
            ),
          ],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: padding / 2,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(borderRadiusCircle ?? borderRadius),
                color: iconBackgroundColor ?? AppColors.white,
              ),
              child: Icon(
                icon,
                color: iconColor,
                size: iconSize,
              ),
            ),
            const SizedBox(height: 12),
            Text(
              title,
              style: AppTextStyle.bodySmall(
                fontWeight: AppFontWeight.bold,
                color: textColor,
              ),
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  data,
                  style: AppTextStyle.heading3(
                    color: textColor,
                  ),
                ),
                const SizedBox(width: 8),
                Text(
                  subTitle ?? '',
                  style: AppTextStyle.bodySmall(
                    fontWeight: AppFontWeight.regular,
                    color: textColor,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
