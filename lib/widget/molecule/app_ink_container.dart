import 'package:flutter/material.dart';

import '../../app/theme/app_colors.dart';
import '../../app/theme/app_sizes.dart';

class AppInkContainer extends StatefulWidget {
  final Color? backgroundColor;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final BorderRadius? borderRadius;
  final Widget? child;
  final List<BoxShadow>? boxShadow;
  final void Function()? onTap;

  const AppInkContainer({
    Key? key,
    this.backgroundColor,
    this.borderRadius,
    this.padding,
    this.child,
    this.boxShadow,
    this.onTap,
    this.margin,
  }) : super(key: key);

  @override
  State<AppInkContainer> createState() => _AppInkContainerState();
}

class _AppInkContainerState extends State<AppInkContainer> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return InkWell(
      onTap: widget.onTap ?? () {},
      splashColor: Colors.black.withOpacity(0.06),
      borderRadius: widget.borderRadius ?? BorderRadius.circular(20),
      child: Ink(
        padding: widget.padding ?? EdgeInsets.all(AppSizes.padding),
        decoration: BoxDecoration(
          color: widget.backgroundColor ?? AppColors.white,
          borderRadius: widget.borderRadius ?? BorderRadius.circular(20),
          boxShadow: widget.boxShadow ?? [],
        ),
        child: widget.child,
      ),
    );
  }
}
