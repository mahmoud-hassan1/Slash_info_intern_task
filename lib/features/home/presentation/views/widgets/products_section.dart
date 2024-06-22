import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slash_info_task/features/home/presentation/manger/product_cubit.dart';
import 'package:slash_info_task/features/home/presentation/views/widgets/best_seller_section.dart';
import 'package:slash_info_task/features/home/presentation/views/widgets/new_arival_section.dart';
import 'package:slash_info_task/features/home/presentation/views/widgets/recommended_section.dart';

class ProductsSection extends StatelessWidget {
  const ProductsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductCubit, ProductState>(
      builder: (context, state) {
        if(state is ProductSuccess){
        return const Column(
          children: [
            BestSellerSection(),
            SizedBox(
              height: 16,
            ),
            NewArrivalSection(),
            SizedBox(
              height: 16,
            ),
            RecommendedSection(),
          ],
        );
        }
        else if(state is ProductLoading){
          return Center(child: Text("Loading"),);
        }
        else{
          return Center(child: Text("Error",style: TextStyle(fontSize: 50,color: Colors.black),),);
        }
      },
    );
  }
}
