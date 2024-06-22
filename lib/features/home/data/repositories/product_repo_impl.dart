import 'package:slash_info_task/features/home/data/datasources/product_data_source.dart';
import 'package:slash_info_task/features/home/data/models/product_model.dart';
import 'package:slash_info_task/features/home/domain/entities/product_entity.dart';
import 'package:slash_info_task/features/home/domain/repositories/product_repository.dart';

class ProductRepoImplementation implements ProductRepository {
  final ProductDataSource localDataSource;
 Map<String,List<ProductModel>>? products;
ProductRepoImplementation(this.localDataSource,) {
}

// Asynchronous initialization method
Future<void> initProducts() async {
  products = await localDataSource.getProductsFromJson();
}

  @override
  Future<List<Product>> getBestSellingProducts(){
    return Future.value(products!['bestSelling']);
  }

  @override
  Future<List<Product>> getNewArrivals() {
        return Future.value(products!['newArrival']);
  }

  @override
  Future<List<Product>> getRecommendedProducts() {
    return Future.value(products!['recommendedForYou']);
  }
}