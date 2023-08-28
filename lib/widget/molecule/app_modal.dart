import 'package:alvamind_library/widget/molecule/app_range_slider.dart';
import 'package:flutter/material.dart';

import '../../../app/theme/app_colors.dart';
import '../../../app/theme/app_sizes.dart';
import '../../../app/theme/app_text_style.dart';
import '../atom/app_divider.dart';
import '../molecule/app_button.dart';

class AppModal {
  static Future<void> show(
    NavigatorState navigator, {
    IconData? icon,
    double? height,
    Color? backgroundColor,
    EdgeInsetsGeometry? padding,
    EdgeInsetsGeometry? margin,
    BorderRadiusGeometry? borderRadius,
    String? title,
    String? subtitle,
    String? titleAddress,
    String? subtitleAddress,
    Color? subtitleColor,
    Color? titleColor,
    String? miniTitle,
    Color? miniTitleColor,
    required List<Widget> children,
    List<Widget>? moreWidget,
    bool textAddress = false,
    Axis? directionButton,
    bool? price,
    bool? slider,
    String? textPrice,
    String? statusPrice,
    bool? isScrolled,
    void Function()? priceButton,
  }) async {
    showModalBottomSheet(
      context: navigator.context,
      isScrollControlled: true,
      backgroundColor: AppColors.transparent,
      builder: (context) {
        return AppModalWidget(
          backgroundColor: backgroundColor,
          borderRadius: borderRadius,
          directionButton: directionButton,
          height: height,
          icon: icon,
          margin: margin,
          padding: padding,
          subtitle: subtitle,
          subtitleColor: subtitleColor,
          titleColor: titleColor,
          miniTitleColor: miniTitleColor,
          moreWidget: moreWidget,
          miniTitle: miniTitle,
          subtitleAddress: subtitleAddress,
          titleAddress: titleAddress,
          textAddress: textAddress,
          price: price,
          slider: slider,
          textPrice: textPrice,
          statusPrice: statusPrice,
          priceButton: priceButton,
          title: title,
          children: children,
          isScrolled: isScrolled,
        );
      },
    );
  }
}

class AppModalWidget extends StatefulWidget {
  final IconData? icon;
  final Color? backgroundColor;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final BorderRadiusGeometry? borderRadius;
  final double? height;
  final String? title;
  final String? subtitle;
  final String? titleAddress;
  final String? subtitleAddress;
  final Color? subtitleColor;
  final Color? titleColor;
  final String? miniTitle;
  final Color? miniTitleColor;
  final List<Widget> children;
  final List<Widget>? moreWidget;
  final bool textAddress;
  final Axis? directionButton;
  final bool? price;
  final bool? slider;
  final String? textPrice;
  final String? statusPrice;
  final bool? isScrolled;
  final void Function()? priceButton;

  const AppModalWidget({
    super.key,
    this.backgroundColor,
    this.borderRadius,
    this.directionButton,
    this.icon,
    this.margin,
    this.padding,
    this.subtitle,
    this.subtitleColor,
    this.titleColor,
    this.miniTitleColor,
    this.moreWidget,
    this.miniTitle,
    this.subtitleAddress,
    this.titleAddress,
    this.textAddress = false,
    this.price = false,
    this.slider = false,
    this.textPrice,
    this.statusPrice,
    this.priceButton,
    this.height,
    this.isScrolled = false,
    required this.children,
    this.title,
  });

  @override
  State<AppModalWidget> createState() => _AppModalWidgetState();
}

