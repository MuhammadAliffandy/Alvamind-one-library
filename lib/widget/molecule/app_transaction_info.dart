import 'package:flutter/material.dart';

import '../../app/theme/app_colors.dart';
import '../../app/theme/app_sizes.dart';
import '../../app/theme/app_text_style.dart';
import '../atom/app_dotted_border.dart';
import 'app_icon_button.dart';
import 'app_tags.dart';

class AppTransactionInfo extends StatelessWidget {
  final String transactionId;
  final String transactionStatus;
  final String? textTitle;
  final Color? dotColor;
  final Color transactionStatusColor;
  final EdgeInsets? dotChillPadding;
  final bool? onlyTrasactionId;
  final bool? withIcon;
  final TextStyle? transactionIdStyle;
  final TextStyle? textTitleStyle;
  final Function()? onTapCopyButton;

  const AppTransactionInfo({
    Key? key,
    required this.transactionId,
    required this.transactionStatus,
    this.transactionStatusColor = AppColors.primary,
    this.onTapCopyButton,
    this.dotChillPadding,
    this.dotColor,
    this.onlyTrasactionId,
    this.textTitle,
    this.withIcon = true,
    this.transactionIdStyle,
    this.textTitleStyle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppDottedBorder(
      color: dotColor ?? AppColors.purpleLv1,
      childPadding: dotChillPadding ?? EdgeInsets.all(AppSizes.padding),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                textTitle ?? 'Transaction ID',
                style: textTitleStyle ??
                    AppTextStyle.bodyMedium(
                      fontWeight: AppFontWeight.medium,
                    ),
              ),
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        transactionId,
                        textAlign: TextAlign.end,
                        softWrap: true,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: transactionIdStyle ??
                            AppTextStyle.bodyLarge(
                              fontWeight: AppFontWeight.semibold,
                            ),
                      ),
                    ),
                    withIcon == false ? const SizedBox.shrink() : const SizedBox(width: 8),
                    withIcon == false
                        ? const SizedBox.shrink()
                        : AppIconButton(
                            padding: EdgeInsets.zero,
                            buttonColor: AppColors.transparent,
                            icon: const Icon(
                              Icons.file_copy_outlined,
                              color: AppColors.primary,
                              size: 18,
                            ),
                            onTap: onTapCopyButton ?? () {},
                          )
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: AppSizes.padding),
          onlyTrasactionId == true
              ? const SizedBox.shrink()
              : Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Status',
                      style: AppTextStyle.bodyMedium(
                        fontWeight: AppFontWeight.medium,
                      ),
                    ),
                    AppTags(
                      text: transactionStatus,
                      textColor: transactionStatusColor,
                      borderWidth: 1,
                      borderColor: transactionStatusColor,
                      color: AppColors.transparent,
                    )
                  ],
                )
        ],
      ),
    );
  }
}
