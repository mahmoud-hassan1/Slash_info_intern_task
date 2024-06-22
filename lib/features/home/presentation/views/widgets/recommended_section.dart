import 'package:flutter/material.dart';
import 'package:slash_info_task/features/home/presentation/views/widgets/header_titles.dart';
import 'package:slash_info_task/features/home/presentation/views/widgets/product_list_view.dart';

class RecommendedSection extends StatelessWidget {
  const RecommendedSection({super.key});

  @override
  Widget build(BuildContext context) {
       return const Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
         Header(
          title: "Recommended For You",
        ),
         SizedBox(
          height: 16,
        ),
        ProductListView()
      ],
    );
  }
}