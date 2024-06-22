import 'package:flutter/material.dart';
import 'package:slash_info_task/core/utiles/assets.dart';
import 'package:slash_info_task/features/home/presentation/views/widgets/catigories_list_view_item.dart';

class CategoryListView extends StatelessWidget {
  const CategoryListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
     height: 100,
      child: Padding(
        padding: const EdgeInsets.only(left: 16.0),
        child: ListView.separated(
         physics: const BouncingScrollPhysics(),
         scrollDirection: Axis.horizontal,
         itemBuilder: (context, index) =>  CategoryListViewItem(index: index,),
         separatorBuilder: (context, index) => const SizedBox(width: 5,),
          itemCount: Assets.kCategories.length),
      ),
    );
  }
}



