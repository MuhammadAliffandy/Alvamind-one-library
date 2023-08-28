import 'package:flutter/material.dart';

import '../../../app/asset/app_assets.dart';
import '../../../app/theme/app_colors.dart';
import '../../../app/theme/app_sizes.dart';
import '../../../app/theme/app_text_style.dart';
import '../../atom/app_avatar.dart';
import '../../atom/app_image.dart';
import '../../molecule/app_chips.dart';
import '../../molecule/app_icon_button.dart';

class CommentListCard extends StatelessWidget {
  final String titleUser;
  final String? subtitleUser;
  final String? countStaruser;
  final String? countLike;
  final bool isComment;
  final String? textComment;
  final String? dateComment;
  final bool? isImage;
  final String? imageAvatar;
  final dynamic image;
  final void Function()? functionLike;
  final void Function()? functionRespon;
  final void Function()? functionRightButton;
  final EdgeInsets? padding;

  const CommentListCard({
    super.key,
    required this.titleUser,
    required this.isComment,
    this.countStaruser,
    this.dateComment,
    this.functionLike,
    this.functionRespon,
    this.functionRightButton,
    this.image,
    this.isImage = false,
    this.subtitleUser,
    this.textComment,
    this.imageAvatar,
    this.countLike,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding ??
          EdgeInsets.all(
            0,
          ),
      child: Column(
        children: [
          headerComment(),
          SizedBox(height: AppSizes.padding / 1.5),
          Column(
            children: [
              Text(
                textComment ?? '',
                style: AppTextStyle.regular(size: 14),
              ),
              SizedBox(height: AppSizes.padding / 1.5),
              Row(
                children: [
                  isImage == true ? image : SizedBox.shrink(),
                ],
              ),
              isImage == true
                  ? SizedBox(
                      height: AppSizes.padding / 1.5,
                    )
                  : SizedBox.shrink(),
              buttonBottom(),
            ],
          )
        ],
      ),
    );
  }

  Widget buttonBottom() {
    return Row(
      children: [
        GestureDetector(
          onTap: () {},
          child: Row(
            children: [
              AppIconButton(
                padding: EdgeInsets.symmetric(vertical: 0, horizontal: 0),
                icon: const Icon(
                  CustomIcon.heartIcon,
                  color: AppColors.primary,
                ),
                buttonColor: Colors.transparent,
                onTap: () {},
              ),
              SizedBox(
                width: AppSizes.padding / 2,
              ),
              Text(
                countLike ?? '',
                style: AppTextStyle.regular(size: 12),
              )
            ],
          ),
        ),
        SizedBox(width: AppSizes.padding),
        isComment == true
            ? GestureDetector(
                onTap: () {},
                child: Row(
                  children: [
                    AppIconButton(
                      padding: EdgeInsets.symmetric(vertical: 0, horizontal: 0),
                      icon: const Icon(
                        CustomIcon.sendIcon,
                        color: AppColors.primary,
                      ),
                      buttonColor: Colors.transparent,
                      onTap: () {},
                    ),
                    SizedBox(
                      width: AppSizes.padding / 2,
                    ),
                    Text(
                      'Respon',
                      style: AppTextStyle.regular(size: 12),
                    )
                  ],
                ),
              )
            : const SizedBox.shrink(),
        isComment == true ? SizedBox(width: AppSizes.padding) : const SizedBox.shrink(),
        Text(
          dateComment ?? '',
          style: AppTextStyle.regular(
            size: 12,
            color: AppColors.blackLv5,
          ),
        ),
      ],
    );
  }

  Widget headerComment() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            AppAvatar(
              image: imageAvatar ?? randomImage,
              size: 40,
            ),
            SizedBox(
              width: AppSizes.padding / 2,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  titleUser,
                  style: AppTextStyle.bold(size: 18),
                ),
                Text(
                  subtitleUser ?? '',
                  style: AppTextStyle.regular(
                    size: 12,
                    color: AppColors.blackLv6,
                  ),
                ),
              ],
            ),
            //
          ],
        ),
        Row(
          children: [
            AppChips(
              onTap: () {},
              isSelected: false,
              text: countStaruser ?? '',
              fontSize: 12,
              padding: EdgeInsets.symmetric(
                horizontal: AppSizes.padding / 2,
                vertical: AppSizes.padding / 4,
              ),
              borderWidth: 1.5,
              leftIcon: Icons.star,
              selectedColor: AppColors.primary,
            ),
            SizedBox(
              width: AppSizes.padding / 2,
            ),
            AppIconButton(
              icon: isComment == false
                  ? const Icon(
                      Icons.pending_outlined,
                      size: 20,
                      color: AppColors.white,
                    )
                  : const Icon(
                      size: 20,
                      CustomIcon.editIcon,
                    ),
              onTap: () {},
              padding: const EdgeInsets.all(2),
              buttonColor: AppColors.transparent,
            ),
          ],
        )
      ],
    );
  }
}
