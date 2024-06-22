import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:slash_info_task/features/home/presentation/views/widgets/category_section.dart';
import 'package:slash_info_task/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:slash_info_task/features/home/presentation/views/widgets/custom_search_bar.dart';
import 'package:slash_info_task/features/home/presentation/views/widgets/offers_list_view.dart';
import 'package:slash_info_task/features/home/presentation/views/widgets/products_section.dart';
class HomeViewMobileBody extends StatelessWidget {
  const HomeViewMobileBody({super.key});
  @override
  Widget build(BuildContext context) {
 
    return const SafeArea(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 32),
            child: CustomAppBar(),
          ),
          SizedBox(height: 8),
          Padding(
           padding: EdgeInsets.symmetric(horizontal: 32),
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
                  ProductsSection()
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}