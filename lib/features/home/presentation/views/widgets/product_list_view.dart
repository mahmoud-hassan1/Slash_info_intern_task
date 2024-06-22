import 'package:flutter/material.dart';
import 'package:slash_info_task/features/home/domain/entities/product_entity.dart';
import 'package:slash_info_task/features/home/presentation/views/widgets/product_list_view_item.dart'; 

class ProductListView extends StatelessWidget {
   ProductListView({
    super.key,
    required this.products
  });
List<Product>products;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
    
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) =>  ProductLIstViewItem(product:products[index]),
          separatorBuilder: (context, index) => const SizedBox(
                width: 16,
              ),
          itemCount: products.length,),
    );
  }
}