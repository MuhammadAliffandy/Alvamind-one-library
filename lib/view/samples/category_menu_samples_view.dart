import 'package:flutter/material.dart';

import '../../app/theme/app_colors.dart';
import '../../app/theme/app_text_style.dart';
import '../../model/category_menu_model.dart';
import '../../widget/molecule/app_category_menu.dart';
import 'sample_wrapper.dart';

class CategoryMenuSamplesView extends StatefulWidget {
  const CategoryMenuSamplesView({Key? key}) : super(key: key);

  static const routeName = '/molecule-category-menu-samples';

  @override
  State<CategoryMenuSamplesView> createState() =>
      _CategoryMenuSamplesViewState();
}

class _CategoryMenuSamplesViewState extends State<CategoryMenuSamplesView> {
  final categoryMenus = [
    CategoryMenuModel(
      child: const Icon(
        Icons.add,
        color: AppColors.primary,
      ),
      title: 'Lorem',
      onTap: () {},
    ),
    CategoryMenuModel(
      child: const Icon(
        Icons.star,
        color: AppColors.primary,
      ),
      title: 'Ipsum',
      onTap: () {},
    ),
    CategoryMenuModel(
      child: const Icon(
        Icons.ac_unit_rounded,
        color: AppColors.primary,
      ),
      title: 'Dolor',
      onTap: () {},
    ),
  ];

  final categoryMenusCustom = [
    CategoryMenuModel(
      child: const Icon(
        Icons.person,
        color: AppColors.blueLv1,
      ),
      color: AppColors.blueLv5,
      title: 'Disabled',
      enable: false,
      onTap: () {},
    ),
    CategoryMenuModel(
      child: const Icon(
        Icons.person,
        color: AppColors.blueLv1,
      ),
      color: AppColors.blueLv5,
      title: 'Enabled',
      onTap: () {},
    ),
    CategoryMenuModel(
      child: const Icon(
        Icons.dashboard,
        color: AppColors.redLv1,
      ),
      color: AppColors.redLv7,
      title: 'Ipsum',
      onTap: () {},
    ),
    CategoryMenuModel(
      child: const Icon(
        Icons.dock,
        color: AppColors.white,
      ),
      color: AppColors.primary,
      title: 'Dolor',
      textStyle: AppTextStyle.bodyMedium(
        fontWeight: AppFontWeight.bold,
        color: AppColors.redLv1,
      ),
      onTap: () {},
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Category Menu Samples')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            defaultCategoryMenu(),
            defaultCategoryMenuWithoutTitle(),
            categoryMenuCustomStyle(),
          ],
        ),
      ),
    );
  }

  Widget defaultCategoryMenu() {
    return SampleWrapper(
      title: 'Default Category Menu',
      widget: AppCategoryMenu(
        categoryMenus: categoryMenus,
      ),
    );
  }

  Widget defaultCategoryMenuWithoutTitle() {
    return SampleWrapper(
      title: 'Default Category Menu Withuout Title',
      widget: AppCategoryMenu(
        categoryMenus: categoryMenus,
        showTitle: false,
      ),
    );
  }

  Widget categoryMenuCustomStyle() {
    return SampleWrapper(
      title: 'Category Menu Custom Style',
      widget: AppCategoryMenu(
        categoryMenus: categoryMenusCustom,
      ),
    );
  }
}
