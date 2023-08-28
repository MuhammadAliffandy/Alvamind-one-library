import 'package:alvamind_library/app/theme/app_colors.dart';
import 'package:alvamind_library/app/theme/app_sizes.dart';
import 'package:alvamind_library/app/theme/app_text_style.dart';

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TabBarDetailOutlet extends StatefulWidget {
  final List listTabBar;
  final EdgeInsets? padding;
  final EdgeInsets? labelPadding;
  final double? fontSize;
  final bool? isSelected;
  final List<IconData>? leftIcon;
  final List<IconData>? rightIcon;
  final TabController? controller;
  final TabBarIndicatorSize? indicatorSize;
  final bool? isScrollable;

  final void Function(int)? onTap;

  TabBarDetailOutlet({
    super.key,
    required this.listTabBar,
    required this.onTap,
    this.padding,
    this.fontSize,
    this.leftIcon,
    this.rightIcon,
    this.isSelected,
    this.controller,
    this.labelPadding,
    this.indicatorSize,
    this.isScrollable,
  });

  @override
  State<TabBarDetailOutlet> createState() => _TabBarDetailOutletState();
}

class _TabBarDetailOutletState extends State<TabBarDetailOutlet> {
  int tabBarSelected = 0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return TabBar(
      padding: widget.padding ?? EdgeInsets.zero,
      controller: widget.controller,
      isScrollable: widget.isScrollable ?? true,
      physics: const BouncingScrollPhysics(),
      indicatorColor: AppColors.primary,
      indicatorSize: widget.indicatorSize ?? TabBarIndicatorSize.tab,
      labelColor: AppColors.primary,
      unselectedLabelColor: AppColors.blackLv6,
      indicatorWeight: 3,
      labelStyle: AppTextStyle.bold(size: 16),
      onTap: (value) {
        setState(() {
          tabBarSelected = value;
          widget.onTap!(tabBarSelected);
        });
      },
      tabs: [
        ...List.generate(widget.listTabBar.length, (index) {
          // return Tab(
          //   child: AppTabBar(
          //     leftIcon: widget.leftIcon?[index] ?? null,
          //     fontSize: widget.fontSize ?? 16,
          //     text: widget.listTabBar[index],
          //     textColor: widget.controller?.index == index ? AppColors.primary : AppColors.blackLv6,
          //     leftIconColor: widget.controller?.index == index ? AppColors.primary : AppColors.blackLv6,
          //     dividerColor: AppColors.blackLv7,
          //     divider: widget.controller?.index == index ? false : true,
          //   ),
          // );
          return widget.leftIcon == null
              ? Tab(
                  text: widget.listTabBar[index],
                )
              : Row(
                  children: [
                    Tab(
                      icon: Icon(
                        widget.leftIcon?[index],
                      ),
                    ),
                    SizedBox(
                      width: AppSizes.padding / 2,
                    ),
                    Tab(
                      text: widget.listTabBar[index],
                    )
                  ],
                );
        })
      ],
    );
  }
}
