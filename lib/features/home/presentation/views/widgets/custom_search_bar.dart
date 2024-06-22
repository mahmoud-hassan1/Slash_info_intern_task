import 'package:flutter/material.dart';
import 'package:slash_info_task/core/utiles/colors.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({super.key});

  @override
  Widget build(context) {
    return  Row(
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              color:  ColorStyles.kItemBackgroundColor,
              borderRadius: BorderRadius.circular(8)
            ),
            child: const TextField(
              decoration:  InputDecoration(
                prefixIcon: Icon(Icons.search_outlined),
                hintText: "Search here",
                border: InputBorder.none,
              ),
            ),
          ),
        ),
        const SizedBox(width: 8,),
        IconButton(
          icon: const Icon(Icons.tune_outlined),
          onPressed: () {},
          padding: const EdgeInsets.all(12),
          style: IconButton.styleFrom(
            backgroundColor: ColorStyles.kItemBackgroundColor ,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ),
      ],
    ) ;
  }
}