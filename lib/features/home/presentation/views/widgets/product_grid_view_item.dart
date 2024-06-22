import 'package:flutter/material.dart';
import 'package:slash_info_task/core/utiles/colors.dart';
import 'package:slash_info_task/core/utiles/fonts.dart';
import 'package:slash_info_task/features/home/domain/entities/product_entity.dart';

class ProductGridViewItem extends StatelessWidget {
 const ProductGridViewItem({
    super.key,
    required this.product,
  });
 final Product product;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context,constraints) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Stack(
                  children: [
                    SizedBox(
                      height: constraints.maxWidth, // Explicitly set height
                      width: constraints.maxWidth, // Explicitly set width
                      child: Image.asset(
                        product.image,
                        fit: BoxFit.fill, // Ensure image fills the box
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
            Expanded(
              child: Text(
                product.name,
                style: FontStyles.kSmallTextStyle(context),
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Row(
              crossAxisAlignment:
                  CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Text(
                    "EGP ${product.price}",
                    style: FontStyles.kMediumTextStyle(context),
                    overflow:
                        TextOverflow.ellipsis, 
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
        );
      }
    );
  }
}
