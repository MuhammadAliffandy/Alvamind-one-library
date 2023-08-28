// MOVED TO APP MODAL (molecule/app_modal.dart)
// TODO REMOVE THIS FILE

// import 'package:flutter/material.dart';
// import 'package:syncfusion_flutter_core/theme.dart';
// import 'package:syncfusion_flutter_sliders/sliders.dart';

// import '../../../app/theme/app_colors.dart';
// import '../../../app/theme/app_sizes.dart';
// import '../../../app/theme/app_text_style.dart';
// import '../../atom/app_divider.dart';
// import '../../molecule/app_button.dart';

// class ModalPopup extends StatefulWidget {
//   final IconData? icon;
//   final Color? backgroundColor;
//   final EdgeInsetsGeometry? padding;
//   final EdgeInsetsGeometry? margin;
//   final BorderRadiusGeometry? borderRadius;
//   final String title;
//   final String? subtitle;
//   final String? titleAddress;
//   final String? subtitleAddress;
//   final Color? subtitleColor;
//   final Color? titleColor;
//   final String? miniTitle;
//   final Color? miniTitleColor;
//   final List<Widget> children;
//   final List<Widget>? moreWidget;
//   final bool textAddress;
//   final Axis? directionButton;
//   final bool? price;
//   final bool? slider;
//   final String? textPrice;
//   final String? statusPrice;
//   final void Function()? priceButton;

//   const ModalPopup({
//     super.key,
//     this.backgroundColor,
//     this.borderRadius,
//     this.directionButton,
//     this.icon,
//     this.margin,
//     this.padding,
//     this.subtitle,
//     this.subtitleColor,
//     this.titleColor,
//     this.miniTitleColor,
//     this.moreWidget,
//     this.miniTitle,
//     this.subtitleAddress,
//     this.titleAddress,
//     this.textAddress = false,
//     this.price = false,
//     this.slider = false,
//     this.textPrice,
//     this.statusPrice,
//     this.priceButton,
//     required this.children,
//     required this.title,
//   });

//   @override
//   State<ModalPopup> createState() => _ModalPopupState();
// }

