import 'package:flutter/material.dart';

import '../../app/asset/app_assets.dart';
import '../../app/theme/app_colors.dart';
import '../../app/theme/app_sizes.dart';
import '../../widget/organism/transaction_review_card/card_review.dart';
import '../../widget/organism/transaction_review_card/list_card_flowup.dart';
import '../../widget/organism/transaction_review_card/list_card_progress.dart';
import '../../widget/organism/transaction_review_card/list_transaction.dart';
import 'sample_wrapper.dart';

class TransaksiReviewCardSamplesView extends StatefulWidget {
  const TransaksiReviewCardSamplesView({Key? key}) : super(key: key);

  static const routeName = '/organism-transaction-review-card-samples';

  @override
  State<TransaksiReviewCardSamplesView> createState() => _TransaksiReviewCardSamplesViewState();
}

class _TransaksiReviewCardSamplesViewState extends State<TransaksiReviewCardSamplesView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Transaksi & Review Card')),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(AppSizes.padding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            listCardProgress(),
            listCardFlow(),
            listTransaction(),
            listTransaction1(),
            cardReview(),
          ],
        ),
      ),
    );
  }

  Widget listCardProgress() {
    return SampleWrapper(
      title: 'List Card Progress',
      widget: ListCard(
        leftIcon: CustomIcon.walletBoldIcon,
        rightIcon: Icons.chevron_right_rounded,
        title: 'Selasa, 23 Juni 2023',
        subtitle: 'Status Complain',
        textTags: 'Proses',
        onTapChevronButton: () {
          // TODO
        },
        onTapCard: () {
          // TODO
        },
      ),
    );
  }

  Widget listCardFlow() {
    return SampleWrapper(
      title: 'List Card Flow',
      widget: ListCardFlow(
        leftIcon: Icons.show_chart_rounded,
        leftTitle: 'Inflow',
        title: 'Rp 10.123.567',
        subtitle: '+10% Naik dari bulan lalu',
        textTags: 'Proses',
        onTap: () {
          // TODO
        },
      ),
    );
  }

  Widget listTransaction() {
    return const SampleWrapper(
      title: 'List Transaction',
      widget: ListTransaction(
        email: 'nakama@gmail.com',
        number: '+62534234432',
        gender: 'Perempuan',
        registerDate: '19 Mei 2023',
        status: 'Aktif',
        statusColor: AppColors.greenLv1,
      ),
    );
  }

  Widget listTransaction1() {
    return const SampleWrapper(
      title: 'List Transaction',
      widget: ListTransaction(
        isTransaction: true,
        transactionId: 'nakama@gmail.com',
        adminPayment: '+62534234432',
        bill: 'Perempuan',
        count: '19 Mei 2023',
        status: 'Belum Terbayar',
        statusColor: AppColors.redLv1,
      ),
    );
  }

  Widget cardReview() {
    return const SampleWrapper(
      title: 'Card Review',
      widget: CardReview(
        numberStar: 4,
        countStar: '4.6',
        countReview: '120',
      ),
    );
  }
}
