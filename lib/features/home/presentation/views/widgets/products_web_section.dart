import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slash_info_task/core/utiles/fonts.dart';
import 'package:slash_info_task/features/home/presentation/manger/product_cubit.dart';

import 'package:slash_info_task/features/home/presentation/views/widgets/best_seller_web_section.dart';

import 'package:slash_info_task/features/home/presentation/views/widgets/new_arrival_web_section.dart';

import 'package:slash_info_task/features/home/presentation/views/widgets/recommended_web_section.dart';

class ProductsWebSection extends StatelessWidget {
  const ProductsWebSection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductCubit, ProductState>(
      builder: (context, state) {
        if(state is ProductSuccess){
        return const Column(
          children: [
            BestSellerWebSection(),
            SizedBox(
              height: 16,
            ),
            NewArrivalWebSection(),
            SizedBox(
              height: 16,
            ),
            RecommendedWebSection(),
          ],
        );
        }
        else if(state is ProductLoading){
          return  Center(child: Text("Loading",style: FontStyles.kLargeTextStyle(context),),);
        }
        else{
          return  Center(child: Text("Error",style: FontStyles.kLargeTextStyle(context),),);
        }
      },
    );
  }
}
