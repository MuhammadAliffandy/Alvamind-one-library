import 'package:flutter/material.dart';

import '../../app/asset/app_assets.dart';
import '../../app/theme/app_colors.dart';
import '../../app/theme/app_sizes.dart';
import '../../widget/molecule/app_chips.dart';
import '../../widget/organism/payment_method/payment_method.dart';
import '../../widget/organism/payment_method/payment_methods_card.dart';
import 'sample_wrapper.dart';

class PaymentSamplesView extends StatefulWidget {
  const PaymentSamplesView({Key? key}) : super(key: key);

  static const routeName = '/organism-payment-samples';

  @override
  State<PaymentSamplesView> createState() => _PaymentSamplesViewState();
}

class _PaymentSamplesViewState extends State<PaymentSamplesView> {
  final List<String> imagePayment = [
    AppAssets.paypalIcon,
    AppAssets.googleIcon,
    AppAssets.appleIcon,
    AppAssets.mastercardIcon,
    AppAssets.walletIcon,
    AppAssets.moneyIcon,
  ];

  final List<String> titlePayment = [
    'PayPal',
    'Google',
    'Apple Pay',
    '•••• •••• •••• •••• 4679',
    'Platform Wallet',
    'Cash Money',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blackLv8,
      appBar: AppBar(title: const Text('Payment Samples')),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(AppSizes.padding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            paymentMethod(),
            paymentMethodCard(),
          ],
        ),
      ),
    );
  }

  Widget paymentMethod() {
    return SampleWrapper(
      title: 'Payment Method',
      widget: Column(
        children: [
          ...List.generate(6, (i) {
            return Column(
              children: [
                PaymentCard(
                  image: imagePayment[i],
                  title: titlePayment[i],
                  subtitle: i == 0 ? 'Admin Fee Rp 0.0000' : null,
                  withTags: i == 4 ? true : false,
                  textTags: i == 4 ? 'Top Up' : null,
                  titleColor: AppColors.black,
                ),
                SizedBox(
                  height: AppSizes.padding,
                )
              ],
            );
          })
        ],
      ),
    );
  }

  Widget paymentMethodCard() {
    return SampleWrapper(
        title: 'Payment Method Card',
        widget: PaymentMethodCard(
          title: 'Metode Pembayaran',
          children: [
            PaymentCard(
              image: AppAssets.mastercardIcon,
              title: '•••• •••• •••• •••• 4679',
              titleColor: AppColors.black,
              rightButton: AppChips(
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                text: 'Change',
                fontSize: 12,
                borderWidth: 0,
                onTap: () {},
                isSelected: false,
              ),
            ),
          ],
        ));
  }
}
