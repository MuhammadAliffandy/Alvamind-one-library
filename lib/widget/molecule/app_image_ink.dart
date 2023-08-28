import 'package:flutter/material.dart';

import '../../app/theme/app_colors.dart';
import 'app_ink_container.dart';

class AppImageInk extends StatelessWidget {
  final String image;
  final EdgeInsets? padding;
  final BorderRadiusGeometry? borderRadius;
  final Color? color;

  const AppImageInk({
    super.key,
    required this.image,
    this.borderRadius,
    this.color,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return AppInkContainer(
      padding: padding ?? EdgeInsets.all(0),
      child: Ink(
        decoration: BoxDecoration(
            borderRadius: borderRadius ?? BorderRadius.circular(20),
            color: color ?? AppColors.blueLv4,
            image: DecorationImage(
              image: NetworkImage(image),
              fit: BoxFit.cover,
            )),
      ),
    );
  }
}
