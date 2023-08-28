import 'package:flutter/material.dart';

import '../../../app/theme/app_sizes.dart';
import '../../atom/app_image.dart';
import '../../molecule/app_account_list.dart';

class CourierContent extends StatelessWidget {
  final String nameCourier;
  final String idCourier;
  final Widget deliveryAddress;
  final void Function() onTapChatButton;
  final void Function() onTapCallButton;

  const CourierContent({
    super.key,
    required this.onTapCallButton,
    required this.onTapChatButton,
    required this.idCourier,
    required this.nameCourier,
    required this.deliveryAddress,
  });

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [
        deliveryAddress,
        SizedBox(height: AppSizes.padding),
        AccountList(
          title: 'Joole D Kurir',
          subtitle: 'ID #12345098',
          image: randomImage,
          onTapCallButton: onTapCallButton,
          onTapChatButton: onTapChatButton,
        ),
      ],
    );
  }
}
