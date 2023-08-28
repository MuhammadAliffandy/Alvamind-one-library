import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AppAssets {
  // This class is not meant to be instatiated or extended; this constructor
  // prevents instantiation and extension.
  AppAssets._();

  // App logo
  static const String logo = 'assets/images/logo.png';
  static const String logoCircle = 'assets/images/logo_circle.png';
  static const String logoCreditCard = 'assets/images/credit-card-logo.png';

  //Images

  // Image icon
  static const String pinIcon = 'assets/icons/pin_icon.png';

  // Payment Images Icon
  static const String googleIcon = 'assets/images/payment/google-icon.png';
  static const String paypalIcon = 'assets/images/payment/paypal-icon.png';
  static const String mastercardIcon = 'assets/images/payment/mastercard-icon.png';
  static const String walletIcon = 'assets/images/payment/wallet-icon.png';
  static const String moneyIcon = 'assets/images/payment/money-icon.png';
  static const String appleIcon = 'assets/images/payment/apple-icon.png';
  static const String scanPayIcon = 'assets/images/payment/scan-icon.png';

  // App State Illustration
  static const String boardPaperImage = 'assets/images/board-paper.png';
  static const String personBannerImage = 'assets/images/person-banner-image.png';
  static const String cubeImage = 'assets/images/cube-image.png';
  static const String info = 'assets/images/info.png';
  static const String success = 'assets/images/success.png';
  static const String failed = 'assets/images/failed.png';
  static const String warning = 'assets/images/warning.png';

  // Placeholder
  static const String user = 'assets/images/user.png';
  static const String loadingGif = 'assets/images/loading.gif';
  static const String emptyPlaceholder = 'assets/images/empty_placeholder.png';

  static const bankAnzImgPath = 'assets/images/bank/anz.png';
  static const bankBSIImgPath = 'assets/images/bank/bsi.png';
  static const bankBCAImgPath = 'assets/images/bank/bca.png';
  static const bankBIImgPath = 'assets/images/bank/bi.png';
  static const bankBJBImgPath = 'assets/images/bank/bjb.png';
  static const bankBNIImgPath = 'assets/images/bank/bni.png';
  static const bankBRIImgPath = 'assets/images/bank/bri.png';
  static const bankBTNImgPath = 'assets/images/bank/btn.png';
  static const bankBukopinImgPath = 'assets/images/bank/bukopin.png';
  static const bankCimbImgPath = 'assets/images/bank/cimb.png';
  static const bankCitiImgPath = 'assets/images/bank/citi.png';
  static const bankDanamonImgPath = 'assets/images/bank/danamon.png';
  static const bankDigibankImgPath = 'assets/images/bank/digibank.png';
  static const bankHsbcImgPath = 'assets/images/bank/hsbc.png';
  static const bankJagoImgPath = 'assets/images/bank/jago.png';
  static const bankJeniusImgPath = 'assets/images/bank/jenius.png';
  static const bankMandiriImgPath = 'assets/images/bank/mandiri.png';
  static const bankMaybankImgPath = 'assets/images/bank/maybank.png';
  static const bankMegaImgPath = 'assets/images/bank/mega.png';
  static const bankOCBCImgPath = 'assets/images/bank/ocbc.png';
  static const bankPaninImgPath = 'assets/images/bank/panin.png';
  static const bankPermataImgPath = 'assets/images/bank/permata.png';
  static const bankStandardCharteredImgPath = 'assets/images/bank/standard chartered.png';
  static const bankUOBImgPath = 'assets/images/bank/uob.png';
  // EWALLET

  static const ewalApplePayImgPath = 'assets/images/ewallet/applepay.png';
  static const ewalBluePayImgPath = 'assets/images/ewallet/bluepay.png';
  static const ewalCashbacImgPath = 'assets/images/ewallet/cashbac.png';
  static const ewalCahlezImgPath = 'assets/images/ewallet/cashlez.png';
  static const ewalDanaImgPath = 'assets/images/ewallet/dana.png';
  static const ewalFlipImgPath = 'assets/images/ewallet/flip.png';
  static const ewalGopayImgPath = 'assets/images/ewallet/gopay.png';
  static const ewalGPayImgPath = 'assets/images/ewallet/gpay.png';
  static const ewalKudoImgPath = 'assets/images/ewallet/kudo.png';
  static const ewalLinkAjaImgPath = 'assets/images/ewallet/linkaja.png';
  static const ewalOvoImgPath = 'assets/images/ewallet/ovo.png';
  static const ewalPayfazzImgPath = 'assets/images/ewallet/payfazz.png';
  static const ewalPaypalImgPath = 'assets/images/ewallet/paypal.png';
  static const ewalPayproImgPath = 'assets/images/ewallet/paypro.png';
  static const ewalPaytrenImgPath = 'assets/images/ewallet/paytren.png';
  static const ewalShoopeepayImgPath = 'assets/images/ewallet/shopeepay.png';
  static const ewalUangkuImgPath = 'assets/images/ewallet/uangku.png';

  // Financial provider logo
  // static const String visa = 'assets/visa.png';

  // Category
  static const String mosqueIcon = 'assets/icons/category/mosque-icon.png';
  static const String bagIcon = 'assets/icons/category/bag-icon.png';
  static const String categoryIcon = 'assets/icons/category/category-icon.png';
  static const String dollIcon = 'assets/icons/category/doll-icon.png';
  static const String helmetIcon = 'assets/icons/category/racing-helmet-icon.png';
  static const String tshirtIcon = 'assets/icons/category/tshirt-icon.png';
  static const String moneyyIcon = 'assets/icons/category/money-icon.png';
  static const String sleepingIcon = 'assets/icons/category/sleeping-bold-icon.png';

  // Flags
  static const String flagID = 'assets/icons/flags/ID.png';
  static const String flagUS = 'assets/icons/flags/US.png';
}

