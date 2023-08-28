import 'package:flutter/material.dart';

import '../../app/theme/app_colors.dart';
import '../../app/theme/app_shadows.dart';
import '../../app/theme/app_theme.dart';
import '../atom/app_image.dart';

class AppCard extends StatelessWidget {
  final double? width;
  final double? height;
  final double? borderWidth;
  final double borderRadius;
  final String? backgroundImage;
  final ImgProvider backgroundImageProvider;
  final EdgeInsets padding;
  final EdgeInsets margin;
  final Widget child;
  final Color? color;
  final Color borderColor;
  final Function()? onTap;

  const AppCard({
    super.key,
    this.width,
    this.height,
    this.borderRadius = 40,
    this.backgroundImage,
    this.backgroundImageProvider = ImgProvider.networkImage,
    this.padding = const EdgeInsets.all(18),
    this.margin = EdgeInsets.zero,
    required this.child,
    this.color,
    this.borderColor = AppColors.blackLv9,
    this.onTap,
    this.borderWidth,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap ?? () {},
      child: Container(
        width: width,
        height: height,
        margin: margin,
        child: Stack(
          children: [
            backgroundImage != null
                ? AppImage(
                    image: backgroundImage!,
                    imgProvider: backgroundImageProvider,
                    borderRadius: borderRadius,
                    width: width,
                    height: height,
                  )
                : const SizedBox.shrink(),
            Container(
              decoration: BoxDecoration(
                color: backgroundImage != null ? AppColors.transparent : color ?? (AppTheme.isLightMode ? AppColors.white : AppColors.blackLv2),
                border: borderWidth != null
                    ? Border.all(
                        width: borderWidth!,
                        color: borderColor,
                      )
                    : null,
                boxShadow: [
                  AppShadows.cardShadow2
                ],
              ),
              child: Container(
                padding: padding,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(borderRadius),
                  gradient: backgroundImage != null
                      ? LinearGradient(
                          colors: [
                            AppColors.transparent,
                            AppColors.black.withOpacity(0.18),
                            AppColors.black.withOpacity(0.54),
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        )
                      : null,
                ),
                child: child,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
