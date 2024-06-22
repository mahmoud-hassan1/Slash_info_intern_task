import 'package:slash_info_task/features/home/domain/entities/product_entity.dart';
class ProductModel extends Product {
  ProductModel({required super.id, required super.name, required super.price, required super.image});

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      id: json['id'],
      name: json['name'],
      price: json['price'].toDouble(),
      image: json['image'],
    );
  }
}