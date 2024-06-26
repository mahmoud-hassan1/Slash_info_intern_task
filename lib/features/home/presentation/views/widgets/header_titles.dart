import 'package:flutter/material.dart';
import 'package:slash_info_task/core/utiles/colors.dart';
import 'package:slash_info_task/core/utiles/fonts.dart';

class Header extends StatelessWidget {
  const Header({
    super.key,
    required this.title,
  });
final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          Text(
            title,
            style: FontStyles.kLargeTextStyle(context).copyWith(fontSize:getResponsiveFontSize(context,fontSize: 24), ),
          ),
          const Spacer(),
          Text(
            "See all",
            style: FontStyles.kSmallTextStyle(context),
            ),
            const SizedBox(width: 8,),
            Container(
             
              decoration: BoxDecoration(
                 color: ColorStyles.kItemBackgroundColor,
                borderRadius: BorderRadius.circular(5)
              ),
              child: const Icon(Icons.keyboard_arrow_right_outlined),
            )
        ],
      ),
    );
  }
}