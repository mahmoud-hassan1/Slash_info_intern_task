import 'package:slash_info_task/core/utiles/loading_data.dart';
import 'package:slash_info_task/features/home/data/models/product_model.dart';

class ProductDataSource {
  Future<List<ProductModel>> getProductsFromJson(String category) async {
    final data = await loadData();
    return List<ProductModel>.from(data[category].map((x) => ProductModel.fromJson(x)));
  }
}