class CustomIcon {
  CustomIcon._();

  static const _kFontFam = 'CustomIcon';
  static const String? _kFontPkg = null;

  static const IconData heartIcon = IconData(0xe800, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData doc_text = IconData(0xe801, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData boxIcon = IconData(0xe802, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData cameraIcon = IconData(0xe803, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData editIcon = IconData(0xe804, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData contactIcon = IconData(0xe808, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData iconArrowDown = IconData(0xe80f, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData iconArrowRight = IconData(0xe810, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData scanIcon = IconData(0xe811, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData homeIcon = IconData(0xe812, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData chatIcon = IconData(0xe813, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData sendIcon = IconData(0xe815, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData threeUserBoldIcon = IconData(0xe816, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData editPenIcon = IconData(0xe818, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData buildingIcon = IconData(0xe81a, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData truckFastIcon = IconData(0xe819, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData convert3dCubeIcon = IconData(0xe81b, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData documentIcon = IconData(0xe81c, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData walletIcon = IconData(0xe81d, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData threeUserIcon = IconData(0xe81e, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData withdrawBoldIcon = IconData(0xe81f, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData sendBoldIcon = IconData(0xe821, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData voiceBoldIcon = IconData(0xe822, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData chatBoldIcon = IconData(0xe823, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData chartBoldIcon = IconData(0xe824, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData calendarIcon = IconData(0xe825, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData heartBoldIcon = IconData(0xe826, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData discountBoldIcon = IconData(0xe827, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData timesquareIcon = IconData(0xe828, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData chartCurvedIcon = IconData(0xe829, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData speakerIcon = IconData(0xe82a, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData documentBoldIcon = IconData(0xe82b, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData walletBoldIcon = IconData(0xe82c, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData loginIcon = IconData(0xe82d, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData logoutIcon = IconData(0xe82e, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData paperDownloadIcon = IconData(0xe82f, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData copyIcon = IconData(0xe830, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData downloadIcon = IconData(0xe831, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData infoSquareIcon = IconData(0xe832, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData categoryIcon = IconData(0xe833, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData messageicon = IconData(0xe834, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData arrowLeftIcon = IconData(0xe835, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData downloadBoldIcon = IconData(0xe836, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData notificationIcon = IconData(0xe837, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  static const IconData messageOutlinedIcon = IconData(0xe838, fontFamily: _kFontFam, fontPackage: _kFontPkg);
}
