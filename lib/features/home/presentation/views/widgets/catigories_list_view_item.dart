import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:slash_info_task/core/utiles/assets.dart';
import 'package:slash_info_task/core/utiles/fonts.dart';

class CategoryListViewItem extends StatelessWidget {
  const CategoryListViewItem({
    super.key,
    required this.index
  });
  final int index;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SvgPicture.asset(Assets.kCategories[index][1],),
        Text(
         Assets.kCategories[index][0],
         style: FontStyles.kSmallTextStyle(context),
         )
      ],
    );
  }
}