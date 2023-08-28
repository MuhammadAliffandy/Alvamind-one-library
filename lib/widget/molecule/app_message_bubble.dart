import 'package:flutter/material.dart';

import '../../app/theme/app_colors.dart';
import '../../app/theme/app_text_style.dart';
import '../../app/theme/app_theme.dart';
import '../../app/utility/date_formatter.dart';

class AppMessageBubble extends StatelessWidget {
  final bool isMe;
  final bool isReaded;
  final String? userName;
  final String message;
  final DateTime timeStamp;
  final Color? color;
  final Color? messageColor;
  final Color? userNameColor;
  final double borderRadius;
  final EdgeInsets padding;
  final Function()? onTap;

  const AppMessageBubble({
    super.key,
    this.onTap,
    required this.isMe,
    required this.isReaded,
    this.userName,
    required this.message,
    required this.timeStamp,
    this.color,
    this.messageColor,
    this.userNameColor = AppColors.primary,
    this.borderRadius = 20,
    this.padding = const EdgeInsets.symmetric(horizontal: 22, vertical: 14),
  });

  @override
  Widget build(BuildContext context) {
    var radius = BorderRadius.only(
      topLeft: Radius.circular(!isMe ? borderRadius / 2 : borderRadius),
      bottomLeft: Radius.circular(borderRadius),
      topRight: Radius.circular(borderRadius),
      bottomRight: Radius.circular(isMe ? borderRadius / 2 : borderRadius),
    );

    return Align(
      alignment: isMe ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width / 1.5,
        ),
        margin: const EdgeInsets.only(bottom: 12),
        child: Material(
          borderRadius: radius,
          child: InkWell(
            onTap: onTap,
            splashColor: AppColors.black.withOpacity(0.06),
            splashFactory: InkRipple.splashFactory,
            highlightColor: AppColors.black.withOpacity(0.12),
            borderRadius: radius,
            child: Ink(
              padding: padding,
              decoration: BoxDecoration(
                color: color ??
                    (isMe
                        ? (AppTheme.isLightMode
                            ? AppColors.primary
                            : AppColors.blackLv2)
                        : AppColors.blackLv9),
                borderRadius: radius,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  userName != null
                      ? Padding(
                          padding: const EdgeInsets.only(bottom: 8.0),
                          child: Text(
                            userName!,
                            style: AppTextStyle.semibold(
                              size: 12,
                              color: userNameColor,
                            ),
                          ),
                        )
                      : const SizedBox.shrink(),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Expanded(
                        child: Text(
                          message,
                          style: AppTextStyle.medium(
                            size: 14,
                            color: messageColor ??
                                (isMe ? AppColors.white : AppColors.blackLv1),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              DateFormatter.onlyClockWithDivider(
                                timeStamp.toIso8601String(),
                              ),
                              style: AppTextStyle.bodySmall(
                                fontWeight: AppFontWeight.medium,
                                color: messageColor ??
                                    (isMe
                                        ? AppColors.white
                                        : AppColors.blackLv1),
                              ),
                            ),
                            isReaded
                                ? Padding(
                                    padding: const EdgeInsets.only(left: 6),
                                    child: Icon(
                                      Icons.done_all,
                                      color: messageColor ??
                                          (isMe
                                              ? AppColors.white
                                              : AppColors.blackLv1),
                                      size: 12,
                                    ),
                                  )
                                : const SizedBox.shrink(),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
