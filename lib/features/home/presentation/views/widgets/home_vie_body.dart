import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slash_info_task/features/home/presentation/manger/product_cubit.dart';
import 'package:slash_info_task/features/home/presentation/views/widgets/best_seller_section.dart';
import 'package:slash_info_task/features/home/presentation/views/widgets/category_section.dart';
import 'package:slash_info_task/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:slash_info_task/features/home/presentation/views/widgets/custom_search_bar.dart';
import 'package:slash_info_task/features/home/presentation/views/widgets/new_arival_section.dart';
import 'package:slash_info_task/features/home/presentation/views/widgets/offers_list_view.dart';
import 'package:slash_info_task/features/home/presentation/views/widgets/products_section.dart';
import 'package:slash_info_task/features/home/presentation/views/widgets/recommended_section.dart';
class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<ProductCubit>(context).fetchProduct();
    return const SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              CustomAppBar(),
              SizedBox(height: 8),
              CustomSearchBar(),
              SizedBox(height: 8,),
              OffersListView(),
              SizedBox(height: 8,),
              CategorySection(),
              SizedBox(height: 16,),
              ProductsSection()
            ],
          ),
        ),
      ),
    );
  }
}