class _AppModalWidgetState extends State<AppModalWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: AppSizes.padding * 4),
      child: Container(
        decoration: BoxDecoration(
          color: widget.backgroundColor ?? AppColors.white,
          borderRadius: widget.borderRadius ??
              const BorderRadius.only(
                topLeft: Radius.circular(40),
                topRight: Radius.circular(40),
              ),
        ),
        child: Padding(
          padding: widget.padding ??
              EdgeInsets.symmetric(
                vertical: AppSizes.padding,
                horizontal: AppSizes.padding,
              ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              AppDivider(
                thickness: 4,
                padding: EdgeInsets.symmetric(vertical: 0, horizontal: AppSizes.padding * 8),
              ),
              SizedBox(height: AppSizes.padding),
              widget.isScrolled == false
                  ? modalBody()
                  : Flexible(
                      child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: modalBody(),
                      ),
                    ),
            ],
          ),
        ),
      ),
    );
  }

  Widget modalBody() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        widget.title == null
            ? const SizedBox.shrink()
            : Text(
                widget.title ?? '',
                style: AppTextStyle.bold(
                  size: 24,
                  color: widget.titleColor ?? Colors.black,
                ),
              ),
        widget.title == null
            ? const SizedBox.shrink()
            : AppDivider(
                thickness: 1,
                color: const Color(0xFFEEEEEE),
                padding: EdgeInsets.symmetric(
                  horizontal: AppSizes.padding / 3,
                  vertical: AppSizes.padding,
                ),
              ),
        //
        // subtitle text
        //
        widget.miniTitle != null
            ? Text(
                widget.miniTitle ?? '',
                textAlign: TextAlign.center,
                style: AppTextStyle.bold(size: 18, color: widget.miniTitleColor ?? AppColors.black),
              )
            : const SizedBox.shrink(),
        widget.miniTitle != null
            ? SizedBox(
                height: AppSizes.padding,
              )
            : const SizedBox.shrink(),
        widget.subtitle != null
            ? Text(
                widget.subtitle ?? '',
                textAlign: TextAlign.start,
                style: AppTextStyle.regular(size: 14, color: widget.subtitleColor ?? AppColors.black),
              )
            : const SizedBox.shrink(),

        widget.subtitle != null
            ? SizedBox(
                height: AppSizes.padding,
              )
            : const SizedBox.shrink(),
        //
        // address
        //
        ...widget.moreWidget ?? [],
        widget.textAddress ? widgetAddress() : const SizedBox.shrink(),
        widget.slider == true ? sliderWay() : const SizedBox.shrink(),

        Flex(
          direction: widget.directionButton ?? Axis.horizontal,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ...widget.children,
            widget.price == false
                ? const SizedBox.shrink()
                : Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      widgetPrice(),
                      Expanded(
                        child: AppButton(
                          rounded: true,
                          text: 'Pesan',
                          onTap: widget.priceButton ??
                              () {
                                // TODO
                              },
                        ),
                      ),
                    ],
                  ),
          ],
        ),
      ],
    );
  }

  Widget widgetAddress() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            const Icon(
              Icons.location_on,
              size: 18,
              color: AppColors.redLv1,
            ),
            SizedBox(
              width: AppSizes.padding / 2,
            ),
            Text(
              widget.titleAddress ?? '',
              style: AppTextStyle.bold(
                size: 18,
              ),
            ),
          ],
        ),
        SizedBox(
          height: AppSizes.padding / 4,
        ),
        Text(
          widget.subtitleAddress ?? '',
          style: AppTextStyle.regular(
            size: 12,
          ),
        ),
        SizedBox(
          height: AppSizes.padding,
        ),
      ],
    );
  }

  Widget widgetPrice() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Price',
          style: AppTextStyle.regular(
            size: 10,
            color: AppColors.blackLv4,
          ),
        ),
        SizedBox(
          height: AppSizes.padding / 4,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Icon(
                  Icons.attach_money_sharp,
                  color: AppColors.primary,
                  size: 30,
                ),
                Text(
                  widget.textPrice ?? '',
                  style: AppTextStyle.bold(
                    size: 30,
                    color: AppColors.primary,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Text(
                widget.statusPrice ?? '',
                style: AppTextStyle.medium(
                  size: 12,
                  color: AppColors.blackLv4,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  double _low = 5;
  double _up = 10;

  Widget sliderWay() {
    return Padding(
        padding: EdgeInsets.only(top: AppSizes.padding * 2),
        child: AppRangeSlider(
          lowerValue: _low,
          upperValue: _up,
          leftSuffix: Text(
            ' KM',
            style: AppTextStyle.medium(
              size: 14,
              color: AppColors.white,
            ),
          ),
          rightSuffix: Text(
            ' KM',
            style: AppTextStyle.medium(
              size: 14,
              color: AppColors.white,
            ),
          ),
          onDragging: (handlerIndex, lowerValue, upperValue) {
            setState(() {
              _low = lowerValue;
              _up = upperValue;
            });
            // TODO
          },
        ));
  }
}
