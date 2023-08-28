import 'package:flutter/material.dart';
import '../../../app/theme/app_sizes.dart';
import '../../../app/theme/app_text_style.dart';
import '../../atom/app_image.dart';

class NotFoundWidget extends StatelessWidget {
  final String image;
  final String title;
  final String subtitle;

  const NotFoundWidget({
    required this.image,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [
        SizedBox(height: AppSizes.padding * 4),
        AppImage(
          image: image,
          imgProvider: ImgProvider.assetImage,
        ),
        SizedBox(height: AppSizes.padding * 4),
        Column(
          children: [
            Text(
              title,
              style: AppTextStyle.bold(size: 24),
            ),
            SizedBox(
              height: AppSizes.padding,
            ),
            Text(
              subtitle,
              textAlign: TextAlign.center,
              style: AppTextStyle.regular(size: 16),
            ),
          ],
        )
      ],
    );
  }
}
