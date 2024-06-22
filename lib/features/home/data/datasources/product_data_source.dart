import 'package:slash_info_task/core/utiles/loading_data.dart';
import 'package:slash_info_task/features/home/data/models/product_model.dart';

class ProductDataSource {
  Future<Map<String,List<ProductModel>>> getProductsFromJson() async {
    final data = await loadData();
    List<ProductModel> bestSelling = List<ProductModel>.from(data["bestSelling"].map((x) => ProductModel.fromJson(x)));
    List<ProductModel> newArrival = List<ProductModel>.from(data["newArrival"].map((x) => ProductModel.fromJson(x)));
    List<ProductModel> recommend= List<ProductModel>.from(data["recommendedForYou"].map((x) => ProductModel.fromJson(x)));
    Map<String,List<ProductModel>> products ={
      "bestSelling" : bestSelling,
      "newArrival" : newArrival,
      "recommendedForYou" : recommend,
      
    };

    return products;
  }
}