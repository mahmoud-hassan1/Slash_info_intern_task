import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slash_info_task/features/home/presentation/manger/product_cubit.dart';
import 'package:slash_info_task/features/home/presentation/views/widgets/header_titles.dart';
import 'package:slash_info_task/features/home/presentation/views/widgets/product_web_grid_view.dart';

class NewArrivalWebSection extends StatelessWidget {
  const NewArrivalWebSection({super.key});

  @override
  Widget build(BuildContext context) {
      return  Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
         const Header(
          title: "New Arrival",
        ),
         const SizedBox(
          height: 16,
        ),
        ProductWebGridView(products: BlocProvider.of<ProductCubit>(context).newArrival!,)
      ],
    );
  }
}