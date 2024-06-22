import 'package:flutter/material.dart';
import 'package:slash_info_task/features/home/presentation/views/widgets/product_list_view_item.dart'; 

class ProductListView extends StatelessWidget {
  const ProductListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 190,
    
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) =>  ProductLIstViewItem(),
          separatorBuilder: (context, index) => const SizedBox(
                width: 16,
              ),
          itemCount: 5),
    );
  }
}