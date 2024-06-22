import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slash_info_task/core/utiles/colors.dart';
import 'package:slash_info_task/features/home/data/datasources/product_data_source.dart';
import 'package:slash_info_task/features/home/data/repositories/product_repo_impl.dart';
import 'package:slash_info_task/features/home/presentation/manger/product_cubit.dart';
import 'package:slash_info_task/features/home/presentation/views/home_view.dart';

import 'package:device_preview/device_preview.dart';

void main() => runApp(
  DevicePreview(
    enabled: false,
    builder: (context) => MyApp(), // Wrap your app
  ),
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProductCubit(prductRepo: ProductRepoImplementation(ProductDataSource())),
      child: MaterialApp(
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
        theme: ThemeData.light()
            .copyWith(scaffoldBackgroundColor: ColorStyles.kBackgroundColor),
        debugShowCheckedModeBanner: false,
        home: const HomeView(),
      ),
    );
  }
}
