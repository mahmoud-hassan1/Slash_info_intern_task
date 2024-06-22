import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:slash_info_task/features/home/presentation/views/widgets/header_titles.dart';
import 'package:slash_info_task/features/home/presentation/views/widgets/product_list_view.dart';

class BestSellerSection extends StatelessWidget {
  const BestSellerSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
         Header(
          title: "Best Seller",
        ),
         SizedBox(
          height: 16,
        ),
        ProductListView()
      ],
    );
  }
}



