import 'package:slash_info_task/features/home/domain/entities/product_entity.dart';

abstract class ProductRepository {
  Future<List<Product>> getBestSellingProducts();
  Future<List<Product>> getNewArrivals();
  Future<List<Product>> getRecommendedProducts();
}