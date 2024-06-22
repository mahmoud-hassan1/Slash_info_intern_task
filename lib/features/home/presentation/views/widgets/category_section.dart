import 'package:flutter/material.dart';
import 'package:slash_info_task/features/home/presentation/views/widgets/categories_list_view.dart';
import 'package:slash_info_task/features/home/presentation/views/widgets/header_titles.dart';


class CategorySection extends StatelessWidget {
  const CategorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column( 
      children: [
      Header(title: "Categories",),
      SizedBox(height: 16,),
       CategoryListView(),
      
      ],
    );
  }
}

