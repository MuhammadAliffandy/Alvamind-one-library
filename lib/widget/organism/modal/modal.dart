// MOVED TO APP DIALOG (molecule/app_dialog.dart)
// CHANGED AS [AppDialogWidgetCustom]
// TODO REMOVE THIS FILE

// import 'package:flutter/material.dart';

// import '../../../app/theme/app_colors.dart';
// import '../../../app/theme/app_sizes.dart';
// import '../../../app/theme/app_text_style.dart';
// import '../../atom/app_image.dart';
// import '../../molecule/app_button.dart';

// class AppDialogCustomWidget extends StatelessWidget {
//   final String? image;
//   final ImgProvider imgProvider;
//   final IconData? icon;
//   final Color? backgroundColor;
//   final EdgeInsetsGeometry? padding;
//   final EdgeInsetsGeometry? margin;
//   final BorderRadiusGeometry? borderRadius;
//   final String title;
//   final String subtitle;
//   final Color? titleColor;
//   final Color? subtitleColor;
//   final Axis? directionButton;
//   final void Function()? functionButton;
//   final void Function()? functionSecondButton;

//   const AppDialogCustomWidget({
//     super.key,
//     this.backgroundColor,
//     this.borderRadius,
//     this.directionButton,
//     this.functionButton,
//     this.functionSecondButton,
//     this.icon,
//     this.image,
//     this.imgProvider = ImgProvider.assetImage,
//     this.margin,
//     this.padding,
//     required this.subtitle,
//     this.subtitleColor,
//     required this.title,
//     this.titleColor,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//         color: backgroundColor ?? AppColors.white,
//         borderRadius: borderRadius ?? BorderRadius.circular(40),
//       ),
//       child: Padding(
//         padding: padding ?? EdgeInsets.all(AppSizes.padding * 1.2),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             image != null
//                 ? Padding(
//                     padding: EdgeInsets.symmetric(vertical: AppSizes.padding * 1.5),
//                     child: AppImage(
//                       image: image!,
//                       imgProvider: imgProvider,
//                       width: 150,
//                     ),
//                   )
//                 : const SizedBox.shrink(),
//             Text(
//               title,
//               style: AppTextStyle.bold(size: 24, color: titleColor ?? Colors.white),
//             ),
//             SizedBox(height: AppSizes.padding * 1.5),
//             Text(
//               subtitle,
//               textAlign: TextAlign.center,
//               style: AppTextStyle.regular(size: 16, color: subtitleColor ?? Colors.white),
//             ),
//             SizedBox(height: AppSizes.padding * 1.5),
//             Flex(
//               direction: directionButton ?? Axis.vertical,
//               children: [
//                 AppButton(
//                   onTap: functionButton ?? () {},
//                   text: 'button',
//                   rounded: true,
//                 ),
//                 SizedBox(height: AppSizes.padding / 2),
//                 AppButton(
//                   onTap: functionSecondButton ?? () {},
//                   text: 'Button',
//                   textColor: AppColors.primary,
//                   buttonColor: AppColors.blueLv5,
//                   rounded: true,
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
