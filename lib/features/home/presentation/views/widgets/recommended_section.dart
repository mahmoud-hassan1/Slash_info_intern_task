import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slash_info_task/features/home/presentation/manger/product_cubit.dart';
import 'package:slash_info_task/features/home/presentation/views/widgets/header_titles.dart';
import 'package:slash_info_task/features/home/presentation/views/widgets/product_list_view.dart';

class RecommendedSection extends StatelessWidget {
  const RecommendedSection({super.key});

  @override
  Widget build(BuildContext context) {
       return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
         const Header(
          title: "Recommended For You",
        ),
         const SizedBox(
          height: 16,
        ),
        ProductListView(products: BlocProvider.of<ProductCubit>(context).recommended!)
      ],
    );
  }
}