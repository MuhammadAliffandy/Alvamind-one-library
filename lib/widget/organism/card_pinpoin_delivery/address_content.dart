import 'package:flutter/material.dart';

import '../../../app/theme/app_colors.dart';
import '../../../app/theme/app_sizes.dart';
import '../../../app/theme/app_text_style.dart';

class AddressContent extends StatelessWidget {
  final String deliveryAddress;
  final String deliveryTime;

  const AddressContent({
    super.key,
    required this.deliveryAddress,
    required this.deliveryTime,
  });

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Alamat pengiriman',
              style: AppTextStyle.bold(
                size: 16,
                color: AppColors.black,
              ),
            ),
            SizedBox(height: AppSizes.padding / 2),
            Text(
              deliveryAddress,
              softWrap: true,
              overflow: TextOverflow.fade,
              style: AppTextStyle.medium(
                size: 14,
                color: AppColors.blackLv4,
              ),
            ),
          ],
        ),
        SizedBox(
          width: AppSizes.padding,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                'Estimasi Waktu',
                textAlign: TextAlign.end,
                style: AppTextStyle.bold(
                  size: 16,
                  color: AppColors.black,
                ),
              ),
              SizedBox(height: AppSizes.padding / 2),
              Text(
                deliveryTime,
                softWrap: true,
                overflow: TextOverflow.fade,
                textAlign: TextAlign.end,
                style: AppTextStyle.medium(
                  size: 14,
                  color: AppColors.blackLv4,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
