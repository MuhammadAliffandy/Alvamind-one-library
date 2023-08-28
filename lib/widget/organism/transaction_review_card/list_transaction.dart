import 'package:alvamind_library/app/theme/app_text_style.dart';
import 'package:flutter/material.dart';

import '../../../app/theme/app_colors.dart';
import '../../atom/app_divider.dart';
import '../../molecule/app_card_container.dart';
import '../../molecule/app_transaction_info.dart';

class ListTransaction extends StatelessWidget {
  final String? email;
  final String? number;
  final String? gender;
  final String? registerDate;
  final String? transactionId;
  final String? adminPayment;
  final String? bill;
  final String? count;
  final String? status;
  final String? orderId;
  final String? complainId;
  final String? dateComplain;
  final String? consument;
  final Color? statusColor;
  final bool? isTransaction;
  final bool? isComplain;
  final List<BoxShadow>? boxShadow;
  final void Function()? onTapCopyNumber;
  final void Function()? onTapCopyEmail;
  final void Function()? onTapCopyTransactionId;
  final void Function()? onTapCopyCount;
  final void Function()? onTapCopyOrderId;
  final void Function()? onTapCopyComplainId;

  const ListTransaction({
    super.key,
    this.email,
    this.number,
    this.registerDate,
    this.status,
    this.gender,
    this.statusColor,
    this.adminPayment,
    this.bill,
    this.count,
    this.isTransaction = false,
    this.isComplain = false,
    this.transactionId,
    this.onTapCopyCount,
    this.onTapCopyEmail,
    this.onTapCopyNumber,
    this.onTapCopyTransactionId,
    this.boxShadow,
    this.complainId,
    this.consument,
    this.dateComplain,
    this.onTapCopyComplainId,
    this.onTapCopyOrderId,
    this.orderId,
  });

  @override
  Widget build(BuildContext context) {
    return AppCardContainer(
        backgroundColor: AppColors.white,
        boxShadow: boxShadow ??
            const [
              BoxShadow(
                color: AppColors.blackLv7,
                offset: Offset(0, 4),
                blurRadius: 60,
                spreadRadius: -40,
              ),
            ],
        child: isTransaction == true
            ? transaction()
            : isComplain == true
                ? complain()
                : userDetail());
  }

  userDetail() {
    return Column(
      children: [
        AppTransactionInfo(
          dotChillPadding: EdgeInsets.all(0),
          dotColor: AppColors.transparent,
          textTitle: 'Email',
          transactionId: email ?? '',
          transactionStatus: 'Paid',
          onlyTrasactionId: true,
          onTapCopyButton: onTapCopyEmail ?? () {},
        ),
        AppTransactionInfo(
          dotChillPadding: EdgeInsets.all(0),
          dotColor: AppColors.transparent,
          textTitle: 'Whatsapp',
          transactionId: number ?? '',
          transactionStatus: 'Paid',
          onlyTrasactionId: true,
          onTapCopyButton: onTapCopyNumber ?? () {},
        ),
        AppTransactionInfo(
          dotChillPadding: EdgeInsets.all(0),
          dotColor: AppColors.transparent,
          textTitle: 'Gender',
          transactionId: gender ?? '',
          transactionStatus: 'Paid',
          withIcon: false,
          onlyTrasactionId: true,
        ),
        const AppDivider(
          color: AppColors.blackLv7,
        ),
        AppTransactionInfo(
          dotChillPadding: EdgeInsets.all(0),
          dotColor: AppColors.transparent,
          textTitle: 'Terdaftar',
          transactionId: registerDate ?? '',
          transactionStatus: status ?? '',
          withIcon: false,
          transactionStatusColor: statusColor ?? AppColors.greenLv1,
        ),
      ],
    );
  }

  transaction() {
    return Column(
      children: [
        AppTransactionInfo(
          dotChillPadding: EdgeInsets.all(0),
          dotColor: AppColors.transparent,
          textTitle: 'Transaction ID',
          transactionId: transactionId ?? '',
          transactionStatus: 'Paid',
          onlyTrasactionId: true,
          onTapCopyButton: onTapCopyTransactionId ?? () {},
        ),
        AppTransactionInfo(
          dotChillPadding: EdgeInsets.all(0),
          dotColor: AppColors.transparent,
          textTitle: 'Biaya Admin',
          transactionId: adminPayment ?? '',
          transactionStatus: 'Paid',
          withIcon: false,
          onlyTrasactionId: true,
        ),
        AppTransactionInfo(
          dotChillPadding: EdgeInsets.all(0),
          dotColor: AppColors.transparent,
          textTitle: 'Tagihan',
          transactionId: bill ?? '',
          transactionStatus: 'Paid',
          withIcon: false,
          onlyTrasactionId: true,
        ),
        const AppDivider(
          color: AppColors.blackLv7,
        ),
        AppTransactionInfo(
          dotChillPadding: EdgeInsets.all(0),
          dotColor: AppColors.transparent,
          textTitle: 'Total',
          transactionId: count ?? '',
          onTapCopyButton: onTapCopyCount ?? () {},
          transactionStatus: status ?? '',
          transactionStatusColor: statusColor ?? AppColors.greenLv1,
        ),
      ],
    );
  }

  complain() {
    return Column(
      children: [
        AppTransactionInfo(
          dotChillPadding: EdgeInsets.all(0),
          dotColor: AppColors.transparent,
          textTitle: 'ID Komplain',
          transactionId: complainId ?? '',
          transactionStatus: 'Paid',
          onlyTrasactionId: true,
          onTapCopyButton: onTapCopyComplainId ?? () {},
        ),
        AppTransactionInfo(
          dotChillPadding: EdgeInsets.all(0),
          dotColor: AppColors.transparent,
          textTitle: 'Tanggal Komplain',
          transactionId: dateComplain ?? '',
          transactionStatus: 'Paid',
          withIcon: false,
          onlyTrasactionId: true,
        ),
        const AppDivider(
          color: AppColors.blackLv7,
        ),
        AppTransactionInfo(
          dotChillPadding: EdgeInsets.all(0),
          dotColor: AppColors.transparent,
          textTitle: 'ID Order',
          transactionId: orderId ?? '',
          transactionStatus: 'Paid',
          onlyTrasactionId: true,
          onTapCopyButton: onTapCopyOrderId ?? () {},
        ),
        AppTransactionInfo(
          dotChillPadding: EdgeInsets.all(0),
          dotColor: AppColors.transparent,
          textTitle: 'Konsumen',
          transactionId: consument ?? '',
          transactionIdStyle: AppTextStyle.bold(size: 16, color: AppColors.primary),
          withIcon: false,
          transactionStatus: '',
          onlyTrasactionId: true,
        ),
      ],
    );
  }
}
