import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:slash_info_task/features/home/presentation/views/widgets/category_section.dart';
import 'package:slash_info_task/features/home/presentation/views/widgets/custom_search_bar.dart';
import 'package:slash_info_task/features/home/presentation/views/widgets/custom_web_app_bar.dart';
import 'package:slash_info_task/features/home/presentation/views/widgets/offers_list_view.dart';

import 'package:slash_info_task/features/home/presentation/views/widgets/products_web_section.dart';
class HomeViewWebBody extends StatelessWidget {
  const HomeViewWebBody({super.key});
  @override
  Widget build(BuildContext context) {

    return const SafeArea(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: CustomWebAppBar(),
          ),
          SizedBox(height: 8),
          Padding(
           padding: EdgeInsets.symmetric(horizontal: 16),
            child: CustomSearchBar(),
          ),
          SizedBox(height: 8,),
          Expanded(
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                children: [
                  OffersListView(),
                  SizedBox(height: 8,),
                  CategorySection(),
                  SizedBox(height: 16,),
                  ProductsWebSection()
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}