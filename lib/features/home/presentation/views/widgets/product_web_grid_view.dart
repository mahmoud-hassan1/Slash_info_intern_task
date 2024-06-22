import 'package:flutter/material.dart';
import 'package:slash_info_task/features/home/domain/entities/product_entity.dart';
import 'package:slash_info_task/features/home/presentation/views/widgets/product_grid_view_item.dart';
import 'package:slash_info_task/features/home/presentation/views/widgets/product_list_view_item.dart'; 

class ProductWebGridView extends StatelessWidget {
  const ProductWebGridView({
    super.key,
    required this.products
  });
final List<Product>products;
  @override
  Widget build(BuildContext context) {
    int columns=(MediaQuery.of(context).size.width/200).floor();
    return  GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: columns,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
        childAspectRatio: .75,
      ),
      itemBuilder: (context, index) => ProductGridViewItem(product: products[index]),
      itemCount: products.length,
    );
  }
}