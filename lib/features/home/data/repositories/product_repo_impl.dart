import 'package:slash_info_task/features/home/data/datasources/product_data_source.dart';
import 'package:slash_info_task/features/home/domain/entities/product_entity.dart';
import 'package:slash_info_task/features/home/domain/repositories/product_repository.dart';

class ProductRepoImplementation implements ProductRepository {
  final ProductDataSource localDataSource;

  ProductRepoImplementation(this.localDataSource);

  @override
  Future<List<Product>> getBestSellingProducts() => localDataSource.getProductsFromJson('bestSelling');

  @override
  Future<List<Product>> getNewArrivals() => localDataSource.getProductsFromJson('newArrival');

  @override
  Future<List<Product>> getRecommendedProducts() => localDataSource.getProductsFromJson('recommended');
}