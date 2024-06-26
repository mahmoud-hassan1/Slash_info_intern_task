import 'package:flutter/material.dart';
import 'package:slash_info_task/features/home/domain/entities/product_entity.dart';
import 'package:slash_info_task/features/home/presentation/views/widgets/product_list_view_item.dart'; 

class ProductListView extends StatelessWidget {
  const ProductListView({
    super.key,
    required this.products
  });
final List<Product>products;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16),
      child: SizedBox(
        height: 200,
        child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) =>  ProductListViewItem(product:products[index]),
            separatorBuilder: (context, index) => const SizedBox(
                  width: 16,
                ),
            itemCount: products.length,),
            
      ),
    );
  }
}