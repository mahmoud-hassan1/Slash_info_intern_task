import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

import 'package:slash_info_task/features/home/data/repositories/product_repo_impl.dart';
import 'package:slash_info_task/features/home/domain/entities/product_entity.dart';

part 'product_state.dart';

class ProductCubit extends Cubit<ProductState> {
  List<Product>? bestSelling;
  List<Product>? newArrival;
  List<Product>? recommended;
  ProductCubit({required this.prductRepo}) : super(ProductInitial());
  ProductRepoImplementation prductRepo;
  void fetchProduct() async{
    emit(ProductLoading());
    try{
      
      await prductRepo.initProducts();
   bestSelling=await prductRepo.getBestSellingProducts();
    newArrival=await prductRepo.getNewArrivals();
    recommended=await prductRepo.getRecommendedProducts();
    emit(ProductSuccess());
    }
    catch(e){
      emit(ProductFailed());
    }
  }
}