// class _ModalPopupState extends State<ModalPopup> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//         color: widget.backgroundColor ?? AppColors.white,
//         borderRadius: widget.borderRadius ?? BorderRadius.circular(40),
//       ),
//       child: Padding(
//         padding: widget.padding ??
//             EdgeInsets.symmetric(
//               vertical: AppSizes.padding,
//               horizontal: AppSizes.padding,
//             ),
//         child: Column(
//           children: [
//             AppDivider(
//               thickness: 4,
//               padding: EdgeInsets.symmetric(vertical: 0, horizontal: AppSizes.padding * 6),
//             ),
//             SizedBox(height: AppSizes.padding),
//             Column(
//               crossAxisAlignment: CrossAxisAlignment.center,
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Text(
//                   widget.title,
//                   style: AppTextStyle.bold(
//                     size: 24,
//                     color: widget.titleColor ?? Colors.black,
//                   ),
//                 ),
//                 AppDivider(
//                   thickness: 1,
//                   color: Color(0xFFEEEEEE),
//                   padding: EdgeInsets.symmetric(
//                     horizontal: AppSizes.padding / 3,
//                     vertical: AppSizes.padding,
//                   ),
//                 ),
//                 //
//                 // subtitle text
//                 //
//                 widget.miniTitle != null
//                     ? Text(
//                         widget.miniTitle ?? '',
//                         textAlign: TextAlign.center,
//                         style: AppTextStyle.bold(size: 18, color: widget.miniTitleColor ?? AppColors.black),
//                       )
//                     : const SizedBox.shrink(),
//                 widget.miniTitle != null
//                     ? SizedBox(
//                         height: AppSizes.padding,
//                       )
//                     : const SizedBox.shrink(),
//                 widget.subtitle != null
//                     ? Text(
//                         widget.subtitle ?? '',
//                         textAlign: TextAlign.start,
//                         style: AppTextStyle.regular(size: 14, color: widget.subtitleColor ?? AppColors.black),
//                       )
//                     : const SizedBox.shrink(),

//                 widget.subtitle != null
//                     ? SizedBox(
//                         height: AppSizes.padding,
//                       )
//                     : const SizedBox.shrink(),
//                 //
//                 // address
//                 //
//                 ...widget.moreWidget ?? [],
//                 widget.textAddress ? widgetAddress() : const SizedBox.shrink(),
//                 widget.slider == true ? sliderWay() : const SizedBox.shrink(),

// Widget widgetAddress() {
//   return Column(
//     crossAxisAlignment: CrossAxisAlignment.start,
//     children: [
//       Row(
//         children: [
//           const Icon(
//             Icons.location_pin,
//             size: 18,
//             color: AppColors.redLv1,
//           ),
//           SizedBox(
//             width: AppSizes.padding / 2,
//           ),
//           Text(
//             widget.titleAddress ?? '',
//             style: AppTextStyle.bold(
//               size: 18,
//             ),
//           ),
//         ],
//       ),
//       SizedBox(
//         height: AppSizes.padding / 4,
//       ),
//       Text(
//         widget.subtitleAddress ?? '',
//         style: AppTextStyle.regular(
//           size: 12,
//         ),
//       ),
//       SizedBox(
//         height: AppSizes.padding,
//       ),
//     ],
//   );
// }

//   Widget widgetAddress() {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Row(
//           children: [
//             const Icon(
//               Icons.pin_drop,
//               size: 18,
//               color: AppColors.redLv1,
//             ),
//             SizedBox(
//               width: AppSizes.padding / 2,
//             ),
//             Text(
//               widget.titleAddress ?? '',
//               style: AppTextStyle.bold(
//                 size: 18,
//               ),
//             ),
//           ],
//         ),
//         SizedBox(
//           height: AppSizes.padding / 4,
//         ),
//         Text(
//           widget.subtitleAddress ?? '',
//           style: AppTextStyle.regular(
//             size: 12,
//           ),
//         ),
//         SizedBox(
//           height: AppSizes.padding,
//         ),
//       ],
//     );
//   }

//   Widget widgetPrice() {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text(
//           'Price',
//           style: AppTextStyle.regular(
//             size: 10,
//             color: AppColors.blackLv4,
//           ),
//         ),
//         SizedBox(
//           height: AppSizes.padding / 4,
//         ),
//         Row(
//           crossAxisAlignment: CrossAxisAlignment.end,
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Row(
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 const Icon(
//                   Icons.attach_money_sharp,
//                   color: AppColors.primary,
//                   size: 30,
//                 ),
//                 Text(
//                   widget.textPrice ?? '',
//                   style: AppTextStyle.bold(
//                     size: 30,
//                     color: AppColors.primary,
//                   ),
//                 ),
//               ],
//             ),
//             Padding(
//               padding: const EdgeInsets.all(4.0),
//               child: Text(
//                 widget.statusPrice ?? '',
//                 style: AppTextStyle.medium(
//                   size: 12,
//                   color: AppColors.blackLv4,
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ],
//     );
//   }

//   SfRangeValues _values = const SfRangeValues(0, 5);

//   Widget sliderWay() {
//     return Padding(
//       padding: EdgeInsets.only(top: AppSizes.padding * 2),
//       child: SfRangeSliderTheme(
//         data: SfRangeSliderThemeData(
//           tooltipBackgroundColor: AppColors.primary,
//           thumbColor: AppColors.white,
//           thumbStrokeColor: AppColors.primary,
//           thumbStrokeWidth: 4,
//         ),
//         child: SfRangeSlider(
//           min: 0,
//           max: 10,
//           values: _values,
//           tooltipShape: SfRectangularTooltipShape(),
//           tooltipTextFormatterCallback: (actualValue, formattedText) {
//             return actualValue.round().toString() + ' KM';
//           },
//           enableTooltip: true,
//           shouldAlwaysShowTooltip: true,
//           onChanged: (dynamic values) {
//             setState(() {
//               _values = values;
//             });
//           },
//         ),
//       ),
//     );
//   }
// }
