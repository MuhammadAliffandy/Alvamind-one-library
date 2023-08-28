import 'package:flutter/material.dart';

import '../../widget/molecule/app_transaction_info.dart';
import 'sample_wrapper.dart';

class TransactionInfoSamplesView extends StatefulWidget {
  const TransactionInfoSamplesView({Key? key}) : super(key: key);

  static const routeName = '/molecule-transaction-info-samples';

  @override
  State<TransactionInfoSamplesView> createState() => _TransactionInfoSamplesViewState();
}

class _TransactionInfoSamplesViewState extends State<TransactionInfoSamplesView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Transaction Info Samples')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            defaultTransactionInfo(),
          ],
        ),
      ),
    );
  }

  Widget defaultTransactionInfo() {
    return const SampleWrapper(
      title: 'Default Transaction Info',
      widget: AppTransactionInfo(
        transactionId: '18239873123',
        transactionStatus: 'Paid',
      ),
    );
  }
}
