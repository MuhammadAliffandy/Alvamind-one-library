import 'package:flutter/material.dart';

import '../../app/theme/app_colors.dart';
import '../../app/theme/app_text_style.dart';

class AppIconButton extends StatelessWidget {
  final double? width;
  final double? height;
  final double? borderWidth;
  final double borderRadius;
  final EdgeInsets padding;
  final bool enable;
  final Color? buttonColor;
  final Color borderColor;
  final Widget icon;
  final String? text;
  final EdgeInsetsGeometry? paddingText;
  final TextStyle? textStyle;
  final List<BoxShadow>? boxShadow;
  final List<Color>? gradient;
  final Function() onTap;

  const AppIconButton({
    super.key,
    this.width,
    this.height,
    this.borderWidth,
    this.padding = const EdgeInsets.all(12),
    this.enable = true,
    this.buttonColor = AppColors.primary,
    this.borderColor = AppColors.blackLv7,
    this.borderRadius = 100,
    this.text,
    this.textStyle,
    this.paddingText,
    this.gradient,
    this.boxShadow,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: enable ? 1.0 : 0.5,
      child: Column(
        children: [
          Material(
            borderRadius: BorderRadius.circular(4),
            color: Colors.transparent,
            child: InkWell(
              onTap: enable ? onTap : null,
              splashColor: Colors.black.withOpacity(0.06),
              splashFactory: InkRipple.splashFactory,
              highlightColor: enable ? AppColors.black.withOpacity(0.12) : Colors.transparent,
              borderRadius: BorderRadius.circular(borderRadius),
              child: Ink(
                width: width,
                height: height,
                padding: padding,
                decoration: BoxDecoration(
                  color: buttonColor,
                  boxShadow: boxShadow ?? [],
                  gradient: LinearGradient(
                      colors: gradient ??
                          [
                            buttonColor!,
                            buttonColor!,
                          ]),
                  borderRadius: BorderRadius.circular(borderRadius),
                  border: borderWidth != null
                      ? Border.all(
                          width: borderWidth!,
                          color: borderColor,
                        )
                      : null,
                ),
                child: icon,
              ),
            ),
          ),
          text != null
              ? Padding(
                  padding: paddingText ?? EdgeInsets.only(top: 10),
                  child: Text(
                    text!,
                    style: textStyle ??
                        AppTextStyle.bodyMedium(
                          fontWeight: AppFontWeight.bold,
                        ),
                  ),
                )
              : const SizedBox.shrink(),
        ],
      ),
    );
  }
}
