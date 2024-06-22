import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slash_info_task/core/utiles/colors.dart';
import 'package:slash_info_task/features/home/data/datasources/product_data_source.dart';
import 'package:slash_info_task/features/home/data/repositories/product_repo_impl.dart';
import 'package:slash_info_task/features/home/domain/entities/product_entity.dart';
import 'package:slash_info_task/features/home/presentation/manger/product_cubit.dart';
import 'package:slash_info_task/features/home/presentation/views/home_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProductCubit(prductRepo: ProductRepoImplementation(ProductDataSource())),
      child: MaterialApp(
        theme: ThemeData.light()
            .copyWith(scaffoldBackgroundColor: ColorStyles.kBackgroundColor),
        debugShowCheckedModeBanner: false,
        home: const HomeView(),
      ),
    );
  }
}
