import 'package:flutter/material.dart';
import 'package:slash_info_task/core/utiles/colors.dart';
import 'package:slash_info_task/core/utiles/fonts.dart';
import 'package:slash_info_task/features/home/domain/entities/product_entity.dart';

class ProductListViewItem extends StatelessWidget {
 const ProductListViewItem({
    super.key,
    required this.product,
  });
 final Product product;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      width: 121,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Stack(
                children: [
                  SizedBox(
                    height: 123, 
                    width: 121, 
                    child: Image.asset(
                      product.image,
                      fit: BoxFit.fill, 
                    ),
                  ),
                  Positioned(
                    top: 5,
                    right: 5,
                    child: Container(
                      padding: const EdgeInsets.all(3),
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: ColorStyles.kItemBackgroundColor),
                      child: const Icon(Icons.favorite_border_rounded),
                    ),
                  ),
                ],
              )),
          const SizedBox(
            height: 2,
          ),
          Text(
            product.name,
            style: FontStyles.kSmallTextStyle(context).copyWith(fontSize: 15),
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
          ),
          Row(

            children: [
              Flexible(
                child: Text(
                  "EGP ${product.price}",
                  style: FontStyles.kMediumTextStyle(context).copyWith(fontSize: 16),
                  overflow:
                      TextOverflow.ellipsis, 
                  maxLines: 1,
                ),
                
              ),
              IconButton(
                icon: const Icon(Icons.add_circle, color: Colors.black,),
                onPressed: () {},
                style: IconButton.styleFrom(
                  padding: EdgeInsets.zero
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
