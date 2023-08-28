import 'package:alvamind_library/widget/molecule/app_ink_container.dart';
import 'package:flutter/material.dart';

import '../../../app/theme/app_colors.dart';
import '../../../app/theme/app_sizes.dart';
import '../../../app/theme/app_text_style.dart';
import '../../atom/app_image.dart';
import '../../molecule/app_icon_button.dart';
import '../../molecule/app_tags.dart';

class PaymentCard extends StatefulWidget {
  final bool? withTags;
  final String? image;
  final String? textTags;
  final String title;
  final String? subtitle;
  final Color? iconColor;
  final Color? backgroundColor;
  final Color? titleColor;
  final Color? subtitleColor;
  final IconData? icon;
  final BorderRadius? borderRadius;
  final List<BoxShadow>? boxShadow;
  final EdgeInsets? padding;
  final Widget? rightButton;
  final TextStyle? titleStyle;
  final TextStyle? subtitleStyle;
  final void Function()? onTap;
  final void Function()? onTapIconButton;

  const PaymentCard({
    super.key,
    this.icon,
    this.onTapIconButton,
    this.image,
    this.onTap,
    this.subtitle,
    this.subtitleColor,
    this.titleColor,
    this.withTags = false,
    this.textTags,
    this.iconColor,
    this.backgroundColor,
    this.rightButton,
    this.boxShadow,
    this.padding,
    this.subtitleStyle,
    this.titleStyle,
    this.borderRadius,
    required this.title,
  });

  @override
  State<PaymentCard> createState() => _PaymentCardState();
}

class _PaymentCardState extends State<PaymentCard> {
  @override
  Widget build(BuildContext context) {
    return AppInkContainer(
      padding: widget.padding ?? EdgeInsets.all(AppSizes.padding),
      boxShadow: widget.boxShadow ?? [],
      onTap: widget.onTap ?? () {},
      backgroundColor: widget.backgroundColor,
      borderRadius: widget.borderRadius,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              AppImage(
                image: widget.image ?? '',
                imgProvider: ImgProvider.assetImage,
                width: 32,
              ),
              SizedBox(
                width: AppSizes.padding,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.title,
                    style: widget.titleStyle ??
                        AppTextStyle.bold(
                          size: 18,
                        ),
                  ),
                  widget.subtitle != null
                      ? SizedBox(
                          height: AppSizes.padding / 2,
                        )
                      : const SizedBox.shrink(),
                  widget.subtitle != null
                      ? Text(
                          widget.subtitle!,
                          style: widget.subtitleStyle ??
                              AppTextStyle.regular(
                                size: 14,
                                color: AppColors.blackLv5,
                              ),
                        )
                      : const SizedBox.shrink(),
                ],
              ),
            ],
          ),
          Row(
            children: [
              widget.withTags == false ? const SizedBox.shrink() : AppTags(text: widget.textTags ?? ''),
              widget.rightButton ??
                  AppIconButton(
                    icon: Icon(
                      widget.icon ?? Icons.circle_outlined,
                      color: widget.iconColor ?? AppColors.primary,
                    ),
                    buttonColor: Colors.transparent,
                    onTap: widget.onTapIconButton ?? () {},
                  )
            ],
          ),
        ],
      ),
    );
  }
}
