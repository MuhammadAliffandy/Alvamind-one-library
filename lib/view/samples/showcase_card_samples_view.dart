import 'package:flutter/material.dart';

import '../../app/theme/app_sizes.dart';
import '../../widget/organism/showcase_card/showcase_banner.dart';
import '../../widget/organism/showcase_card/showcase_credit_card.dart';
import '../../widget/organism/showcase_card/showcase_user_profile_card.dart';
import 'sample_wrapper.dart';

class ShowcaseCardSamplesView extends StatefulWidget {
  const ShowcaseCardSamplesView({Key? key}) : super(key: key);

  static const routeName = '/organism-showcase-card-samples';

  @override
  State<ShowcaseCardSamplesView> createState() => _ShowcaseCardSamplesViewState();
}

class _ShowcaseCardSamplesViewState extends State<ShowcaseCardSamplesView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Showcase Card')),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(AppSizes.padding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            creditCard(),
            creditCardCustom(),
            creditCardCustom1(),
            bannerCard(),
            userProfileCard(),
            userProfileCardEmployee(),
            userProfileCardOnly(),
            userProfileCardWallet(),
            userProfileCardSaldo(),
          ],
        ),
      ),
    );
  }

  Widget creditCard() {
    return SampleWrapper(
      title: 'Credit Card',
      widget: UserCreditCard(
        numberCard: '1234 5678 9123 1211',
        nameCard: 'Situmorang',
        expiryDateCard: '10/23',
        onTapEditButton: () {
          // TODO
        },
      ),
    );
  }

  Widget creditCardCustom() {
    return SampleWrapper(
      title: 'Credit Card Custom',
      widget: UserCreditCard(
        numberCard: '1234 5678 9123 1211',
        nameCard: 'Situmorang',
        expiryDateCard: '10/23',
        showTag: false,
        showButton: false,
        onTapEditButton: () {
          // TODO
        },
      ),
    );
  }

  Widget creditCardCustom1() {
    return SampleWrapper(
      title: 'Credit Card Custom1',
      widget: UserCreditCard(
        numberCard: '1234 5678 9123 1211',
        nameCard: 'Situmorang',
        showTag: false,
        showButton: false,
        onTapEditButton: () {
          // TODO
        },
      ),
    );
  }

  Widget bannerCard() {
    return const SampleWrapper(
      title: 'Banner card',
      widget: BannerCard(),
    );
  }

  Widget userProfileCard() {
    return SampleWrapper(
      title: 'User Profil Card',
      widget: UserProfileCard(
        nameUser: 'Amber Winston',
        idUser: 'ID Profil 5457383979',
        countBalance: 'Rp12.689.000',
        onTapCopyButton: () {
          // TODO
        },
        onTapHistoryButton: () {
          // TODO
        },
        onTapTopUpButton: () {
          // TODO
        },
        onTapWithDrawButton: () {
          // TODO
        },
        onTapPayButton: () {
          // TODO
        },
      ),
    );
  }

  Widget userProfileCardEmployee() {
    return SampleWrapper(
      title: 'User Profil Card Employee',
      widget: UserProfileCard(
        onlyUser: true,
        onlyEmployee: true,
        nameUser: 'Amber Winston',
        idUser: 'ID Profil 5457383979',
        employeePlace: 'Barokah Laundry',
        employeeJob: 'Kasir, Produksi',
        onTapCopyButton: () {
          // TODO
        },
        onTapDetailButton: () {
          // TODO
        },
      ),
    );
  }

  Widget userProfileCardOnly() {
    return SampleWrapper(
      title: 'User Profil Card Only',
      widget: UserProfileCard(
        onlyUser: true,
        nameUser: 'Amber Winston',
        idUser: 'ID Profil 5457383979',
        onTapCopyButton: () {
          // TODO
        },
      ),
    );
  }

  Widget userProfileCardWallet() {
    return SampleWrapper(
      title: 'User Profil Card Wallet',
      widget: UserProfileCard(
        onlyBalance: true,
        countBalance: 'Rp12.689.000',
        onTapHistoryButton: () {
          // TODO
        },
        onTapTopUpButton: () {
          // TODO
        },
        onTapWithDrawButton: () {
          // TODO
        },
        onTapPayButton: () {
          // TODO
        },
      ),
    );
  }

  Widget userProfileCardSaldo() {
    return const SampleWrapper(
      title: 'User Profil Card Saldo',
      widget: UserProfileCard(
        onlyBalance: true,
        onlySaldo: true,
        countBalance: 'Rp12.689.000',
      ),
    );
  }
}
