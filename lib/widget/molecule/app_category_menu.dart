import 'package:flutter/material.dart';

import '../../model/category_menu_model.dart';
import 'app_icon_button.dart';

class AppCategoryMenu extends StatelessWidget {
  final List<CategoryMenuModel> categoryMenus;
  final bool showTitle;
  final double spacing;
  final WrapAlignment wrapAlignment;

  const AppCategoryMenu({
    super.key,
    required this.categoryMenus,
    this.showTitle = true,
    this.spacing = 18,
    this.wrapAlignment = WrapAlignment.start,
  });

  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: wrapAlignment,
      spacing: spacing,
      children: [
        ...List.generate(categoryMenus.length, (i) {
          return AppIconButton(
            icon: categoryMenus[i].child,
            text: showTitle ? categoryMenus[i].title : null,
            onTap: categoryMenus[i].onTap,
            enable: categoryMenus[i].enable,
            buttonColor: categoryMenus[i].color,
            textStyle: categoryMenus[i].textStyle,
          );
        })
      ],
    );
  }
}
