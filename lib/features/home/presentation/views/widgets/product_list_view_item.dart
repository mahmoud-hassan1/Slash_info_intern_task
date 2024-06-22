import 'package:flutter/material.dart';
import 'package:slash_info_task/core/utiles/colors.dart';
import 'package:slash_info_task/core/utiles/fonts.dart';

class ProductLIstViewItem extends StatelessWidget {
  const  ProductLIstViewItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 190,
      width: 110,
      child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 120,
                width: 110,
                // ... existing code ...
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Stack(
                      children: [
                        SizedBox(
                          height: 130, // Explicitly set height
                          width: 120, // Explicitly set width
                          child: Image.asset(
                            "assets/images/best_seller_2.png",
                            fit: BoxFit
                                .fill, // Ensure image fills the box
                          ),
                        ),
                        Positioned(
                          top: 5,
                          right: 5,
                          child: Container(
                            padding: const EdgeInsets.all(3),
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color:
                                    ColorStyles.kItemBackgroundColor),
                            child: const Icon(
                                Icons.favorite_border_rounded),
                          ),
                        ),
                      ],
                    )),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                "Stitch Keychain",
                style:
                    FontStyles.kSmallTextStyle.copyWith(fontSize: 14),
              ),
              Flexible(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "EGP 55",
                      style: FontStyles.kMediumTextStyle
                          .copyWith(fontSize: 16),
                    ),
                    IconButton(
                      icon: const Icon(Icons.add_circle,color: Colors.black,),
                      onPressed: () {
                        // Add your onPressed logic here
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
    );
  }
}
